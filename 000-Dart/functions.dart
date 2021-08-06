void main() {
  var str = hello("Fx Studio");
  print(str);

  helloPersonAndPet('Fluffy', 'Chris');

  print(fullName('Fx', 'Studio'));
  print(fullName('Albert', 'Einstein', 'Professor'));

  print(fullName2('Fx', 'Studio'));
  print(fullName2('Albert', 'Einstein', 'Professor'));

  withinTolerance(9, min: 7, max: 11);
  withinTolerance2(value: 9, min: 7, max: 11);

  var temp = compliment(99);
  print(temp);

  var temp2 = compliment(1);
  print(temp2);

  final multiply = (int a, int b) {
    return a * b;
  };
  print(multiply(2, 3));

  final triple = applyMultiplier(3);
  print(triple(6));

  var counter = 0;
  final incrementCounter = () {
    counter += 1;
  };

  incrementCounter();
  incrementCounter();
  incrementCounter();
  incrementCounter();
  incrementCounter();
  print(counter);

  final counter1 = countingFunction();
  final counter2 = countingFunction();

  print(counter1()); // 1
  print(counter2()); // 1
  print(counter1()); // 2
  print(counter1()); // 3
  print(counter2()); // 2
}

//////////////////////////
String hello(String name) {
  return 'Hello. I am $name';
}

void helloPersonAndPet(String person, String pet) {
  print('Hello, $person, and your furry friend, $pet!');
}

String fullName(String first, String last, [String? title]) {
  if (title != null) {
    return '$title $first $last';
  } else {
    return '$first $last';
  }
}

String fullName2(String first, String last, [String title = 'Ahihi']) {
  return '$title $first $last';
}

bool withinTolerance(int value, {int min = 0, int max = 10}) {
  return min <= value && value <= max;
}

bool withinTolerance2(
    {required int value, required int min, required int max}) {
  return min <= value && value <= max;
}

compliment(int number) {
  return '$number is a very nice number.';
}

Function applyMultiplier(num multiplier) {
  return (num value) {
    return value * multiplier;
  };
}

Function countingFunction() {
  var counter = 0;
  final incrementCounter = () {
    counter += 1;
    return counter;
  };
  return incrementCounter;
}
