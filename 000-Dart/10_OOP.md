# 10 - Object Oriented Programming

Chào mừng bạn đến với Fx Studio. Chúng ta tiếp tục với hành trình tham quan ngôn ngữ Dart. Chủ đề của phần này là **Object-oriented programming**, hay tên dân gian là Hướng đối tượng. Bạn đã tìm hiểu một ít OOP tại phần Class của Dart rồi và bây giờ chúng ta bắt tay tìm hiểu kĩ hơn trong Dart thì OOP sẽ như thế nào.

> Bắt đầu thôi!

## Object-oriented programming

> **OOP** (viết tắt của Object Oriented Programming) – lập trình hướng đối tượng là một phương pháp lập trình dựa trên khái niệm về lớp và đối tượng. OOP tập trung vào các đối tượng thao tác hơn là logic để thao tác chúng, giúp code dễ quản lý, tái sử dụng được và dễ bảo trì.

Bất kỳ developer nào muốn đi trên con đường lập trình cũng đều phải biết về **OOP**. Và trên mạng cũng có rất nhiều khái niệm về OOP rồi, bạn có thể tìm và đọc sau nhoé. Còn với Dart thì chúng ta sẽ đi tìm hiểu về những kĩ thuật được sử dụng cho OOP mà thôi.

Chúng ta sẽ quan tâm nhiều tới việc mở rộng lớp (**extending classes**) và kế thừa (**inheritance**). Bạn sẽ xây dựng các lớp cha (**super classes**) & lớp con (**subclasses**) ... Từ đó, chúng ta sẽ có những đặc tính và kĩ thuật được sử dụng để giải quyết các bài toán đặt ra.

## **Creating your first subclass**

Bạn đã tìm hiểu về cách khai báo một lớp trong Dart là như thế nào rồi. Nên phần này mình sẽ đi nhanh thôi. 

### First class

Đầu tiên chúng ta có các lớp đầu tiên như sau:

```dart
enum Grade { A, B, C, D, F }

class Human {
  Human(this.firstName, this.lastName);

  String firstName;
  String lastName;
  String get fullName => '$firstName $lastName';

  @override
  String toString() => fullName;
}

class Student {
  Student(this.firstName, this.lastName);

  String firstName;
  String lastName;
  var grades = <Grade>[];
  String get fullName => '$firstName $lastName';

  @override
  String toString() => fullName;
}
```

Trong đó:

* **Grade** là lớp mà bạn sinh viên có thể tham gia vào.
* Lớp **Human** là đại diện chung cho các đối tượng là người
* Lớp **Student** là đại diện cho sinh viên

> Khai báo các thuộc tính của các lớp dựa trên đặc trưng của ngôn ngữ Dart nhoé!

Bạn sẽ thấy một điều khá bất ổn là các thuộc tính của **Student** và **Human** đã có sự trùng lặp với nha. Như vậy, chúng ta khá dư thừa code. Mà cái gì dư thừa thì ta sẽ đi tối ưu nó thôi. Chúng ta qua tiếp phần tiếp theo

### Subclass

Để loại bỏ đi các code trùng lặp giữa 2 lớp, ta sẽ xác định quan hệ kế thừa cho chúng. Trong ví dụ thì:

* Lớp cha là **Human**
* Lớp con là **Student**

Để Student kế thừa Human, chúng ta sẽ thay đổi lại khai báo lớp Student một ít. Quan trọng là sử dụng từ khoá `extends`. Ta sẽ có code ví dụ như sau:

```dart
class Student extends Human {
  Student(String firstName, String lastName) : super(firstName, lastName);

  var grades = <Grade>[];
}
```

Cảm nhận đầu tiên thì lớp Student thu gọn lại nhiều quá. Trong đó:

