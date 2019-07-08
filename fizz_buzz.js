// NOT SOLVED

// Write a program that outputs the string representation of numbers from 1 to n.
// But for multiples of three it should output “Fizz” instead of the number and for the multiples of five output “Buzz”. For numbers which are multiples of both three and five output “FizzBuzz”.

// initial solution
// not very scalable
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
  let count = 1;
  let arr = [];
  while (count <= n) {
    let str = '';
    if (count % 3 === 0) {
      str += 'Fizz';
    }
    if (count % 5 === 0) {
      str += 'Buzz';
    }
    if (str === '') {
      str += `${count}`;
    }
    arr.push(str)
    count++;
  }
  return arr;
};

var fizzBuzz = function(n) {
  let obj = { 3: 'Fizz', 5: 'Buzz' };
  let count = 1;
  let arr = [];
  while (count <= n) {
    let str = '';

    arr.push(str)
    count++;
  }
  return arr;
};

fizzBuzz(15)
