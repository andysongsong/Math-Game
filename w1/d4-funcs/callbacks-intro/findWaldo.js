//excerise1
const findWaldo = function (names, found) {
  names.forEach((element, index) => {
    if (element === "Waldo") {
      found(element, index); // execute callback
    }
  });
};

const actionWhenFound = function (name, index) {
  console.log(`Found ${name} at index ${index}!`);
};

findWaldo(["Alice", "Bob", "Waldo", "Winston"], actionWhenFound);
