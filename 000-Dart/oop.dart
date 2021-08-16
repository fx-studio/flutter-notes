void main() {
  print('Hello, Dart! I am Fx Studio');

  final fx = Human('Fx', 'Studio');
  final nick = Student('Nick', 'Lee');

  print(fx);
  print(nick);

  final historyGrade = Grade.A;
  nick.grades.add(historyGrade);

  final child = SomeChild();
  child.doSomeWork();

  final tom = SchoolBandMember('Tom', 'Jones');
  final jerry = MathStudent('Jerry', 'McFly');

  final students = [nick, tom, jerry];

  print(jerry is Object);
  print(jerry is Human);
  print(jerry is Student);
  print(jerry is SchoolBandMember);
  print(jerry is! MathStudent);

  // final animal = Animal(); //Error

  final dog = Dog();
  print(dog.isAlive);
  dog.eat();
  dog.move();
  dog.say();
  print(dog);

  Animal dog2 = Dog();
  print(dog2.isAlive);
  dog2.eat();
  dog2.move();
  print(dog2);
  //dog2.say(); //error

  final DataRepository repository = FakeWebServer();
  final temperature = repository.fetchTemperature('London');

  final repository2 = DataRepository();
  final temperature2 = repository2.fetchTemperature('Manila');

  final flyingFish = FlyingFish();
  flyingFish.fly();
  flyingFish.swim();
  print(flyingFish);

  print('42'.parseInt());

  print(9.addTen());

  var sex = 1.toSex();
  switch (sex) {
    case Sex.male:
      print('male');
      break;
    case Sex.female:
      print('female');
      break;
    case Sex.other:
      print('other');
      break;
  }
}

//////////////////////////////////////////

enum Grade { A, B, C, D, F }

class Human {
  Human(this.firstName, this.lastName);

  String firstName;
  String lastName;
  String get fullName => '$firstName $lastName';

  @override
  String toString() => fullName;
}

class Student extends Human {
  Student(String firstName, String lastName) : super(firstName, lastName);

  var grades = <Grade>[];
}

class SomeParent {
  void doSomeWork() {
    print('parent working');
  }
}

class SomeChild extends SomeParent {
  @override
  void doSomeWork() {
    super.doSomeWork();
    print('child doing some other work');
  }
}

class MathStudent extends Student {
  MathStudent(String firstName, String lastName) : super(firstName, lastName);

  bool get isEligible => grades.every((grade) => grade != Grade.F);
}

class SchoolBandMember extends Student {
  SchoolBandMember(String givenName, String surname)
      : super(givenName, surname);

  static const minimumPracticeTime = 2;
}

abstract class Animal {
  bool isAlive = true;
  void eat();
  void move();

  @override
  String toString() {
    return "I'm a $runtimeType";
  }
}

class Dog extends Animal {
  @override
  void eat() {
    print("eat");
  }

  @override
  void move() {
    print("move");
  }

  void say() {
    print("Gâu Gâu");
  }
}

abstract class Bird extends Animal {
  @override
  void eat() {
    // TODO: implement eat
  }
}

abstract class DataRepository {
  factory DataRepository() => FakeWebServer();
  double? fetchTemperature(String city);
}

class FakeWebServer implements DataRepository {
  @override
  double? fetchTemperature(String city) {
    return 42.0;
  }
}

class Husky implements Dog {
  @override
  bool isAlive = true;

  @override
  void eat() {
    // TODO: implement eat
  }

  @override
  void move() {
    // TODO: implement move
  }

  @override
  void say() {
    // TODO: implement say
  }
}

mixin Flyable {
  void fly();
}

mixin Swimmable {
  void swim();
}

class Fish extends Animal {
  @override
  void eat() {
    print("eat");
  }

  @override
  void move() {
    print("move");
  }
}

class FlyingFish extends Animal with Flyable, Swimmable {
  @override
  void eat() {
    print("eat");
  }

  @override
  void move() {
    print("move");
  }

  @override
  void fly() {
    print("I am believe i can fly");
  }

  @override
  void swim() {
    print("I am believe i can swim");
  }
}

////////////////////////////////////////////

extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }
}

extension on int {
  int addTen() => this + 10;
}

enum Sex { male, female, other }

// Dart 2.6
extension on Sex {
  int getRawValue() {
    switch (this) {
      case Sex.male:
        return 1;
      case Sex.female:
        return 0;
      case Sex.other:
        return -1;
    }
  }
}

extension on int {
  Sex toSex() {
    switch (this) {
      case 1:
        return Sex.male;
      case 0:
        return Sex.female;
      default:
        return Sex.other;
    }
  }
}
