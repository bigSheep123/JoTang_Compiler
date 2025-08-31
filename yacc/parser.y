%header "parser_output.hpp"
%output "parser_output.cpp"
%language "c++" 
%define api.token.constructor
%define api.value.type variant
%require "3.2"
%code requires{
#include "../include/lib/ast/AstNode.hpp"
};

%code{
yy::parser::symbol_type yylex();
namespace yy {
      void parser::error(const std::string &msg)
    {
        std::cerr << "Parse error: " << msg << '\n';
    }
  }
}

%nterm <CompUnit*> CompUnit
%nterm <Stmt*> Decl BlockItem Stmt
%nterm <ConstDecl*> ConstDecl
%nterm <ConstDefs*> ConstDefs
%nterm <ConstDef*> ConstDef
%nterm <Exps*> ConstExps ArraySubscripts
%nterm <InitVal*> ConstInitVal InitVal
%nterm <InitVals*> ConstInitVals InitVals
%nterm <VarDecl*> VarDecl
%nterm <VarDefs*> VarDefs
%nterm <VarDef*> VarDef
%nterm <FuncDef*> FuncDef
%nterm <FuncParams*> FuncParams
%nterm <FuncParam*> FuncParam
%nterm <Block*> Block
%nterm <BlockItems*> BlockItems
%nterm <LVal*> LVal
%nterm <HasOperand*> PrimaryExp
%nterm <CallParams*> CallParams
%nterm <UnaryExp*> UnaryExp
%nterm <MulExp*> MulExp
%nterm <AddExp*> AddExp
%nterm <RelExp*> RelExp
%nterm <EqExp*> EqExp
%nterm <LAndExp*> LAndExp
%nterm <LOrExp*> LOrExp
%nterm <ASTNodeType> Type

%token Y_INT Y_FLOAT Y_VOID Y_CONST Y_BREAK Y_WHILE Y_IF Y_ELSE Y_RETURN Y_CONTINUE
%token <std::string> Y_ID
%token <float> num_FLOAT
%token <int> num_INT
%token Y_ADD Y_SUB Y_MUL Y_MODULO Y_DIV
%token Y_GREAT Y_GREATEQ Y_LESS Y_LESSEQ Y_EQ Y_ASSIGN Y_NOTEQ Y_NOT
%token Y_AND Y_OR
%token Y_LPAR Y_RPAR Y_LSQUARE Y_RSQUARE Y_LBRACKET Y_RBRACKET
%token Y_SEMICOLON Y_COMMA

%start entry
%%

entry:
    CompUnit { Singleton<CompUnit*>() = $1; }
;
CompUnit:
      Decl            { $$ = new CompUnit((BaseAST*)$1); }
    | FuncDef         { $$ = new CompUnit((BaseAST*)$1); }
    | Decl CompUnit    { $$ = $2; $$->push_front((BaseAST*)$1); }
    | FuncDef CompUnit { $$ = $2; $$->push_front((BaseAST*)$1); }
;
Decl:
      VarDecl   { $$ = (Stmt*)$1;  }
    | ConstDecl { $$ = (Stmt*)$1;  }
;
ConstDecl:
    Y_CONST Type ConstDefs Y_SEMICOLON { $$ = new ConstDecl($2, $3);  }
;
ConstDefs:
      ConstDef            { $$ = new ConstDefs($1);  }
    | ConstDefs Y_COMMA ConstDef { $$ = $1; $1->push_back($3);  }
;
ConstDef:
      Y_ID Y_ASSIGN ConstInitVal              { $$ = new ConstDef($1, nullptr, $3);  }
    | Y_ID ConstExps Y_ASSIGN ConstInitVal   { $$ = new ConstDef($1, $2, $4);  }
;
ConstExps:
      Y_LSQUARE AddExp Y_RSQUARE           { $$ = new Exps($2);  }
    | Y_LSQUARE AddExp Y_RSQUARE ConstExps { $$ = $4; $$->push_front($2);  }
;
ConstInitVal:
      AddExp                            { $$ = new InitVal((BaseAST*)$1);  }
    | Y_LBRACKET Y_RBRACKET             { $$ = new InitVal();  }
    | Y_LBRACKET ConstInitVals Y_RBRACKET { $$ = new InitVal((BaseAST*)$2);  }
