# 07 - Class

Chào mừng bạn đến với Fx Studio. Chúng ta sẽ tiếp tục chuyến thăm quan ngôn ngữ lập trình Dart. Bài viết này sẽ nói về **Class** trong Dart. Một trong nhưng phần quan trọng nhất khi bạn bắt tay tìm hiểu về một ngôn ngữ lập trình.

> Bắt đầu thôi!

## Dart Class

Ngôn ngữ lập trình **Dart** là một ngôn ngữ lập trình hướng đối tượng. Do đó các **Class** là một trong những thành phần chính cấu tạo nên chúng. Điểm đặc biệt trong Dart thì tất cả các đối tượng đều được xây dựng từ các Class. Bao gồm cả các đối tượng cơ bản như: *int, double, String ...* 

> Nếu bạn nhớ là thì với kiểu dữ liệu `Object` là chúa trong ngôn ngữ lập trình Dart này rồi.

Các Class là thành phần chính tạo nên hướng đối tượng, chúng đều có các thuộc tính & phương thức để cấu hình nên một đối thượng. Và với Class trong Dart cũng như vậy.

Để hiểu một cách đơn giản nhất

* Thuộc tính chính là các biến/hằng mà chúng ta được học
* Phương thức chính là các function của chúng ta

Cả hai đều được bọc trong một khai báo Class. Và thể hiện của Class thì sẽ gọi là các đối tượng.

> Chúng ta sẽ bắt đầu tìm hiểu về Class trong Dart qua các phần dưới đây.

## Define class

> Sử dụng từ khoá `class` để bắt đầu khai báo một Class trong Dart. 

Chúng ta cũng sẽ mượn một ví dụ tạo một lớp có tên là `User` trong đó có 2 thuộc tính `id` và `name`. Xem có ví dụ sau:

```dart
class User {
  int id = 0;
  String name = '';
}
```

Trong đó, ta cung cấp luôn giá trị ban đầu cho các thuộc tính. Bạn có thể để chúng nó bằng `null` cũng không sao. Và  lớp cơ bản này chúng ta chưa có các phương thức nào hết. Nhưng không sao, chúng ta sẽ tìm hiểu nó sau.

## Creating an Object

Sau khi, bạn đã có được một lớp rồi. Công việc tiếp theo chính là sử dụng lớp đó và tạo đối tượng từ lớp.

Dành cho các bạn còn khá mông lung trong các cách gọi tên đối tượng sinh ra từ class. Thì ta có thể gọi bằng các tên sau:

* **Tiếng Việt**: đối tượng, thể hiện
* **Tiếng Anh**: object, instance

> Cái này vui thôi, chủ yếu là bạn hiểu được là ổn rồi.

Theo ví dụ trên, ta sẽ có cách đơn giản nhất tạo ra một đối tượng từ class thì như sau:

```dart
   final user = User();
```

Trong đó:

* `user` là tên của đối tượng
* `User` là tên của lớp
* `User()` là gọi hàm khởi tạo của lớp

Một đối tượng sẽ được sinh ra khi bạn dùng lớp đó & triệu hồi hàm khởi tạo (constructor method) của nó. Kết quả trả về chính là đối tượng từ lớp đó.

> Long time ago!

Trước đây, việc tạo đối tượng thì khác một chút, bạn sẽ sử dụng từ khoá `new`. Xem ví dụ như sau:

```dart
final user = new User();
```

Bạn cũng không cần quá lo lắng vì 2 cách đều như nhau, chỉ là người ta thấy `new` dài dòng quá nên lượt bỏ bớt thôi.

## Assigning values to properties

Bạn đã có được đối tượng rồi và nó sẽ có ý nghĩa khi bạn có thể sử dụng được nó. Mà sử dụng nó thì thông qua các các thuộc tính của nó. Vì

> Class là một kiểu dữ liệu custom và cấu trúc dữ liệu phức tạp, khi bạn không thể dùng các kiểu dữ liệu cơ bản (như: int, double, string ...) để diễn dạt hết logic và cấu trúc dữ liệu mong muốn.

Nói về thuộc tính, công việc của nó chính là `lưu trữ dữ liệu` cho đối tượng. Do đó, việc thay đổi giá trị sẽ là gán giá trị mới cho thuộc tính. Còn việc tao tác với các thuộc tính thì bạn sử dụng chính đối tượng và dùng dấu `.` để triệu hồi các thuộc tính mà bạn muốn thay đổi.

