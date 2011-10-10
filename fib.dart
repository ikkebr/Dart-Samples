Map<int,int> fibs = {};

int fib(n){
  if (fibs.containsKey(n)){
    return b[n];
  }

  if (n % 2 == 0){
    fibs[n] = ((2 * fib((n / 2) - 1)) + fib(n / 2)) * fib(n / 2);
  } else {
    fibs[n] = (fib((n - 1) / 2) ^ 2) + (fib((n + 1) / 2) ^ 2);
  }

  return fibs[n];
}

main() {
  fibs[0] = 0;
  fibs[1] = 1;
  print(fib(1000));
}