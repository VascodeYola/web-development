
const invalidInputRexexp = /[^\s\d\.\+\-\*\/\(\)]/;
const simpleArithmeticExprRegexp = /([-+*\/])\s+(-?\d+(?:\.\d+)?)\s+(-?\d+(?:\.\d+)?)/;
const inBracketsExprRegexp = /\(([\s\d\.\+\-\*\/\(\)]+)\)/;
const simpleNumberRegexp = /^\s*(-?\d+(?:\.\d+)?)\s*$/;

let inputStr;
let result = null;
let invalidSymbol;
let inBracketsExpr;
let matches;
let operator;
let operand1;
let operand2;

function calc(inputStr) {
  //Проверка входной строки на корректность
  if ( invalidSymbol = inputStr.match(invalidInputRexexp) ) {
    console.log(`Введен недопустимый символ ${invalidSymbol}`);
    return null;
  }
  //Обработка входной строки, в которой введено только число
  if ( simpleNumber = inputStr.match(simpleNumberRegexp) ) {
    result = simpleNumber[0];
  }
  //Обработка скобочного выражения
  while ( inBracketsExpr = inputStr.match(inBracketsExprRegexp) ) {
    result = calc(inBracketsExpr[1]);
    inputStr = inputStr.replace(inBracketsExprRegexp, ` ${result}`);
  }
  //Вычисление простого арифметического выражения
  while ( matches = inputStr.match(simpleArithmeticExprRegexp) ) {

    result = simpleAritmeticCalc( matches[1], Number(matches[2]), Number(matches[3]) );
    inputStr = inputStr.replace(simpleArithmeticExprRegexp, ` ${result}`);
  }
  return result;
}

function simpleAritmeticCalc(operator, operand1, operand2) {
  let result = null;
  switch (operator) {
    case '+':
      result = operand1 + operand2;
      break;
    case '-':
      result = operand1 - operand2;
      break;
    case '*':
      result = operand1 * operand2;
      break;
    case '/':
      if (operand2 !== 0) {
        result = operand1 / operand2;
      } else {
        console.log(`${operand1} ${operator} ${operand2} - деление на ноль недопустимо`);
      }
      break;
    }
  return result;
} 




  

