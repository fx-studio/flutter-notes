# 08 - Nullability

Chào mừng bạn đến với **Fx Studio**. Chúng ta sẽ tiếp tục với ngôn ngữ **Dart**. Chủ đề khám phá lần này là **Nullability**. Cũng là một trong những chủ đề khá hay, khi cho phép bạn tương tác với những trường hợp không có giá trị.

> Bắt đầu thôi!

## Tổng quan

Chúng ta sẽ ngược dòng lịch sử một tí về **Null** trong Dart nhoé.

* **Trước Dart 2.0**
  * Trước phiên bản 2.0, Dart là ngôn ngữ **nullability**. Theo đó, `null` sẽ là kiểu con (subtype) của mọi kiểu. Tức là tất cả các kiểu số nguyên *int*, số thực *double*, danh sách *List*… đều chấp nhận giá trị `null`.
* **Dart 2.0**
  * Từ phiên bản 2.0 thì Dart là ngôn ngữ hỗ trợ **null safety**. Theo đó, kiểu `Null` đã tách ra, không còn là kiểu con của các kiểu khác nữa. Do đó, khi bạn khai báo một biến là *non-nullable* (ví dụ kiểu *int*, kiểu *String*) mà lại gán cho chúng giá trị `null` thì chương trình sẽ báo lỗi.

## Thế nào là `null` ?

Câu hỏi này cũng giống như với kiểu *Optional* trong *Swift* vậy. Do đó, 

> Null có nghĩa là "**không có giá trị**" (no value) hoặc "**không có giá trị**" (absence of a value).

Đó cũng là câu chuyện giữa tồn tại & không tồn tại đối với một một đối tượng. Bạn xem ví dụ như sau:

* Chúng ta có 1 đối tượng User và trong đó có một thuộc tính là `avatar`

```dart
String avatar = "anh.png"
```

* Nhưng việc có ảnh đại diện hay không có ảnh đại diện là tuỳ thuộc vào người dùng quyết định. Nếu không có ảnh đại diện thì bạn có thể gán nó bằng rỗng "".

```dart
String avatar = ""
```

* Tuy nhiên:
  * Đối tượng `avatar` lúc này là đã tồn tại và có giá trị là một String
  * Bạn cũng khó lòng phần biệt giữa việc nó tồn tại và không có giá trị
* Các giải quyết như sau:

```dart
String avatar = null
```

Nhưng mà đó là câu chuyện của Dart trước 2.0. Còn sau 2.0 thì IDE của bạn sẽ báo lỗi là

```
A value of type 'Null' can't be assigned to a variable of type 'String'.
Try changing the type of the variable, or casting the right-hand type to 'String'.
```

Vấn đề tồn tại này ảnh hưởng rất nhiều khi bạn thực thi một chương trình. Nó sẽ dẫn tới việc chết chương trình và ngôn ngữ của bạn sẽ là một ngôn ngữa không an toan. Vì vậy, vấn đề chính mà Dart cần giải quyết là:

> Tách biệt việc tồn tại hay không tồn tại với việc có giá trị hay không có giá trị.

## **Nullable vs. non-nullable types**

Chúng ta sẽ phân biệt kiểu dữ liệu cho phép `null` hoặc không cho phép `null` trước. Tránh những nhập nhèn về sau này.

### Non-nullable

Đối với Dart, các kiểu dữ liệu thì mặc định sẽ là **non-nullable**. Có nghĩa là bạn phải cung cấp giá trị cho nó lúc khai báo và không bao giờ chứa giá trị `null`.

Ví dụ:

```dart
int myInt = 1;
double myDouble = 3.14159265;
bool myBool = true;
String myString = 'Hello, Dart!';
User myUser = User(id: 22, name: 'Fx');
```

Còn nếu bạn cố tình khai báo như avatar ở trên thì sẽ báo lỗi. Và các kiểu dữ liệu khác cũng như vậy nếu bạn cố gắng cho nó bằng `null`.

```dart
int postalCode = null; // error
```

Ngoài ra, bạn còn có một trường hợp là `late`. Đây là cho phép việc trì hoãn cung cấp giá trị cho đối tượng. Chúng ta sẽ tìm hiểu nó sau.

### Nullable

Kiểu **Nullable** là kiểu ngoài chứa giá trị của nó ra thì còn cho phép chứa giá trị `null`. Có nghĩa là nó cho phép việc vắng mặt giá trị.

