export function sum(a: number, b: number): number {
  return a + b;
}

function sum2(a: number, b: number): number {
  return a + b;
}
// this is a comment
const result3 = sum2(1, 2);

const result = sum(1, 2);
const restul2 = sum(3, 5)
console.log(result, restul2);
console.log(sum(12, 12));


if (result === 12) {
  console.log('ok');
} else {
  console.log('not ok');
}