* Các thuộc tính & phương thức có trong lớp con mà cũng có trong lớp cha, thì sẽ lượt bỏ hết trong lớp con.
* Từ khoá `super` ám chỉ tới đối tượng lớp cha. 
* Từ khoá `this` sẽ ám chỉ tới đối tượng lớp con.
* Hàm khởi tạo sẽ vẫn giữ nguyên là `Student`, tuy nhiên các thuộc tính `firstName` & `lastName` ở lớp cha rồi. Nên ta không thể sử dụng kiểu hàm khởi tạo rút gọn.
* Ta sẽ sử dụng dùng hàm khởi tạo chuyển (**forwarding constructor**), với 2 tham số cho lớp cha khởi tạo.

Quan trọng nhất là thể được được đặc tính đầu tiên của OOP là

> Tính kế thừa

Những gì của cha có thì con sẽ được kế thừa lại hết.

### **Initializer list**

Nếu bạn thắc mắt là sẽ có thêm các thuộc tính riêng cho lớp con thì sao. Lúc này, chúng ta sẽ dùng tới **initializer list**, bạn sẽ gán dữ liệu từ tham số của hàm khởi tạo cho các thuộc tính của lớp con. 

Xem ví dụ code nhoé

```dart
class SomeChild extends SomeParent {
  SomeChild(double height)
      : assert(height != 0),  // assert
        _height = height,     // initializer
        super();              // super
  final double _height;
}
```

Trong đó, bạn thấy `super()` ở cuối cùng. Điều này có vẻ là dư thừa & không cần thiết. Vì Dart luôn gọi hàm tạo mặc định cho lớp cha, nếu không có đối số nào để truyền.

Lý do mà bạn hoặc Dart luôn cần thực hiện lệnh gọi `super()` là để đảm bảo rằng tất cả các giá trị của trường đã hoàn tất quá trình khởi tạo.

### **Using**

Ta đi nhanh về ví dụ sử dụng các lớp được khai báo ở trên. Và nó cũng tương tự như với cách bạn tạo đối tượng từ một class trong bài trước. Xem ví dụ nhoé

```dart
  final fx = Human('Fx', 'Studio');
  final nick = Student('Nick', 'Lee');

  print(fx); //Fx Studio
  print(nick); //Nick Lee
```

Tiếp theo, ta thêm giá trị cho thuộc tính của lớp con thì như sau:

```dart
  final historyGrade = Grade.A;
  nick.grades.add(historyGrade);
```

Cái này tuỳ thuộc vào logic & code của bạn nhoé! Trên chỉ là ví dụ cho bài viết thôi.

## **Overriding**

Tiếp theo, bạn sẽ tìm hiểu về kĩ thuật trên OOP. Đó là ghi đè (**Overridding**). Tức là:

* Lớp con sẽ ghi đè lại các phương thức của lớp cha
* Từ khoá `@override` để thực hiện việc ghi đè

Bạn đã thực hiện việc này nhiều lần rồi, có thể bạn đã quên.

```dart
  @override
  String toString() => fullName;
```

Trong các ví dụ lớp, ta đã thực hiện việc ghi đè phương thức `toString` rất nhiều lần. Hoặc như lớp con **Student** của chúng ta muốn sáng tạo trong `fullName` thì có thể ghi đè lại cả phương thức **getter** cho `fullName`. Ví dụ như sau:

```dart
@override
String get fullName => '$firstName, $lastName';
```

Thay dấu cách (` `) bằng dấu phẩy ( `,`) cho `fullName`.

### Call super

Điều chú ý trong kĩ thuật ghi đè là việc triệu hồi con trỏ lớp cha (`supper`) như thế nào là hợp lý. Bạn xem qua ví sau nhoé.

```dart
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
```

Trong đó:

* Tại lớp con SomeChild, ta ghi đè lại phương thức `doSomeWork()` từ lớp cha `SomeParent`
* Bạn chú ý thứ tự của 2 dòng lệnh trong `doSomeWork()` trong lớp con nhoé.

Tạo đối tượng lớp con và thực thi xem kết quả nhoé.

```dart
final child = SomeChild();
child.doSomeWork();
```

Kết quả như sau:

```dart
parent working
child doing some other work
```

Như vậy, khi bạn muốn truy cập tới phương thức của lớp cha, thì dùng từ khoá `super` để gọi. Vì một khi đã ghi đè rồi thì đối tượng lớp con chỉ gọi tới phương thức của nó thôi.

