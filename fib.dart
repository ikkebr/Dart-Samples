Map<int,int> fibs = {};

int fib(n){
  if (fibs.containsKey(n)){
    return fibs[n];
  }

  if (n % 2 == 0){
    fibs[n] = ( (2 * fib((n / 2.0) - 1)) + fib(n / 2.0)) * fib(n / 2.0);
  } else {
    fibs[n] = Math.pow(fib((n - 1) / 2.0), 2) + Math.pow(fib((n + 1) / 2.0), 2);
  }

  return fibs[n];
}

main() {
  fibs[0] = 0;
  fibs[1] = 1;
  
  assert(fibs[0] == 0);
  assert(fibs[1] == 1);
  assert(fib(2) == (fibs[0]+fibs[1]));
  assert(fib(3) == (fibs[2]+fibs[1]));
  assert(fib(10) == fib(9)+fib(8));
  
  for (var i=0; i<10; i++){
	print(fib(i));
  }
  
}