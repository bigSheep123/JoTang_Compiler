#pragma once
#include "Passbase.hpp"
#include "../../lib/CFG.hpp"

class TailElimation : public _PassBase<TailElimation, Function> 
{ 
    Function* func;
    std::pair<BasicBlock*, BasicBlock*> AllocasRecord();
    static std::vector<std::pair<CallInst*, RetInst*>> collectTailCalls(Function* f);

public:
    TailElimation(Function* _func) : func(_func) {}
    bool run();
};