Cú pháp khai báo thì bạn sẽ thêm dấu `?` và sau kiểu dữ liệu. Xem ví dụ là hiểu liền nhoé!

```dart
int? myInt = null;
double? myDouble = null;
bool? myBool = null;
String? myString = null;
User? myUser = null;
```

Mọi kiểu **non-nullable** trong Dart đều có kiểu **nullable** tương ứng. Thêm dấu `?` vào là cân được hết.

Ngoài ra, với kiểu **nullable** khi khai báo các đối tượng thì bạn không cần cung cấp giá trị ban đầu cho nó. Mặc định nếu sẽ hiểu là đống tượng sẽ có giá trị là `null`. Ví dụ như sau:

```dart
int? age;
double? height;
String? message;

print(age);
print(height);
print(message);
```

Thực thi đoạn code sau và cảm nhận nhoé. Tất cả sẽ là `null`.



Và khi có sự thay đổi mới sẽ dẫn tới nhiều hệ quả kéo theo. Nhất là khi bạn thay đổi những thứ cơ bản trong một ngôn ngữ như từ **Nullability** sang **null safety** của Dart. Chúng ta sẽ tiếp tục tìm hiểu các cách xử lý cho **Nullable**.

## Type promotion

Tụi Dart cũng thông mình lắm, khi trình biên dịch của nó có thể phân tích ra được kiểu dữ liệu & giá trị cho đối tượng. Giúp cho việc phân tích các kiểu **nullable** không chưa giá trị mà lại được bạn sử dụng.

Ví dụ: bạn hãy thực thi đoạn code sau:

```dart
  String? name;
  print(name.length);
```

Kết quả sẽ là error như sau:

```
Error: Property 'length' cannot be accessed on 'String?' because it is potentially null.
```

Fix nó thì cũng khá đơn giản, bạn thêm giá trị phù hợp với kiểu **non-nullable** tương ứng.

```dart
String? name;
name = 'Fx Studio';
print(name.length);
```

Mặc dù là kiểu **nullable**, tuy nhiên Dart có thể thấy đối tượng không `null` sau khi bạn gán trị vào cho nó trước khi bạn sử dụng. Mà không cần phải làm các thủ tục như là `unwrap` để dùng giá trị của đối tượng. Dart làm điều này một cách tự động và gọi là **type promotion**.

> Cũng vì mục tiêu là chương trình sạch đẹp & an toàn hơn mà thôi.

## Null-aware operators

Đã tới phần mệt não rồi nhoé bạn. Để bạn tao thác ổn hơn với non-nullable và nullable. Và chúng sống hoà thuận với nhau trong code của bạn thì Dart cũng cung cấp cho bạn nhiều toán tử nhận biết khả năng `null` của đối tượng.

**Tóm tắt như sau:**

- If-null operator (??)
- Null-aware assignment operator (??=)
- Null-aware access operator (?.)
- Null-aware method invocation operator (?.)
- Null assertion operator (!)
- Null-aware cascade operator (?..)
- Null-aware index operator (?[])
- Null-aware spread operator (...?)

### If-null operator (??)

Đây là toán tử cơ bản đầu tiên giúp bạn nhận biết ra `null` về mặt giá trị của đối tượng. 

Cú pháp như sau:

```dart
object ?? value
```

Nếu như đối tượng là `null` thì sẽ lấy giá trị bên phải dấu `??` . Còn nếu như giá trị đối tượng khác `null` thì sẽ lấy giá trị của đối tượng.

Ví dụ như sau:

```dart
  String? name;
  final text = name ?? 'unknow';
  print(text); //unknow
```

Vì `name` không có giá trị nên sẽ lấy giá trị `unknow` gán vào cho `text` sau khi dùng toán tử `??.`

Và bạn có thể dùng 1 đoạn code sau để thay thế cho `??`

```dart
String text;
if (message == null) {
  text = 'unknow';
} else {
  text = message;
}
```

> Bên Swift chúng ta gọi là `default value` cho optional.

### Null-aware assignment operator (??=)

Ví dụ trên là áp dụng cho 2 đối tượng, khi bạn gán giá trị của một đối tượng này cho một đối tượng khác, trong khi nguy cơ là `null`. Còn với một đối tượng thì sẽ như thế nào.