Cuối cùng, chính là thứ tự việc gọi dòng lệnh `super` đó. Sẽ quyết định phương của lớp con hoạt động như thế nào.

> Tốt nhất bạn hãy gọi `super` đầu tiên trong các phương thức ghi đè (override) tại lớp con.

## **Multi-level hierarchy**

Bạn sẽ thử suy nghĩ như thế nào nên chúng ta tiếp tục kế thừa lại 1 lơp con. Ta hãy tử lấy ví dụ qua 2 lớp con của lớp **Student** nhoé.

```dart
class MathStudent extends Student {
  MathStudent(String firstName, String lastName) 
      : super(firstName, lastName);

  bool get isEligible => grades.every((grade) => grade != Grade.F);
}

class SchoolBandMember extends Student {
  SchoolBandMember(String givenName, String surname)
      : super(givenName, surname);

  static const minimumPracticeTime = 2;
}
```

Trong đó:

* **MathStudent** & **SchoolBandMember** là 2 lớp con của lớp **Student**
* Chúng mang đầy đủ các thuộc tính và phương thức mà **Student** có.
* Ngoài ra, chúng có thêm các thuộc tính hay phương thức của riêng chúng

Ta xem qua lại cấu trúc của cây thừa kế thì như sau

```
[Object]
   |-----[Human]
             |-----[Student]
                        |-----[MathStudent]
                        |-----[ShoolBandStudent]
```

Đâu đó, chúng ta có Human là ông nội của **MathStudent** & **SchoolBandMember**. Tuy nhiên, điều này ý nghĩa sẽ là

> Một super-class thì có thể có nhiều sub-class.

### Kiểu dữ liệu

Đầu tiên, ta hãy xem ví dụ tạo các đối tượng của các lớp con Student trước. Bạn sẽ có ví dụ như sau:

```dart
 final tom = SchoolBandMember('Tom', 'Jones');
 final jerry = MathStudent('Jerry', 'McFly');
```

Khá đơn giản, chúng ta sang tiếp ví dụ nữa:

```dart
final students = [nick, tom, jerry];
```

Ta biết cả 3 đối tượng đó là 3 kiểu dữ liệu khác nhau. Nhưng chúng có môi quan hệ kế thừa với nhau. Do đó, khi bạn cố gắng nhóm chúng nó lại vào 1 tập hợp (như List). Thì sẽ tự động chọn kiểu dữ liệu phù hợp nhất, các lớp cha, hay lớp ông nội, hay có thể tổ tiên xa như Object. Trong ví dụ này thì kiểu của List sẽ là `<Student>`.

Chúng ta có thể kiểm tra được kiểu dữ liệu lúc `run-time` của các đối tượng là như thế nào. Xem ví dụ code nhoé.

```dart
  print(jerry is Object);
  print(jerry is Human);
  print(jerry is Student);
  print(jerry is SchoolBandMember);
  print(jerry is! MathStudent);
```

Thực thi ví dụ này, bạn sẽ được tổ tiên của đối tượng là ai. Ahihi!

### Lưu ý

Với Dart hay các ngôn ngữ lập trình khác thì cũng không khuyến khích bạn tạo 1 cây thừa kế quá nhiều cấp. Điều này dẫn tới việc khó khăn trong xử lý. Cũng giống như sự ảnh hưởng của nhiều kiểu dữ liệu khác nhau tác động lên cùng 1 đối tượng.

Ví dụ: một bạn sinh viên là đối tượng MathStudent, nhưng bạn đó vẫn có thể tham gia thêm ban nhạc nữa. Có nghĩa bạn đó sẽ cũng là đối tượng của SchoolBandStudent. Và với thiết kế thừa kế trên thì chỉ 1 chữ thôi.

> TOANG!

Do đó, bạn cần có sự thiết kế phù hợp hơn khi muốn có nhiều lớp con với nhiều mục đích sử dụng. Và để giải quyết bài toán ví dụ TOANG đó, ta cũng có nhiều cách xử lý. Bạn sẽ theo dõi sau nhoé.