;
ConstInitVals:
      ConstInitVal                      { $$ = new InitVals($1);  }
    | ConstInitVals Y_COMMA ConstInitVal { $$ = $1; $$->push_back($3);  }
;
VarDecl:
    Type VarDefs Y_SEMICOLON { $$ = new VarDecl($1, $2);  }
;
VarDefs:
      VarDef                      { $$ = new VarDefs($1);  }
    | VarDefs Y_COMMA VarDef       { $$ = $1; $$->push_back($3);  }
;
VarDef:
      Y_ID                               { $$ = new VarDef($1);  }
    | Y_ID Y_ASSIGN InitVal              { $$ = new VarDef($1, nullptr, $3);  }
    | Y_ID ConstExps                     { $$ = new VarDef($1, $2, nullptr);  }
    | Y_ID ConstExps Y_ASSIGN InitVal   { $$ = new VarDef($1, $2, $4);  }
;
InitVal:
      AddExp                         { $$ = new InitVal((BaseAST*)$1);  }
    | Y_LBRACKET Y_RBRACKET           { $$ = new InitVal(nullptr);  }
    | Y_LBRACKET InitVals Y_RBRACKET  { $$ = new InitVal((BaseAST*)$2);  }
;
InitVals:
      InitVal                       { $$ = new InitVals($1);  }
    | InitVals Y_COMMA InitVal      { $$ = $1; $$->push_back($3);  }
;
FuncDef:
      Type Y_ID Y_LPAR Y_RPAR Block                      { $$ = new FuncDef($1, $2, nullptr, $5);  }
    | Type Y_ID Y_LPAR FuncParams Y_RPAR Block            { $$ = new FuncDef($1, $2, $4, $6);  }
;
FuncParams:
      FuncParam                       { $$ = new FuncParams($1);  }
    | FuncParams Y_COMMA FuncParam    { $$ = $1; $$->push_back($3);  }
;
FuncParam:
      Type Y_ID                                 { $$ = new FuncParam($1, $2);  }
    | Type Y_ID Y_LSQUARE Y_RSQUARE              { $$ = new FuncParam($1, $2, true);  }
    | Type Y_ID ArraySubscripts                   { $$ = new FuncParam($1, $2, false, $3);  }
    | Type Y_ID Y_LSQUARE Y_RSQUARE ArraySubscripts { $$ = new FuncParam($1, $2, true, $5);  }
;
Block:
      Y_LBRACKET BlockItems Y_RBRACKET { $$ = new Block($2);  }
    | Y_LBRACKET Y_RBRACKET             { $$ = new Block(nullptr);  }
;
BlockItems:
      BlockItem                  { $$ = new BlockItems($1);  }
    | BlockItems BlockItem        { $$ = $1; $$->push_back($2);  }
;
BlockItem:
      Decl { $$ = (Stmt*)$1;  }
    | Stmt { $$ = (Stmt*)$1;  }
;
Stmt:
      Y_SEMICOLON                     { $$ = new ExpStmt(nullptr);  }
    | AddExp Y_SEMICOLON              { $$ = new ExpStmt($1);  }
    | LVal Y_ASSIGN AddExp Y_SEMICOLON { $$ = new AssignStmt($1, $3);  }
    | Block                           { $$ = $1;  }
    | Y_WHILE Y_LPAR LOrExp Y_RPAR Stmt          { $$ = new WhileStmt($3, $5);  }
    | Y_IF Y_LPAR LOrExp Y_RPAR Stmt Y_ELSE Stmt { $$ = new IfStmt($3, $5, $7);  }
    | Y_IF Y_LPAR LOrExp Y_RPAR Stmt              { $$ = new IfStmt($3, $5);  }
    | Y_BREAK Y_SEMICOLON                         { $$ = new BreakStmt();  }
    | Y_CONTINUE Y_SEMICOLON                      { $$ = new ContinueStmt();  }
    | Y_RETURN AddExp Y_SEMICOLON                  { $$ = new ReturnStmt($2);  }
    | Y_RETURN Y_SEMICOLON                         { $$ = new ReturnStmt();  }