> Tất nhiên ta cũng là như vậy được hết thôi.

Ví dụ như sau:

```dart
  double? size;
  size = size ?? 20.0;
  print(size);
```

Chạy ngon lành cành đào. Nhưng mà ta sẽ có kiếu rút gọn hơn khi trong đối tượng. Tương tự như `+=` hay `-=` vậy. Và giờ đây ta có là `??=`.

```dart
  double? size;
  //size = size ?? 20.0;
  size ??= 30.0;
  print(size);
```

EZ Game! Không ngờ Dart cũng nghĩ ra được mấy toán tử bá cháy như thế này.

> `??` và `??=` hữu ích cho việc khởi tạo hay bảo vệ về mặt giá trị của đối tượng.

### **Null-aware access operator (?.)**

Toán tử truy cập để nhận biết đổi tượng đang là `null` hay không. Bạn sẽ sử dụng cú pháp là `?.` Nó cũng khác giống như Swift. 

Bạn xem qua ví dụ sau nhoé

```dart
  int? age;
  print(age.isNegative);
```

Kiểu tra một số `int` có là âm hay không. Tuy nhiên, khi bạn sử dụng trực tiếp tên biến như vậy thì sẽ gây ra bug ngay.  Để fix điều này thì bạn hãy dùng thêm toán tử `?.`. Nó sẽ nhận biết được đối tượng lúc này đang là `null` hay không. Khi đó bạn triệu hồi các thuộc tính hay phương thức khác của nó sẽ an toàn hơn

Update lại ví dụ như sau:

```dart
 int? age;
 print(age?.isNegative); //null
```

Kết quả sẽ là `null` nhoé.

Ngoài ra, khi bạn truy cập vào phương thức của chính object thì toán `?.` này cũng rất hữu ích. Giúp bạn ngăn chặn đi nhiều lỗi phát sinh khi giá trị trả về là `null`. Xem ví dụ nha.

```dart
  int? age;
  print(age?.toString());
```

> Toán tử `?.` áp dụng cho việc truy cập của object. Đảm bảo về mặt hành động và xử lý của chương trình. Tránh gây crash.

### Null assertion operator (!)

Toán tử `!` này của Dart thì giông như toán tử `!` trong Swift. Và được gọi là **Implicitly Unwrapping**. 

> Được xem là một trong những toán tử nguy hiểm bật nhất.

Bạn có thấy trực tiếp giá trụ của biến **nullable**. Mà không thông qua kiểm tra hay sử dụng giá trị thay thế nào hết. Và bạn thông báo với Dart rằng:

> Bố máy thích thế!

Và Dart sẽ bỏ qua việc kiểm tra lúc biên dịch chương trình vào không cảnh báo gì hết. Nếu trúng trường hợp giá trị của biến là `null` thì rất có thể gây ra crash. 

Chúng ta xem qua ví dụ nhoé:

```dart
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
```

Ta có một hàm kiểm tra độ dài của một String và mở rộng nếu String là `null` thì sẽ trả về là `null`. Tức không xác định được. Ta thử sử dụng hàm này như sau:

```dart
bool isOkay = checkString('Fx Studio');
```

Rất là nhanh, chúng ta nhận được lỗi rồi. Vì `bool` không thể gán bằng một kiểu là `bool?`. Fix lại bằng toán tử `!` như sau:

```dart
  bool isOkay = checkString('Fx Studio')!;
  print(isOkay);
```

Hoặc bạn có thể fix bằng cách ép kiểu (casting type). Xem ví dụ nha:

```dart
bool isOkay = checkString('Fx Studio') as bool;
```

Tuy nhiên, nếu bạn truyền tham số là `null` thì cho dù cách nào cũng sẽ bị chết chương trình hết. Do đó, bạn phải dùng tới toán tử `??` để kiểm tra và gán giá trị khác nếu `null` xảy ra. Ví dụ như sau:

```dart
bool isOkay = checkString(null) ?? false;
```

### Null-aware cascade operator (?..)

Đây là một sự kết hợp của toán tử cascade ở bài trước với toán tử `?`. Tạo thành `?..`. Giúp bạn làm mọi thứ gọn hơn khi có một đối tượng là `null`, nhưng lại thích xét nhiều giá trị cho thuộc tính của nó.

