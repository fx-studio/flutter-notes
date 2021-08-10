void main() {
  print('Hello, Dart! I am Fx Studio');

  //String avatar = null;

  String? name;
  final text = name ?? 'unknow';
  print(text);

  double? size;
  //size = size ?? 20.0;
  size ??= 30.0;
  print(size);

  int? age;
  print(age?.isNegative);
  print(age?.toString());

  bool isOkay = checkString('Fx Studio')!;
  //bool isOkay = checkString(null) ?? false;
  print(isOkay);

  User? user;

  user?.id = 23;
  user?.name = 'Fx Studio';

  user
    ?..id = 24
    ..name = 'Fx Studio 2';

  print(user?.id);
  String? lengthString = user?.name.length.toString();
  print(lengthString);

  List<int>? myList = [1, 2, 3, 4];
  print(myList[3]);

  myList = null;
  print(myList?[3]);
}

bool? checkString(String? msg) {
  if (msg == null) {
    return null;
  } else {
    if (msg.length > 0) {
      return true;
    } else {
      return false;
    }
  }
}

class User {
  User(this.id, this.name);

  int id;
  String name;

  late final int _secretNumber = _calculateSecret();

  int _calculateSecret() {
    return name.length + 42;
  }
}

bool isLong(String? text) {
  if (text == null) {
    return false;
  }
  return text.length > 100;
}

class TextWidget {
  String? text;

  bool isLong() {
    final text = this.text;

    if (text == null) {
      return false;
    }
    return text.length > 100;
  }
}