;
LVal:
      Y_ID { $$ = new LVal($1);  }
    | Y_ID ArraySubscripts { $$ = new LVal($1, $2);  }
;
ArraySubscripts:
      Y_LSQUARE AddExp Y_RSQUARE                    { $$ = new Exps($2);  }
    | Y_LSQUARE AddExp Y_RSQUARE ArraySubscripts     { $$ = $4; $$->push_front($2);  }
;
PrimaryExp:
      Y_LPAR AddExp Y_RPAR                       { $$ = (HasOperand*)$2;  }
    | LVal                                      { $$ = (HasOperand*)$1;  }
    | num_INT                                   { $$ = (HasOperand*)(new ConstValue<int>($1));  }
    | num_FLOAT                                 { $$ = (HasOperand*)(new ConstValue<float>($1));  }
    | Y_ID Y_LPAR Y_RPAR                        { $$ = (HasOperand*)(new FunctionCall($1));  }
    | Y_ID Y_LPAR CallParams Y_RPAR             { $$ = (HasOperand*)(new FunctionCall($1, $3));  }
;
UnaryExp:
      PrimaryExp                  { $$ = new UnaryExp($1);  }
    | Y_ADD UnaryExp              { $$ = $2; $$->push_front(OpAdd);  }
    | Y_SUB UnaryExp              { $$ = $2; $$->push_front(OpSub);  }
    | Y_NOT UnaryExp              { $$ = $2; $$->push_front(OpNot);  }
;
CallParams:
      AddExp                          { $$ = new CallParams($1);  }
    | AddExp Y_COMMA CallParams        { $$ = $3; $$->push_front($1);  }
;
MulExp:
      UnaryExp                               { $$ = new MulExp($1);  }
    | MulExp Y_MUL UnaryExp                  { $$ = $1; $$->push_back(OpMul); $$->push_back($3);  }
    | MulExp Y_DIV UnaryExp                  { $$ = $1; $$->push_back(OpDiv); $$->push_back($3);  }
    | MulExp Y_MODULO UnaryExp               { $$ = $1; $$->push_back(OpModulo); $$->push_back($3);  }
;
AddExp:
      MulExp                              { $$ = new AddExp($1);  }
    | AddExp Y_ADD MulExp                  { $$ = $1; $$->push_back(OpAdd); $$->push_back($3);  }
    | AddExp Y_SUB MulExp                  { $$ = $1; $$->push_back(OpSub); $$->push_back($3);  }
;
RelExp:
      AddExp                                      { $$ = new RelExp($1);  }
    | AddExp Y_LESS RelExp                         { $$ = $3; $$->push_front(OpLess); $$->push_front($1);  }
    | AddExp Y_GREAT RelExp                        { $$ = $3; $$->push_front(OpGreater); $$->push_front($1);  }
    | AddExp Y_LESSEQ RelExp                       { $$ = $3; $$->push_front(OpLessEq); $$->push_front($1);  }
    | AddExp Y_GREATEQ RelExp                       { $$ = $3; $$->push_front(OpGreaterEq); $$->push_front($1);  }
;
EqExp:
      RelExp                              { $$ = new EqExp($1);  }
    | RelExp Y_EQ EqExp                    { $$ = $3; $$->push_front(OpEqual); $$->push_front($1);  }
    | RelExp Y_NOTEQ EqExp                 { $$ = $3; $$->push_front(OpNotEqual); $$->push_front($1);  }
;
LAndExp:
      EqExp                                  { $$ = new LAndExp($1);  }
    | EqExp Y_AND LAndExp                     { $$ = $3; $$->push_front(OpAnd); $$->push_front($1);  }
;
LOrExp:
      LAndExp                               { $$ = new LOrExp($1);  }
    | LAndExp Y_OR LOrExp                    { $$ = $3; $$->push_front(OpOr); $$->push_front($1);  }
;
Type:
      Y_INT   { $$ = TypeInt; }
    | Y_FLOAT { $$ = TypeFloat; }
    | Y_VOID  { $$ = TypeVoid; }
;
%%