Chúng ta lấy một ví dụ từ bài Class nhoé. Ta có 1 lớp như sau:

```dart
class User {
  User(this.id, this.name);

  int id;
  String name;
}
```

Và bạn khai báo một đối tượng là nullable từ lớp đó như sau:

```dart
  User? user;
  
  user?.id = 23;
  user?.name = 'Fx Studio';

  user
    ?..id = 24
    ..name = 'Fx Studio 2';
```

Trong đó:

* Lợi thế của nullable là bạn không cần gán hay khởi tạo gì cho đối tượng hết.
* Ta có 2 cách xét giá trị cho đối tượng
  * Với cách 1 thì như bình thường, nhưng với toán tử `?.` để truy cập vào các thuộc tính.
  * Với cách 2 thì dùng toán tử `?..` để rút gọn các bước.

Tuy nhiên, nếu bạn sử dụng `user` này thì sẽ gặp toàn là `null`. Vì bản thân `user` chưa được khởi tạo và không tồn tại. Toán tử `?..` giúp bạn gán nhiều thuộc tính và giống như `?.` giúp bạn truy cập an toàn hơn.

Ví dụ:

```dart
  print(user?.id);
  String? lengthString = user?.name.length.toString();
  print(lengthString);
```

Bạn tự chiêm nghiệm kết quả nhoé.

### Null-aware index operator (?[])

Toán tử `?[]` dùng để truy cập vào các phân tử trong một danh sách `List` nếu danh sách đó là **nullable**. Để đảm bảo cho danh sách chúng ta không gây ra lỗi cho chương trình.

Ví dụ nhanh thôi, vì chúng ta chưa học qua bài List nhoé.

```dart
  List<int>? myList = [1, 2, 3, 4];
  print(myList[3]);
```

Mọi thứ hoạt động tốt cho dùng **nullable** hay **non-nullable**, vì Dart đã sử dụng **Type Promotion** rồi. Khi bạn gán một giá trị cho danh sách **nullable** (`List<int>?`). Còn nếu như thế này sẽ toang cả bầy.

```dart
  myList = null;
  print(myList[3]);
```

Chương trình sẽ báo lỗi và bạn cần thêm vào dấu `?` trước khi truy cập vào từng phần tử trong danh sách.

```dart
  myList = null;
  print(myList?[3]);
```

Cũng không khó mấy phải không nào.

### Null-aware spread operator (...?)

> Sẽ tìm hiểu ở bài sau nhoé bạn. Nó dùng để mở rộng một collection trong một collection.

## Nullable instance variables

Chúng ta tiếp tục tìm hiểu về nullable trong các thuộc tính của một lớp. Trước tiên, bạn xem lại ví dụ khai báo một lớp ở bài viết trước nhoé. 

> Nguyên tắc chính trong Dart và cũng như khai báo lớp thì tất cả các thuộc tính phải được cung cấp giá trị khởi tạo ban đầu. Bạn sẽ có rất nhiều cách để cung cấp giá trị cho chúng.

### Class non-nullable fields

Tóm tắt, khi khai báo một class đảm bảo tất cả các thuộc tính đều `non-nullable` nhoé.

1. Bắt đầu khai báo

```dart
class User {
  String name;
}
```

2. Cung cấp giá trị cho thuộc tính

```dart
class User {
  String name = 'anonymous';
}
```

3. Sử dụng hàm khởi tạo

```dart
class User {
  User(this.name);
  String name;
}
```

4. Sử dụng initializer list cho private properties

```dart
class User {
  User(String name)
    : _name = name;
  String _name;
}
```

5. Default value cho hàm khởi tạo theo 2 cách

```dart
class User {
  User([this.name = 'anonymous']);
  String name;
}

// or

class User {
  User({this.name = 'anonymous'});
  String name;
}
```

6. Yêu cầu có named parameters cho hàm khởi tạo

```dart
class User {
  User({required this.name});
  String name;
}
```

### Class nullable fields

Còn với lớp có các thuộc tính có thể là nullable thì sẽ như thế nào. Đơn giản là nó sẽ có các thuộc tính là nullable mà thôi. Xem ví dụ lại với lớp User nhoé.

```dart
class User {
  User({this.name});
  String? name;
}
```

Và chúng ta sẽ có một số rắc rối đi theo từ việc các thuộc tính có thể là nullable nhoé. Từ từ tìm hiểu thêm nào.

