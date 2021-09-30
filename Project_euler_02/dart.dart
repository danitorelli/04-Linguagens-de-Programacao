void main() {
  int limit = 4000000;
  print(FibSum(limit));
}

int FibSum(int limit) {
  if (limit < 2) return 0;

  int ef1 = 0, ef2 = 2;
  int sum = ef1 + ef2;

  while (ef2 <= limit) {
    int ef3 = 4 * ef2 + ef1;

    if (ef3 > limit) break;

    ef1 = ef2;
    ef2 = ef3;
    sum += ef2;
  }
  return sum;
}