## **Abstract classes**

Nếu bạn là một dev iOS và đang chuyển nghề sang Flutter, có lẽ khai niệm lớp trừu tượng (**Abstract classes**) khá là trừu tượng với bạn. 

> Trong ngôn ngữ lập trình, kiểu trừu tượng (tiếng Anh: abstract type) là một kiểu trong hệ thống kiểu danh định mà không thể được khởi tạo trực tiếp; một kiểu mà không trừu tượng – nghĩa là có thể được khởi tạo – được gọi là kiểu cụ thể (concrete type). Mỗi thực thể của kiểu trừu tượng là một thực thể của vài kiểu con cụ thể. Kiểu trừu tượng còn được gọi là kiểu tồn tại (existential type).
>
> *(theo wikipedia)*

Chúng ta sẽ bỏ qua mấy cái khái niệm mệt mỏi này nhé. Vào thẳng việc tạo một lớp trừu tượng trong Dart luôn nhoé.

### Creating **abstract classes**

Trong Dart, bạn tạo ra một lớp trừu tượng bằng từ khoá `abstract`. Nó sẽ được đặt ở trước khai báo một `class`. Xem ví dụ với lớp động vật sau đây nhé.

```dart
abstract class Animal {
  bool isAlive = true;
  void eat();
  void move();
  
  @override
  String toString() {
    return "I'm a $runtimeType";
  }
}
```

Lớp `abstract` có gì đặc trưng:

* Lớp này không tạo được đối tượng của chính nó, bạn sẽ thấy vắng mặt đi các hàm khởi tạo
* Nó sẽ không kế thừa từ một lớp nào khác.
* Các phương thức trong lớp trừu tượng thì thiếu đi dấu `{}`. Và bạn không cần thiết phải triển khai một phương thức nào đó.
* Lớp trừu tượng thì không có nghĩa các thuộc tính & phương thức của nó không được triển khai. Vì chúng nó vẫn kế thừa từ **Object** (thuỷ tổ)

Nếu bạn muốn thử sức, thì hãy tạo một đối tượng của lớp trừu tượng **Animal** trên nhoé.

```
final animal = Animal();
```

Kết quả nhận được như sau:

```
The value of the local variable 'animal' isn't used. Try removing the variable or using it.
```

### Subclass

Bản thân lớp trừu tượng thì không có thể hiện, tuy nhiên các subclass (lớp con) của nó thì sẽ có thể hiện. Và đây cũng là 1 cách bạn hiện thực hoá một lớp trừu tượng.

Cùng từ ví dụ trên, ta xây dựng thêm một lớp **Dog** từ nó. Xem code ví dụ nhoé

```dart
class Dog extends Animal {
  
}
```

Chúng ta sẽ bị báo lỗi, vì khi bạn kế thừa một lớp trừu tượng thì bắt buộc bạn phải implement các phương thức trừu tượng trong lớp trừu tượng tại lớp kế thừa. Với ví dụ Dog thì bạn cần implement thêm 2 phương thức `eat()` & `move()`. Xem tiếp ví dụ nhoé

```dart
class Dog extends Animal {
  @override
  void eat() {
    // TODO: implement eat
  }

  @override
  void move() {
    // TODO: implement move
  }
}
```

Bạn cần phải `@override` lại các phương thức của lớp trừu tượng. Bạn tiếp tục hoàn thiện code cho **Dog** nhoé. 

```dart
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
```

### Sử dụng subclass

Còn sử dụng lớp Dog thì giống như bao lớp bình thường khác.

```dart
  final dog = Dog();
  print(dog.isAlive);
  dog.eat();
  dog.move();
  dog.say();
  print(dog);
```

Thực thi đoạn code để xem kết quả nhoé!

Ngoài ra, bạn có thể tạo một đối tượng thuộc lớp trừu tượng bằng cách gọi hàm khởi tạo của các lớp con của nó. Xem ví dụ tạo ra một chú chó thứ 2 nhoé.

```dart
  Animal dog2 = Dog();
  print(dog2.isAlive);
  dog2.eat();
  dog2.move();
  print(dog2);
```