```dart
<object>.<property> = <value>
```

Xem ví dụ nhoé!

```dart
  final user = User();
  user.id = 22;
  user.name = 'Fx Studio';
```

Cũng không có gì là khó hĩ, vẫn là hình bóng quen thuộc qua biết bao ngôn ngữ lập trình.

## **Printing an object**

Bạn thử xem nếu thực thi dòng lệnh này thì sẽ hiển thị như thế nào.

```dart
print(user);
```

Bạn sẽ nhận được kết quả như sau:

```
Instance of 'User'
```

Chỉ đơn giản vậy thôi. Chỉ cho bạn biết đó là một thể hiện của lớp User. Còn nếu bạn kì vọng vào việc hiển thị đầy đủ thông tin thì còn một cách như sau:

```dart
  @override
  String toString() {
    return 'User(id: $id, name: $name)';
  }
```

Trong tất cả các lớp của Dart đều hỗ trợ phương thức `toString()`. Công việc của chỉ là định nghĩa lại hàm `toString()` và thêm vào cách dữ liệu hay điều gì mà bạn muốn nhắn gới.

Chúng ta giữ nguyên lệnh `print(user);` ở trên và chạy lại chương trình. Kết quả sẽ hiển thị như sau:

```
User(id: 22, name: Fx Studio)
```

> Nhức nách phải không nào!

Khi gặp **print** đối tượng thì tự động triệu hồi phương thức `toString()`.

## **Adding methods**

Trong ví dụ trên là chúng ta thực hiện ghi đè `override` một phương thức trong lớp. Chúng ta sẽ thêm các phương thức của riêng mình vào nhoé.

### Create a method

Việc thêm một phương thức (method) cũng giống việc định nghĩa một function như trước đây. Có khác là bạn sẽ phải định nghĩa function đó trong phạm vi của lớp.

Xem ví dụ nhoé!

```dart
class User {
  
  //...

  void hello() {
    print('Hello, I am $name.');
  }
}
```

Cũng không có gì khó hiểu ở ví dụ, ta sẽ có phương thức `hello` cho User. Và cách gọi thực thi phương thức thì như sau.

```dart
user.hello();
```

Vẫn là dấu `.` huyền thoại để triệu hồi một phương thức từ đối tượng.

### **JSON serialization method**

Ở ví dụ `print` một đối tượng. Thì về bản chất chúng ta gọi hàm `toString()` và chúng được xem là một **serialization method** hay còn gọi là hàm chuyển đổi kiểu dữ liệu. Ta có từ đối tượng thành String.

Chúng ta sẽ còn rất nhiều kiểu chuyển đổi sang các kiểu dữ liệu khac nữa. Trong đó, một trong những kiểu ta cần quan tâm là JSON.

> Vì bạn sẽ cần tới nó rất nhiều sau này.

Xem ví dụ nhoé!

```dart
  String toJson() {
    return '{"id":$id,"name":"$name"}';
  }
```

Trong đó:

* `toJson()` là một phương thức riêng của chúng ta cho User
* Không có gì khó trong này, bạn chỉ cần sử dụng giá trị của các thuộc tính và ném nó vào 1 chuổi.
* Áp dụng các định dạng của JSON cho chuỗi trả về trong `return`

Còn sử dụng thì như thế này thôi.

```dart
print(user.toJson());
```

Ở các bài viết sau chúng ta sẽ dùng JSON cho `Map` trong Dart. Khá hay đó!

> Chờ đi nhoé!

## Cascade notation

Cascade notation là một cú pháp khá là vui của Dart. Bạn sẽ sử dụng `..` để gọi các thuộc tính sau khi khởi tạo đối tượng. Nó sẽ xâu chuỗi lại các bước thực hiện trên cùng một đối tượng.

Xem ví dụ để dễ hình dùng nào:

* Trước

```dart
  final user = User();
  user.id = 22;
  user.name = 'Fx Studio';
```

* Sau

```dart
  final user = User()
    ..id = 23
    ..name = 'Fx Studio2';
```

Trong đó:

* đối tượng `user` bị lượt bỏ đi và thay bằng dấu `..`
* dấu `;` chỉ dùng ở dòng cuối cùng để kết thúc chuỗi các câu lệnh

## **Constructors**

**Constructors** là một trong nhưng phương thức đặc biệt của lớp trong Dart hay bất cứ ngôn ngữ lập trình nào. Chúng dùng để tạo nên một đối tượng mới. Đặc điểm chung:

