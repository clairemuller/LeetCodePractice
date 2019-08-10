// NOT SOLVED

// Count the number of prime numbers less than a non-negative number, n.
// A prime number is a whole number greater than 1 whose only factors are 1 and itself

// Input: 10
// Output: 4
// Explanation: There are 4 prime numbers less than 10, they are 2, 3, 5, 7.

// first attempt
// create helper function to check if the number is prime
// not efficient if n is really large
var countPrimes = function(n) {
  let primesCount = 0;
  n--;
  while (n > 1) {
    if (isPrime(n)) {
      primesCount++
    }
    n--;
  }
  return primesCount;
};

function isPrime(n) {
  for (let i = 2; i < n; i++) {
    if (n % i === 0) {
      return false;
    }
  }
  return true;
}
