// NOT SOLVED

// The count-and-say sequence is the sequence of integers with the first five terms as following:

// 1.     1
// 2.     11
// 3.     21
// 4.     1211
// 5.     111221

// 1 is read off as "one 1" or 11.
// 11 is read off as "two 1s" or 21.
// 21 is read off as "one 2, then one 1" or 1211.

// Given an integer n where 1 ≤ n ≤ 30, generate the nth term of the count-and-say sequence.

// Note: Each term of the sequence of integers will be represented as a string.

// Input: 4
// Output: "1211"

// first attempt
// create object
// start count from 1 with initial string
// while count is less than given integer n
// split current string into an array
// overwrite string
// push new numbers into string
// turn number string back into word string
var countAndSay = function(n) {
  let count = 1;
  let str = 'one 1';
  while (count < n) {
    str = wordsToNumbers(str);
    count++;
    str = numbersToWords(str);
    count++;
  }
  return str;
};

function wordsToNumbers(str) {
  let obj = { 'one': '1', 'two': '2', 'three': '3', 'four': '4', 'five': '5' }
  let arr = str.split(' ');
  str = '';
  // turn word string into number string
  for (word of arr) {
    if (obj[word]) {
      str += obj[word];
    } else {
      // if number has s on the end, chop it off
      if (word[word.length-1] === 's') {
        word = word.substring(0, word.length-1)
      }
      str += word;
    }
  }
  return str;
}

function numbersToWords(str) {
  let obj = { '1': 'one', '2': 'two', '3': 'three', '4': 'four', '5': 'five' }
  let wordStr = '';
  let i = 0;
  let count = 0;

  while (i < str.length) {
    if (str[i] === str[i+1]) {
      count++;
    } else {
      count++;
      word = count.toString();
      wordStr += obj[word] + ' ' + str[i];
      if (count !=1) {
        wordStr += 's '
      } else {
        wordStr += ' '
      }
      count = 0;
    }
    i++;
  }

  return wordStr.trim();
}

countAndSay(6)
