void main() {
  print('Type');

  int myInteger = 10;
  double myDouble = 3.14;

  const int myInteger2 = 10;
  const double myDouble2 = 3.14;

  final int myInteger3 = 10;
  final double myDouble3 = 3.14;

  num myNumber = 3.14;
  print(myNumber is double);
  print(myNumber is int);

  print(myNumber.runtimeType);

  var integer = 100;
  var decimal = 12.5;
  //integer = decimal;
  integer = decimal.toInt();

  const hourlyRate = 19.5;
  const hoursWorked = 10;
  //const totalCost = hourlyRate * hoursWorked;
  //const totalCost = (hourlyRate * hoursWorked).toInt();
  final totalCost = (hourlyRate * hoursWorked).toInt();

  const wantADouble = 3;
  final actuallyDouble = 3.toDouble();
  const double actuallyDouble2 = 3;
  const wantADouble2 = 3.0;

  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";

  var salutation = 'Hello!';
  print(salutation.codeUnits);

  var firstname = 'Fx';
  var lastname = 'Studio';
  var fullname = firstname + ' ' + lastname;
  var age = 18;
  var hello = 'Hello, I am $fullname . I am $age year olds';

  print(fullname);
  print(hello);

  var s = r'In a raw string, not even \n gets special treatment.';
  print(s);

  final message = StringBuffer();
  message.write('Hello');
  message.write(' my name is ');
  message.write('Fx');
  message.toString();
// "Hello my name is Fx"

  dynamic myVariable = 42;
  myVariable = "hello";

  var myVariable2;
  myVariable2 = "hello";
  myVariable2 = 54;

  Object? myVariable3 = 42;
  myVariable3 = 'hello'; // OK
}