* Có tên chính là tên của lớp
* Kiểu giá trị trả về cũng chính là lớp đó

Ta sẽ nhiều hàm **Constructors** trong một class. Bao gồm:

### Default Constructors

Đây là hàm **Constructors** mà hệ thông cung cấp cho bạn. Cho dùng bạn có muốn hay không muốn thì nó vẫn ở đó và vẫn tồn tại.

Xem ví dụ nha:

```dart
class Dog {
  var name = '';
}
```

Đây là khai báo 1 lớp bình thường và nó sẽ ẩn chứa hàm khởi tạo như sau:

```dart
class Dog {
  Dog();
  var name = '';
}
```

Thì `Dog();` là hàm khởi tạo mặc định của lớp Dog. Ta có:

* Không có kiểu giá trị trả về ở khai báo, tuy nhiên nó sẽ trả về chính kiểu dữ liệu của class
* Tên hàm trùng với tên lớp

### **Custom constructors**

Khi bạn muốn khởi tạo một đối tượng và có sẵn các thông tin cho đối tượng mới thì bạn sẽ phải tạo ra riêng cho mình những hàm khởi tạo.

> Các hàm khởi tạo kiểu này được gọi là **generative constructor**.

Về quy tắt viết thì cũng giống với việc bạn viết các hàm khởi tạo mặc định. Tuy nhiên, bạn sẽ có thêm các tham số tuỳ chọn của riêng bạn.

Và Dart cung cấp cho chúng ta 2 kiểu viết hàm khởi tạo mới này:

#### Long-form

Với kiểu đầy đủ, thì Dart cũng giống như các ngôn ngữ khác và giống như cách viết khác khi bạn khai báo một function bất kì. Xem ví dụ với class User nhoé.

```dart
class User {
  User(int id, String name) {
    this.id = id;
    this.name = name;
  }
  
  // ...
  
}
```

Với từ khoá `this` dùng để chỉ ra phạm vi của các biến và các thuộc tính của lớp. Còn lại, bạn chỉ cần gán các giá trị cần thiết cho các thuộc tính mà thôi.

Cách sử dụng như sau:

```dart
  final user3 = User(24, 'Fx Studio 3');
  print(user3);
```

Khi bạn đã có một hàm khởi tạo của riêng mình rồi, thì hàm khởi tạo mặc định sẽ không còn được sử dụng được nữa. Do đó, bạn sẽ cập nhật lại các đối tượng đã được khai báo ở trên nhoé.

#### Short-form

Dart cung cấp cho bạn một dạng rút ngọn hơn của hàm khởi tạo. Đó là:

* Không có body cho hàm khởi tạo
* Liệt kê các thuộc tính với từ khoá `this` ở trước
* Các đối số gởi vào lần lượt sẽ tương ứng với thứ tự các thuộc tính

Viết lại ví dụ trên của hàm khởi tạo lớp User nhoé.

```dart
User(this.id, this.name);
```

Bạn sẽ thay thế cho hàm khởi tạo ở trên nhoé. Nếu không thì lỗi nhiều đó.

> Khi bạn đã có các hàm khởi tạo và cung cấp đầy đủ giá trị cho các thuộc tính. Thì bạn hãy xoá đi các giá trị ban đầu gán cho các thuộc tính trong lớp đi nhoé.

## **Named constructors**

Dart còn hỗ trợ cho bạn các phương thức khởi tạo đối tượng (**generative constructor**) khác. Được gọi là **named constructor**. Bằng cách bạn thêm tên lớp vào trước. Ví dụ như sau:

```
 ClassName.identifierName()
```

Để tổng hợp một chút cho bạn dễ nhớ, chúng ta có 2 loại hàm khởi tạo (**generative constructor**):

1. Loại không định danh. Dùng chính tên lớp. Là các hàm constructor truyền thống
2. Loại có định danh. Dùng tên lớp làm tiền tố

Nó sinh ra chỉ vì bạn 

> THÍCH thôi!

Tuỳ thuộc, logic của bạn sẽ triển khai như thế nào nữa. Ví dụ, lớp User của chúng ta sẽ thêm một hàm khởi tạo để tạo ra 1 đối tượng User gọi là ẩn danh. Code ví dụ như sau:

```dart
User.anonymous() {
  id = 0;
  name = 'anonymous';
}
```

Các sử dụng thì bạn hãy gọi tới chính hàm khởi tạo định danh này.