Trong đó

* Kiểu dữ liệu khai báo cho `dog2` là kiểu `Animal`
* Nó vẫn có thể gọi được các phương thức mà `Animal` có
* Khi `print` thì sẽ là kiểu là `Dog`, do ta khởi tạo bằng `Dog`

Tuy nhiên, vì kiểu là lớp trừu tượng nên khi bạn gọi các phương thức mà chỉ lớp con có. Chương trình sẽ báo lỗi. Ví dụ:

```dart
dog2.say(); // error
```

Vì vậy, bạn có thể tạo một thể hiện của lớp trừu tượng thông qua các hàm khởi tạo của lớp con của lớp trừu tượng đó.

### Abstract Subclass

Nếu như bạn kế thừa một lớp trừu tượng mà không implement đầy đủ các phương thức trừu tượng thì nó được xem vẫn là một lớp trừu tượng. Do đó, bạn cần thêm từ khoá `abstract` trước khai báo `class`. Ví dụ nhoé:

```dart
abstract class Bird extends Animal {
  @override
  void eat() {
    // TODO: implement eat
  }
}
```

Và lớp này vẫn mang đầy đủ tính chất của một lớp trừu tượng. Bạn không thể tạo ra được thể hiện từ nó.

## **Interfaces**

Một trong những khái niệm quan trong trong lập trình hướng đối tượng ở bất kì ngôn ngữ nào. Bạn sẽ có thêm một cách để có được nhưng phương thức hay thuộc tính từ các lớp khác. Giúp bạn mở rộng thêm về mặt logic cho lớp của bạn.

Và trong thực tế bạn cũng cần phải sử dụng tới Interfaces khá là nhiều. Ví dụ: một người vừa là con nợ và là chủ nợ, nếu như bạn thiết kế chúng là lớp riêng biệt. Thì rất khó kế thừa. Lúc này interface như là một cứu cách cho bạn.

### Create an Interfaces

Với Dart mặc định mọi lớp đều là interface, lớp đó được triển khai bởi lớp khác bằng từ khóa `implements`. Và chúng ta không có từ khoá chuyên biệt để khai báo một Interface nhoé.

> Người dùng rất thì dùng 1 lớp trừu tượng để tạo một Interface. Vì nó không có khả năng sinh đối tượng.

Ví dụ code nhoé

```dart
 abstract class DataRepository {
  double? fetchTemperature(String city);
}
```

Cũng khá đơn giản nhĩ. Và theo lời khuyên thì bạn cũng nên dùng `abstract` để khai báo 1 interface

### **Implementing the interface**

Chúng ta gọi là implement và sử dụng từ khoá là `implements`. Để triển khai một interface vào trong một lớp bất kì Cách này tương tự với thừa kế. Xem ví dụ

```dart
class FakeWebServer implements DataRepository {
  @override
  double? fetchTemperature(String city) {
    return 42.0;
  }
}
```

Khi một lớp được coi là giao diện (interface), thì lớp triển khai (implement) nó phải định nghĩa lại mọi **phương thức, thuộc tính** có trong giao diện.

Bạn thử với một lớp đã tồn tại rồi và tiến hành implement nó xem sao.

```dart
class Husky implements Dog {
  @override
  bool isAlive;

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
```

Cũng phải định nghĩa lại như thường thôi.

### Sử dụng

Cũng tương tự với lớp trừu tượng, bạn nên hãy sử dụng lớp lớp triển khai interface để tạo đối tượng. Xem ví dụ:

```dart
  final DataRepository repository = FakeWebServer();
  final temperature = repository.fetchTemperature('London');
```

Nhưng mà như thế này, bạn sẽ lại gặp vấn đề khi muốn sử dụng các phương thức của riêng lớp con. Còn nếu bạn tạo trực tiếp từ lớp con thì sẽ gặp một số vấn đề logic khi muốn dùng chung với nhiều lớp khác.

> Đây là vấn đề về mặt logic thôi nhé. Còn bạn có thể làm một cách chân phương hơn nhiều.

