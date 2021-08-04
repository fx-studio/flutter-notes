void main() {
  //const doesOneEqualTwo = (1 == 2);
  const doesOneEqualTwo = 1 == 2;
  print(doesOneEqualTwo);

  const doesOneNotEqualTwo = (1 != 2);
  print(doesOneNotEqualTwo);

  const alsoTrue = !(1 == 2);
  print(alsoTrue);

  const isSunny = true;
  const isFinished = true;
  const willGoCycling = isSunny && isFinished;
  print(willGoCycling);

  const willTravelToAustralia = true;
  const canFindPhoto = false;
  const canDrawPlatypus = willTravelToAustralia || canFindPhoto;
  print(canDrawPlatypus);

  const andTrue = 1 < 2 && 4 > 3;
  print(andTrue);
  const andFalse = 1 < 2 && 3 > 4;
  print(andFalse);
  const orTrue = 1 < 2 || 3 > 4;
  print(orTrue);
  const orFalse = 1 == 2 || 3 == 4;
  print(orFalse);

  print(false && true || true);
  print(false || true && true);

  if (2 > 1) {
    print('Yes, 2 is greater than 1.');
  }

  const animal = 'Fox';
  if (animal == 'Cat' || animal == 'Dog') {
    print('Animal is a house pet.');
  } else {
    print('Animal is not a house pet.');
  }

  const trafficLight = 'yellow';
  var command = '';
  if (trafficLight == 'red') {
    command = 'Stop';
  } else if (trafficLight == 'yellow') {
    command = 'Slow down';
  } else if (trafficLight == 'green') {
    command = 'Go';
  } else {
    command = 'INVALID COLOR!';
  }

  const score = 83;
  const message = (score >= 60) ? 'You passed' : 'You failed';

  const myString = 'I ❤ Dart';
  for (var codePoint in myString.runes) {
    print(String.fromCharCode(codePoint));
  }
}