```dart
  final anonymousUser = User.anonymous();
  print(anonymousUser);
```

## **Forwarding constructors**

Tụi Dart này thích chơi chữ ghê, để dễ hiểu thì chúng nó tương tự với:

> ***Convenience initializers*** trong Swift.

Đôi khi bạn chỉ cần thay đổi 1 thuộc tính theo ý mình, các phần còn lại thì giữ nguyên. Nhưng bạn phải tạo code lại từ đầu. Dẫn tới khá là dư thừa code.

Ví dụ: với `User.anonymous()` thì bạn sẽ phải gán lại `id` & `name`. Trong khi bạn đã có hàm khởi tạo đầy đủ với `id` & `name` rồi. Công việc sẽ one hơn từ hàm khởi tạo định danh, bạn gọi tới hàm khởi tạo không dịnh danh kia.

> Dart sẽ gọi nó là **forwarding** hay **redirecting**.

Xem ví dụ nhoé

```dart
User.anonymous() : this(0, 'anonymous');
```

Trong đó:

* `User.anonymous()` là hàm khởi tạo có định danh
* Dấu `:` là báo sự chuyển tiếp
* `this` chính class này gọi tới hàm khởi tạo không định danh
* Bỏ qua `body` của hàm khởi tạo

Run lại chương trình và cảm nhận kết quả nhoé!

## **Optional and named parameters**

Phần này, chúng ta đã được tìm hiểu ở bài Functions. Giờ thì, ta sẽ áp dụng nó vào để cho việc khởi tạo rõ nghĩa hơn.

Như các ví dụ trên:

```dart
final user3 = User(24, 'Fx Studio 3');
```

Ta sẽ không thể biết `24` là đối số cho tham số nào, hay `Fx Studio 3` cũng vậy. Nếu chúng nó có 1 cái tên hỗ trợ thêm thì nhức nách luôn. 

> Bắt tay vào việc rồi!

Hồi tưởng lại quá khứ một chút với việc có tên tham số trong lời gọi hàm thì ta sẽ có 2 cách:

* Đặt vào 2 dấu `[]`. Có thể cho phép tham số `null`
* Đặt vào 2 dấu `{}`. Có thể cho phép tham số có `default value`

Từ đó, ta sẽ hợp nhất 2 hàm khởi tạo của lớp User như sau:

* Hàm khởi tạo không định danh sẽ có các giá trị mặc định. Để có thể khởi tạo 1 đối tượng mà không cần nhập các giá trị cho tham số.
* Hợp nhất 2 hàm khởi tạo có định danh và không có định danh

Ví dụ code sẽ như sau:

```dart
  User({this.id = 0, this.name = 'anonymous'});

  User.anonymous() : this();
```

Trong đó:

* Hàm khởi tạo không định danh sẽ kết hợp `{}` để tạo ra tên cho các tham số & có giá trị mặc định ban đầu.
* Hàm khởi tạo có định danh sẽ chuyển tiếp sang hàm khởi tạo không định danh. Và không cần truyền tham số nào hết.

Cách sử dụng mới như sau:

```dart
final user = User(id: 22, name: 'Fx');
```

Bạn đã thấy xuất hiện 2 tên tham số trong lời gọi hàm chưa. Mọi việc sẽ rõ ràng hơn nhiều với nó.

Chúng ta cùng nhau xem lại code cho lớp User qua 7749 là edit nhoé!

```dart
class User {
  // unnamed constructor
  User({this.id = 0, this.name = 'anonymous'});
  // named constructor
  User.anonymous() : this();
  int id;
  String name;
  // ...
}
```

## **Initializer lists**

Mặc dù chúng ta đã làm cho lớp của chúng ta khá là đẹp rồi. Tuy nhiên, vẫn còn rất nhiều vấn đề cần để tối ưu lớp. Chúng ta sẽ bắt đầu thôi.

### **Private variables**

Đâu tiên, bạn sẽ biến các thuộc tính của lớp từ `public` thành `private`. Đó sẽ đảm bảo tính bao đóng của hướng đối tượng. Và Dart sẽ hỗ trợ việc này cho bạn bằng từ khoá `_`, cho các thuộc tính của chúng ta.

Xem ví dụ nhoé!

```dart
User {

	// ...
	
	int _id;
  String _name;
  
  // ...

}
```

Đơn giản như vậy thôi. Bạn không cần tới từ khoá `private`. Nhiều bạn dev iOS chắc không biết.

> Đây là hồi ức của **Objective-C** trở về.