### **No promotion for non-local variables**

Dart sẽ không áp dụng được Type Promotion cho các biến cục bộ trong một đối tượng. Để dễ hiểu hơn chúng ta sẽ lấy ví dụ sau:

```dart
bool isLong(String? text) {
  if (text == null) {
    return false;
  }
  return text.length > 100;
}
```

Khi bạn thực thi thì sẽ không có vấn đề gì xảy ra. Vì ta đã làm công tác kiểm tra ngay ở trên với `if (text == null)` rồi. Do đó việc `return text.length` thì không có lỗi. Chương trình biết chúng đã an toàn. 

Nhưng khi bạn đặt function này vào trong một lớp thì sẽ ra sao:

```dart
class TextWidget {
  String? text;
  bool isLong() {
    if (text == null) {
      return false;
    }
    return text.length > 100; // error
  }
}
```

Tất nhiên là lỗi sẽ xãy ra, vì nguyên nhân như đã trình bày ở trên. Dart không thể điều chỉnh sang kiểu dữ liệu khác cho dù là **non-nullable** đối với biến cục bộ. Bạn có thể fix lại như sau:

```dart
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
```

Kĩ thuật này được gọi là **shadowing** (nhắc lại) biến bằng một biến khác. Bạn sẽ thấy ta tạo ra biến `final text` để tương tác. 

## The late keyword

Từ khoá `late` thì giống như `lazy` trong Swift. Trì hoãn việc cung cấp giá trị lúc khởi tạo thuộc tính trong lớp, khi các giá trị và thuộc tính toàn bộ là **non-nullable**.

Có rất nhiều trường hợp mà bạn cần sử dụng tới `late` này. Ví dụ khởi tạo các tác vụ nặng như: camera, database ... nếu mọi thứ đều xảy ra đồng thời thì nguy cơ crash chương trình rất lớn. Hoặc khi dữ liệu của bạn cần phải tính toán lại trước khi gán vào. Hoặc nhiều biến được tạo nhưng mà trong một số trường hợp nhất định nó lại không được sử dụng, gây ra lãng phí bộ nhớ...

> Nguyên tắc chính của `late` là nó chỉ khởi tạo nó khi bạn truy cập nó lần đầu tiên.

Xem ví dụ nhoé:

```dart
class User {
  User(this.id, this.name);

  int id;
  String name;
  
  late final int _secretNumber = _calculateSecret();

  int _calculateSecret() {
    return name.length + 42;
  }
}
```

Trong đó, thuộc tính `_secretNumber` chỉ có được giá trị sau khi `name` được gán gì trị trước. Do đó, cần sử dụng `late` cho nó.

Còn với `final late` thì sẽ khởi tạo 1 lần và giá trị sẽ không thay đổi.

### Chú ý

Mặc dù chúng ta trì hoãn việc cung cấp giá trị nhưng không đảm bảo cho bạn việc có cung cấp giá trị trước khi sử dụng hay không. Mấu chốt chính là việc bạn sử dụng thuộc tính trong khi nó lại chờ giá trị từ bạn.

Xem ví dụ nhoé:

```dart
class User {
  late String name;
}

final user = User();
print(user.name);
```

Vẫn chết như thường đó nha. Nên bạn cần chú ý kĩ `late` khi sử dụng. Tránh các trường hợp không được cung cấp gía trị mà đã đem vào sử dụng rồi.

> Có thể hiểu là chúng ta phải khởi tạo giá trị cho chúng. Nhưng việc khởi tạo sẽ bị trì hoãn lại cho tới lúc chúng ta dùng nó lần đầu tiên. Trong Dart cho phép bạn không cần cung cấp giá trị nếu có `late`, và đó là cách bạn tạo **nghiệp**.

## Tóm tắt

* Bạn biết về 2 khái niệm **nullability** và **null safety** trong Dart
* Khái niệm về **null**
* Các kiểu dữ liệu **non-nullable** và **nullable** trong Dart
* Các toán tử cho các kiểu dữ liệu **nullable**
* Sử dụng `late` trong khởi tạo các thuộc tính của lớp

---

Cảm ơn bạn đã theo dõi các bài viết từ **Fx Studio** & hãy truy cập [website](https://fxstudio.dev/) để cập nhật nhiều hơn!



















