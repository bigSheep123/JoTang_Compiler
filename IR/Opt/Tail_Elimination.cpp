#include "../../include/IR/Opt/Tail_Elimination.hpp"

std::vector<std::pair<CallInst*, RetInst*>> TailElimation::collectTailCalls(Function* func) {
    std::vector<std::pair<CallInst*, RetInst*>> tailCalls;

    return tailCalls;
}

std::pair<BasicBlock*, BasicBlock*> TailElimation::AllocasRecord() {
    auto* entryBlock = func->GetFront();   // 函数入口块

    return {nullptr,nullptr};
}


bool TailElimation::run() {

    return true;
}