Khi bạn có một cái tên mới cho property thì bạn cũng phải thay đổi lại các tên tham số ở hàm khởi tạo cho đồng bộ.

```dart
User({this._id = 0, this._name = 'anonymous'});
```

### Initializer list

Nhưng mà có gì đó sai sai, vì Dart sẽ hiểu tên của tham số là `_id` chứ không phải là `id` như ban đầu. Ta sẽ chỉnh sửa lại ví dụ trên như sau:

```dart
  User({id = 0, name = 'anonymous'})
      : _id = id,
        _name = name;
```

Trong đó:

* Hàm khởi tạo sẽ bỏ đi `this` vì lúc này `id` & `name` không còn là thuộc tính của lớp nữa rồi
* Dấu `:` sẽ đặt trước danh sách các thuộc tính private
* Việc gán lại giá trị cho các thuộc tính private sẽ thực hiện và chúng cách nhau bởi dấu `,`

> Công việc làm với dấu `:` đó ở hàm khởi tạo, sẽ được gọi là **initializer list**.

Và initializer list, sẽ được thực hiện trước `body` của hàm, hoặc có thể bỏ qua `body` nếu bạn thấy không cần thiết. Ví dụ:

```dart
User({int id = 0, String name = 'anonymous'})
    : _id = id,
      _name = name {
  print('User name is $_name');
}
```

Như vậy, bạn đã có tiếp một hàm khởi tạo xịn sò và các tham số riêng tư rồi. Ngoài ra có điều cần lưu ý:

> Nếu trọng nội bộ 1 file Dart thì bạn vẫn có thể triệu hồi đc các thuộc tính riêng tư này từ đối tượng. Muốn tối ưu thì hãy tạo một file riêng cho lớp nhoé.

### **Checking for errors**

Chúng ta chỉ hạn chế sai sót ở mặc logic. Tuy nhiên, về mặt dữ liệu thì chúng ta không đoán được. Do đó, việc kiểm tra tiếp giá trị các đối số có phù hợp với yêu cầu bài toán hay không thì cũng rất quan trọng. Giảm tải đi rất nhiều sai sót hay logic để chống và bắt.

Ví dụ kinh điển với phân số, khi bạn nhập mẫu số bằng `0`. Thì phân số đó không có ý nghĩa. Nếu đã không có ý nghĩa rồi thì việc gì chúng ta lại cho đối tượng đó sinh ra. Tốt nhất là triệt tiêu chúng ngay trong trứng nước.

Từ đó, ta sẽ thêm các điều kiện tại `initializer list` ở hàm khởi tạo. Nhằm để loại trừ các giá trị không cần thiết nhoé. Xem tiếp ví dụ:

```dart
  User({id = 0, name = 'anonymous'})
      : assert(id >= 0),
        assert(name.isNotEmpty),
        _id = id,
        _name = name;
```

Trong đó:

* Bạn sử dụng thêm câu lệnh `assert()` để kiểm tra điều kiện. Nếu sai thì kết thúc luôn hàm khởi tạo.
* Các điều kiện kiểm tra là `id` phải không âm. Và `name` phải không rỗng

> Câu lệnh `assert()` dùng để kiểm tra một điều kiện nào đó. Giá trị trả về là `bool`.

Ví dụ bạn khởi tạo một đối tượng sau:

```dart
final jb = User(id: -1, name: 'Ahihi');
```

Khi bấm `debug` thì sẽ nhận ngay dòng lỗi này. Và nó sẽ chỉ ra tại vị trí nào lỗi luôn.

```
Exception has occurred.
_AssertionError ('file:...': Failed assertion: line 43 pos 16: 'id >= 0': is not true.)
```

## **Constant constructors**

Chúng ta lại tiếp tục tối ưu tiếp các lơp của chúng ta. Chúng ta sẽ là cho cách đối tượng của chúng ta sẽ là bất khả xâm phạm và không thay đổi được giá trị (**immutable**).

### **Properties immutable**

Bạn có 2 các để biến đổi một thuộc tính bình thường thành một thuộc tính không thể thay đổi được giá trị. Đó là 2 từ khoá `const` & `final`. Với trường hợp lớp, chúng ta chưa xác định được giá trị của các thuộc tính ban đầu, nó chỉ được cấp giá trị lúc run-time nên sẽ lựa chọn là `final`.

Ví dụ nhoé:

```dart
final String _name;
final int _id;
```

