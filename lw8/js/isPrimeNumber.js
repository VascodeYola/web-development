let arr = [];
let input;

function isNumber(n) {
  return !isNaN( parseFloat(n) ) && !isNaN(n - 0);
}

function arrayPush(input) {
  if ( !isNumber(input) ) {
    console.log(`${input} isn't Number`);
  } else {
    arr.push(input);
  }  
  if ( Array.isArray(input) ) {
    console.log(`${input} is Array`);
    for (let i = 0; i < input.length; i++) {
      if ( !isNumber(input[i]) ) {
        console.log(`//${input[i]} isn't Number`);  
      } else {
        arr.push(input[i]);
      }
    }  
  }
}

function isPrimeNumber(input) {
  arrayPush(input);
  let isPrime;  
  console.log(arr);
  for (let i = 0; i < arr.length; i++) {
    isPrime = true;
    console.log(arr[i]);
    for (let j = 2; j < arr[i]; j++) {
      if (arr[i] % j == 0) {
        isPrime = false;
        break;
      }
    }
      if (isPrime && arr[i] >= 2) {
        console.log(`//Результат: ${arr[i]} is prime number`);
      } else {
        console.log( `//Результат: ${arr[i]} is not prime number` );
      }
  }
  arr = [];
}