Ta có 1 cách hack game như sau:

```dart
abstract class DataRepository {
  factory DataRepository() => FakeWebServer();
  double? fetchTemperature(String city);
}
```

Ta làm giản một hàm khởi tạo bằng một `factory` với tên giống như hàm khởi tạo. Và điều đặt biệt là bạn có thể trả về kiểu dữ liệu là lớp con trong đó vẫn được. Lúc này, đối tượng bạn tạo ra đầy đủ tính chất của lớp con.

## **Extending vs implementing**

Bạn có 2 cách để mở rộng một lớp đó là thừa kế một lớp khác và triển khai một interface. Đại diện bởi 2 từ khoá là `extends` & `implement`

Chúng ta sẽ có một số lưu ý sau:

* Bạn không thể kế thừa `extends` 2 lớp trở lên. Tất nhiên 1 con không thể có 2 cha.

```dart
class MySubclass extends OneClass, AnotherClass {} // Not OK
```

* Bạn có thể implement nhiều interfaces vào cho 1 lớp. Khá vui đó!

```dart
class MyClass implements OneClass, AnotherClass {} // OK
```

* Kết hợp được 2 cái `extends` và `implements` nhưng vẫn tuân thủ nguyên tắc 1 ở trên.

```dart
class MySubclass extends OneClass implements AnotherClass {}
```

* Nhưng sẽ có sự khác nhau rất nhiều khi bạn có đoạn code như thế này

```dart
class SomeClass extends AnotherClass {}
class SomeClass implements AnotherClass {}
```

Ta sẽ tìm hiểu sự khác nhau tiếp giữa chúng.

* `extends` thì bạn có quyền truy cập vào tất cả các thuộc tính và phương thức của lớp đó. Mà không cần phải `override` lại chúng
* `implement` thì bạn sẽ phải định nghĩa lại `override` các phương thức và thuộc tính ở lớp đó, trong lớp của mình. Và chúng có ý nghĩa trong phạm vi lớp implement mà thôi.

## Mixins

**Mixins** là một tính năng thú vị của Dart mà bạn có thể không quen thuộc, ngay cả khi bạn biết các ngôn ngữ lập trình khác. Chúng là một cách để sử dụng lại các phương thức hoặc biến giữa các lớp không liên quan.

Còn với đội Swift thì ....

> For you Swift developers, Dart mixins work like protocol extensions.

### Vấn đề

Có lúc nào bạn hỏi đã có `extends` với Abstract Class và `implements` với Interface rồi th sinh ra Mixins làm gì nữa. Thì ta có 1 ví dụ như sau:

* Bạn có lớp trừu tượng **Animal** và bạn sẽ tạo ra một lớp **Fish** để đại diện cho các loài cá.
* Từ đó bạn thiết kế ra lớp cá Mập với đầy đủ các tính chất của loài cá.
* Nhưng chúng ta sẽ có lớp cá Heo, cá Voi, cá Sấu ... về mặt sinh học thì chúng là lớp Thú
* Và vấn đề sẽ phát sinh ra là như vậy

Do đó, bạn sẽ vài tính chất hay phương thức để bổ sung cho một lớp nào đó. Không phải kế thừa hay triển khai toàn bộ 1 lớp khác vào trong lớp của mình. Và

> Mixins được xem là giải pháp tốt nhất!

### Creata Mixin

Bạn sử dụng từ khoá `mixin` để tạo một Mixin. Đặc trưng:

* Nó không thể tạo được thể hiện
* Bạn có thể khai báo các thuộc tính và phương thức
* Phương thức thì có thể không cần phải triển khai

Xem qua ví dụ nhoé

```dart
mixin Flyable {
  void fly();
}

mixin Swimmable {
  void swim();
}
```

Trong đó:

* Ta có 2 Mixin cho 2 khả năng bay và bơi của động vật.
* Ta khai báo 2 function cho 2 Mixin và chỉ khai báo thôi, không cần làm gì cả

### Sử dụng