Như vậy là xong, từ thuộc tính bình thường trở thành thuộc tính không thể thay đổi giá trị được. Chúng sẽ được cấp giá trị khởi tạo lần đầu tiên và sau đó thì sẽ trở thành một hằng số.

### **Classes immutable**

Khi bạn mệt mỏi với biến từng thuộc tính trở thành hằng số, thì tại sao không suy nghĩ việc tạo ra luôn một đối tượng là hằng số. Và đối tượng ta tạo ra sẽ không bị thay đổi được.

Ta sẽ áp dụng từ khoá `const` cho 2 hàm khởi tạo của lớp User. Code ví dụ như sau:

````dart
const User({int id = 0, String name = 'anonymous'})
    : assert(id >= 0),
      _id = id,
      _name = name;
      
const User.anonymous() : this();
````

Ta phải loại bỏ đi `name.isNotEmpty` vì chúng thực hiện lúc run-time. Và chúng ta sẽ có các đối tượng được tạo ra như sau:

```dart
const user = User(id: 22, name: 'Fx');

const anonymousUser = User.anonymous();
```

> Thực sự thì cũng chưa hiểu ý nghĩa hay mục đích cho công việc này lắm. Chắc thời gian sẽ dần trả lời chúng ta thôi. À, mà có người nói khi bạn qua Flutter thì sẽ dùng nó rất nhiều cho widgets đó à.

## **Factory constructors**

Chúng ta đã tương tác với các loại **generative constructors** rồi. Bây giờ chúng ta sẽ sang một loại mới với tên là **factory constructor**. Dễ hiểu thì như sau:

> factory constructor = static function + constructor

Với **factory constructor**, chúng ta sẽ linh hoạt hơn nhiều so với **generative constructors**. Các generative constructors không chỉ trả vè các đối tưởng của lớp đó, mà còn có thể trả về các đối tượng của lớp con của nó. Hoặc khi bạn có thể tạo từ những kiểu dữ liệu khác nhau.

### Syntax

Cú pháp đơn giản là bạn sử dụng từ khoá `factory` trước một hàm khởi tạo định danh. Là bạn có một **factory constructor** rồi.

Ví dụ nhoé:

````dart
  factory User.fx() {
    return User(id: 99, name: 'Fx');
  }
````

Trong đó:

* `User.fx()` là một hàm khởi tạo định danh và kèm theo từ khoá `factory`
* Thay vì chuyển tiếp khởi tạo, chúng ta sẽ `return` về đối tượng User. Đây là ý nghĩa chính.

### fromJson

Chúng ta sẽ làm 1 ví dụ để có 1 **factory constructor** làm nhiệm vụ biến đổi JSON thành User. Code tham khảo như sau:

```dart
factory User.fromJson(Map<String, Object> json) {
  final userId = json['id'] as int;
  final userName = json['name'] as String;
  return User(id: userId, name: userName);
}
```

Trong đó:

* Kiểu `Map` tương tự Dictionary trong Swift
* Bạn sẽ lấy các giá trị ra theo `key`
* Tạo một đối tượng User mới từ chúng

Sử dụng như sau:

```dart
  final map = {'id': 10, 'name': 'Naruto'};
  final naruto = User.fromJson(map);
  print(naruto);
```

> Về **Map** là gì thì chúng ta sẽ tìm hiểu ở một phần khác nhoé.

Hoặc ta có thể một hàm khởi tạo định danh bình thường như sau mà cũng sinh ra một đối tượng từ JSON.

```dart
  User.fromJson(Map<String, Object> json)
      : _id = json['id'] as int,
        _name = json['name'] as String;
```

Nhưng mà bạn không nên dùng kiểu này, với **factory** thì có lợi thế hơn **constructor** là bạn có thể kiểm tra nhiều giá trị hay nhiều kiểu hơn khi tạo một đối tượng. Ví dụ như tồn tại hay không. Đó là lợi điểm của **factory** mang lại.

## Tạm kết

Đúng là toàn tư về Class trong Dart, tuy nhiên chúng mới là một nữa câu chuyện mà thôi. Bạn sẽ còn gặp lại chúng trong phần hướng đối tượng. Khi chúng ta tiếp tục khám phá thêm các tính chất khác của các Class trong Dart và lập trình hướng đối tượng.

---

Cảm ơn bạn đã theo dõi các bài viết từ **Fx Studio** & hãy truy cập [website](https://fxstudio.dev/) để cập nhật nhiều hơn!













