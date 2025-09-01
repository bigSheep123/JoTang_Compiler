// fact.c
int fact(int n, int acc) {
    if (n == 0)
        return acc;
    return fact(n - 1, acc * n);  // 尾递归
}
