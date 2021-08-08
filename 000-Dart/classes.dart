void main() {
  print('Hello, Dart! I am Fx Studio');

  final user = User(id: 22, name: 'Fx');
  print(user);
  user.id = 999;
  user.name = 'Fx Studio';
  print(user.id);
  print(user.name);

  // final user2 = User(id: 23, name: 'Fx')
  //   ..id = 23
  //   ..name = 'Fx Studio2';

  final user3 = User(id: 24, name: 'Fx Studio 3');
  print(user3);

  print(user);

  user.hello();

  print(user.toJson());

  final anonymousUser = User.anonymous();
  print(anonymousUser);

  //final jb = User(id: -1, name: 'JB Lorenzo');
  //print(jb);

  final fx = User.fx();
  print(fx);

  final map = {'id': 10, 'name': 'Naruto'};
  final naruto = User.fromJson(map);
  print(naruto);
}

//////////////////////////
class User {
  // User(int id, String name) {
  //   this.id = id;
  //   this.name = name;
  // }

  // User(this.id, this.name);

  // User.anonymous() {
  //   id = 0;
  //   name = 'anonymous';
  // }

  // User.anonymous() : this(0, 'anonymous');

  User({id = 0, name = 'anonymous'})
      : assert(id >= 0),
        assert(name.isNotEmpty),
        _id = id,
        _name = name;

  User.anonymous() : this();

  User.fromJson(Map<String, Object> json)
      : _id = json['id'] as int,
        _name = json['name'] as String;

  factory User.fx() {
    return User(id: 99, name: 'Fx');
  }

  // factory User.fromJson(Map<String, Object> json) {
  //   final userId = json['id'] as int;
  //   final userName = json['name'] as String;
  //   return User(id: userId, name: userName);
  // }

  int _id;
  String _name;

  int get id => _id;
  set id(int value) => _id = value;

  String get name {
    return _name.toUpperCase();
  }

  set name(String value) => _name = value;

  @override
  String toString() {
    return 'User(id: $_id, name: $_name)';
  }

  void hello() {
    print('Hello, I am $_name.');
  }

  String toJson() {
    return '{"id":$_id,"name":"$_name"}';
  }
}

class Dog {
  Dog();
  var name = '';
}
