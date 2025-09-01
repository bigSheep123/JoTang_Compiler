#pragma once
#include "Passbase.hpp"
#include "Mem2reg.hpp"
#include "../../lib/CoreClass.hpp"
#include "../../lib/CFG.hpp"
#include <memory>
#include "DCE.hpp"
#include "AnalysisManager.hpp"
#include "ConstantProp.hpp"
#include "Tail_Elimination.hpp"

enum OptLevel
{
    None,
    O1,
    Test, // --test=GVN,DCE
};

class PassManager
{
private:
    Module *module;
    std::vector<std::string> enabledPasses;
    OptLevel level = None;

    AnalysisManager AM; // 只有这一个实例，Run里所有Pass共用
public:
    PassManager() : module(&Singleton<Module>()) {}

    void SetLevel(OptLevel lvl)
    {
        level = lvl;
        enabledPasses.clear();

        if (lvl == O1)
        {
            // 启用全部中端优化
            enabledPasses = {
                "SSE",
                // 前期规范化
                "mem2reg",
                "sccp",
                "SCFG",
                "ConstantHoist",
                // "ECE",
                // 过程间优化
                "inline",

                "SOGE",
                "G2L",
                // // 局部清理
                "DAE",
                "TRE",
                "DCE",
                "ExprReorder",
                "sccp",
                "SCFG",

                //"GVN",
                "DCE",
                // // 循环优化
                "LoopSimplify",
                "Lcssa",
                "LICM",
                "LoopRotate",
                // //"LoopUnroll",
                "LoopDeletion",
                "Tail"
                // "SSR",

                // 数据流优化
                // "SSAPRE",
                //"GVN",
                //"DCE",
                //"ExprReorder",

                // 数组
                // "GepEvaluate",
                //"gepcombine",
                //"gepflatten",

                // 后端准备

            };
        }
        else if (lvl == None)
        {
            enabledPasses = {}; // 默认都不开
        }
    }

    void EnableTestPasses(const std::vector<std::string> &tags)
    {
        level = Test;
        enabledPasses = tags;
    }

    void Run()
    {
        auto &funcVec = module->GetFuncTion();
        for (auto &tag : enabledPasses)
        {
            if (tag == "mem2reg")
            {
                for (auto &f : funcVec)
                {
                    auto *func = f.get();
                    int idx = 0;
                    func->GetBBs().clear();
                    for (auto *bb : *func)
                    {
                        bb->index = idx++;
                        func->GetBBs().push_back(std::shared_ptr<BasicBlock>(bb));
                    }
                    DominantTree tree(func);
                    tree.BuildDominantTree();
                    Mem2reg(func, &tree).run();

                    for (auto &bb_ptr : func->GetBBs())
                    {
                        BasicBlock *B = bb_ptr.get();
                        if (!B)
                            continue;
                        B->PredBlocks = tree.getPredBBs(B);
                        B->NextBlocks = tree.getSuccBBs(B);
                    }
                }
            }
            if (tag == "sccp")
            {
                for (auto &function : funcVec)
                {
                    auto fun = function.get();
                    AnalysisManager *AM;
                    ConstantProp(fun).run();
                }
            }

            if (tag == "DCE")
            {
                for (auto &function : funcVec)
                {
                    auto fun = function.get();
                    AnalysisManager *AM;
                    DCE(fun, AM).run();
                }
            }

            if (tag == "Tail")
            {
                for (auto &function : funcVec)
                {
                    auto fun = function.get();
                    TailElimation(fun).run();
                }   
            }
        }
    }
};