Để sử dụng Mixin vào lớp thì bạn sẽ dùng từ khoá `with` , sau đó điền các Mixin vào. Bạn có thể sử dụng 1 lúc được nhiều Mixin cho một lớp.

Xem ví dụ nhoé

```dart
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
```

Trong đó:

* **FlyingFish** (cá chuồn) loài cá có thể vừa bơi được và vừa bay được
* Nó là động vật, nên ta sẽ `extends` từ **Animal**
* Với khả năng bay ta sử dụng Mixin **Flyable** và bơi với Mixin **Swimmable**
* Sau đó, bạn chỉ cần `override` lại toàn bộ các thuộc tính và phương thức của các lớp cha & Mixin.

Tạo đối tượng và sử dụng thôi.

```dart
  final flyingFish = FlyingFish();
  flyingFish.fly();
  flyingFish.swim();
  print(flyingFish);
```

Lập trình có bộ EZ phải không nào!

## **Extension**

Một tính năng khá hữu dụng nữa có trong Swift và Dart cũng có, đó là **Extension**. Bạn có thể thêm các phương thức riêng của mình vào một lớp có sẵn nào đó, mà không cần phải kế thừa lại chúng.

Các lớp bạn có thể mở rộng có thể là class hệ thống, trong các thư viện, hoặc bất cứ class nào ... Các phương thức bạn có thể thêm vào là các hàm bình thường, các setter & getter, operators.

> Bắt đầu từ phiên bản **Dart 2.7** tính năng này đã được release.

### Syntax

Bạn sẽ có cú pháp khai báo một extension như sau:

```dart
extension on SomeClass {
  // your custom code
}
```

Extensions này với cấp độ cao nhất trong tệp. Không thuộc bên trong một lớp nào cả. Thay thế SomeClass bằng bất kỳ lớp nào bạn muốn thêm chức năng bổ sung.

Bạn sẽ có cách phổ biến hơn như sau:

```dart
extension YourExtensionName on ClassName {
  // your custom code
}
```

Bạn có thể sử dụng bất kỳ tên nào bạn thích thay cho **YourExtensionName**. Tên chỉ được sử dụng để hiển thị hoặc ẩn tiện ích mở rộng khi nhập nó vào thư viện khác.

### Sử dụng

Ta sẽ áp dụng để mở rộng thêm vài class nhoé.

* **String**

```dart
extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }
}

print('42'.parseInt());
```

Ta sẽ có thêm một phương thức giúp cho `String` có thể thành `int`. 

* **int**

```dart
extension on int {
  int addTen() => this + 10;
}

print(9.addTen());
```

Trong một extension, bạn sử dụng con trỏ `this` để truy cập tới chính đối tượng. Giúp bạn xử lý và tính toán được dễ dàng hơn.

### **Enum extension example**

Vì Enum trong Dart khá đơn giản, nên bạn dùng nó đôi khi lại khá là tù túng. Ta có thể thêm các extension giúp nó trở nên xinh đẹp hơn nhiều. Bạn có thể tham khảo qua ví dụ code sau:

```dart
enum Sex { male, female, other }

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
```

Đơn giản, với enum `Sex` thì bạn có thêm phương thức lấy được `raw value` của nó. Và từ một số `int` bạn có thể tạo được 1 đối tượng enum tương ứng với giá trị `int`.

Sử dụng như sau:

```dart
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
```

> Cảm ơn 1 bạn trong team là Hải nhỏ cho ví dụ với Enum.

## Tóm tắt

Bạn có thể làm được hầu hết các tác vụ với OOP bằng Dart. Đôi khi Dart linh hoạt hơn nhiều sơ với các ngôn ngữ khác, chắc cũng vì sinh sau đẻ muộn.

* Thừa kế trong Dart
* Overriding
* Lớp trừu tượng & thể hiện của nó
* Sử dụng interfaces & sự khác nhau của Extending và Implementing
* Sử dụng Mixin (giao thức)
* Tạo các Extension cho các class

---

Cảm ơn bạn đã theo dõi các bài viết từ **Fx Studio** & hãy truy cập [website](https://fxstudio.dev/) để cập nhật nhiều hơn!
