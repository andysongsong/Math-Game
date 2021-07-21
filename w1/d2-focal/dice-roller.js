const args = process.argv.slice(2);
let time = Number(args[0]);

function dice(time) {
  let result = [];
  for (let i = 1; i <= time; i++) {
    result.push(Math.floor(Math.random() * 6 + 1));
  }
  return `Rolled 3 dice: ${result.join(", ")}`;
}

const result = dice(time);
console.log(result);
