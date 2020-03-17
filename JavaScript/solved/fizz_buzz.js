// SOLVED

// Write a program that outputs the string representation of numbers from 1 to n.
// But for multiples of three it should output “Fizz” instead of the number and for the multiples of five output “Buzz”. For numbers which are multiples of both three and five output “FizzBuzz”.

// good resource: https://ditam.github.io/posts/fizzbuzz/

// initial solution, not scalable
var fizzBuzz = function(n) {
  let count = 1;
  let arr = [];
  while (count <= n) {
    if (count % 3 === 0 && count % 5 === 0) {
      arr.push('FizzBuzz')
    } else if (count % 3 === 0) {
      arr.push('Fizz')
    } else if (count % 5 === 0) {
      arr.push('Buzz')
    } else {
      arr.push(count.toString())
    }
    count++;
  }
  return arr;
};

// using string concatenation
var fizzBuzz = function(n) {
  let arr = [];
  for (let i = 1; i <= n; i++) {
    let str = '';
    if (i % 3 === 0) {
      str += 'Fizz';
    }
    if (i % 5 === 0) {
      str += 'Buzz';
    }
    if (str === '') {
      str += `${i}`;
    }
    arr.push(str)
  }
  return arr;
};

// using a hash table
// for each number iterate over object's keys
// more scalable, but keys aren't guaranteed to be in order
var fizzBuzz = function(n) {
  let obj = { 3: 'Fizz', 5: 'Buzz' };
  let arr = [];

  for (let i = 1; i <= n; i++) {
    let str = '';
    for (let key in obj) {
      if (i % key === 0) {
        str+= obj[key]
      }
    }
    if (str === '') {
      str += `${i}`;
    }
    arr.push(str);
  }

  return arr;
};

fizzBuzz(30)
