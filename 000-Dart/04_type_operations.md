# 04 - Type & Operations

Chúng ta tìm hiểu về các kiểu dữ liệu của Dart, bên cạnh đó là các toán tử liên quan.

## Data Types

Về kiểu dữ liệu trong Dart thì cũng được xem là khá phong phú. Không kém các bạn ngôn ngữ lập trình đồng trăng lứa của mình. Và chúng ta sẽ tìm hiểu một số kiểu đặc trưng nhoé.

> Về cội nguồn thì sẽ là `Object type` và ta sẽ dùng từ `type` để nói về kiểu dữ liệu nói chung.

### **Type inference**

Trong phần trước, bạn đã tìm hiểu sơ qua kiểu nội suy này rồi. Và chúng ta sẽ đi vào chi tiết nhiều hơn một tí nha.

#### **Annotating variables explicitly**

Điều này có nghĩa là Dart khuyên bạn hãy nên khai báo càng chi tiết càng tốt về kiểu dữ liệu cho một biết. Trong các phần mềm IDE sẽ báo là cần chú thích kiểu rõ hơn.

```dart
int myInteger = 10;
double myDouble = 3.14;
```

Khi khai báo cụ thể như vậy thì không có gì phải vướng bận hết. Ai cũng biết bố nó là ai rồi.

#### **Creating constant variables**

Ở phần trước, mình đã nói khái niệm này hơi buồn cười rồi.

> Hằng số  = Biến số với giá trị không đổi

Vẫn giữ cách khai báo như trên, bạn chỉ cần thêm từ khoá `const` hay `final` là ổn.

```dart
const int myInteger = 10;
const double myDouble = 3.14;
```

Thử với `final` nè!

```dart
final int myInteger = 10;
final double myDouble = 3.14;
```

#### **Letting the compiler infer the type**

Và tất nhiên, Dart đủ thông minh để có thể nội suy ra được `type` gì với giá trị bạn cung cấp ban đầu cho biến/hằng. Do đó, bạn có thể lượt bỏ đi các kiểu dữ liệu ở phần khai báo.

> Tuy nhiên, áp dụng cho các kiểu dữ liệu cơ bản và mặc định. Ví dụ: 10 sẽ là int, 3.14 là Double chứ không phải Float.

```dart
const myInteger = 10;
const myDouble = 3.14;
```

#### **Checking**

Để kiểm tra kiểu dữ liệu của một biến thì bạn có thể dùng cách sau:

```dart
num myNumber = 3.14;
print(myNumber is double);
print(myNumber is int);
```

`is` kiểu dữ liệu phía sau, thì kết quả sẽ là một boolean. Cái này dùng lúc run-time nhoé. 

Cuối cùng là cách để in ra kiểu dữ liệu hiện tại của biến

```dart
print(myNumber.runtimeType);
```

> Nhẹ người chưa nào!

### **Type conversion**

Tiếp theo là loại chuyển đổi. Chắc bạn sẽ suy nghĩ loại kiểu dữ liệu đa năng rồi. Tuy nhiên, xem ví dụ sau trước nha:

```dart
  var integer = 100;
  var decimal = 12.5;
  integer = decimal;
```

Tất nhiên, Dart sẽ báo lỗi. Vì nó làm cho chương trình không an toàn. Khi bạn cố gán giá trị của một kiểu dữ liệu khác cho một kiểu dữ liệu khác.

Fix thì hãy sử dụng vài toán tử mà bạn có thể nghĩ ra để chuyển đổi kiểu dữ liệu cho phù hợp. Ví dụ cho trường hợp trên là

```dart
integer = decimal.toInt();
```

Như vậy, cả làng đều vui rồi. 

#### **Operators with mixed types**

Tiếp tục, cuộc vui vẫn còn khi bạn có thể sử dụng vài toán tử để trộn các kiểu dữ liệu với nhau:

```dart
const hourlyRate = 19.5;
const hoursWorked = 10;
const totalCost = hourlyRate * hoursWorked;
```

Trong đó:

* `hourlyRate` là `double` & `hoursWorked` là `int`
* Nhân chúng với nhau thì sự lựa chọn an toàn nhất cho `totalCost` là `double`

Và khi bạn muốn đưa `totalCost` về kiểu `int` thì có thể dùng `.toInt()`.

```dart
const totalCost = (hourlyRate * hoursWorked).toInt();
```

Tuy nhiên, chương trình sẽ báo lỗi. Vì bạn không thể xác định kiểu của `totalCost` ngay thời điểm hiện tại. Chúng cần phải được tính toán ra. Do đó, đổi từ `const` thành `final` là ổn nhất.

```dart
final totalCost = (hourlyRate * hoursWorked).toInt();
```

#### **Ensuring a certain type**

Đôi khi chúng ta cần xác định một kiểu dữ liệu không đổi, khi bạn lại gán cho nó một giá trị có kiểu dữ liệu khác. Điều bạn có thể nghĩ ra như sau:

Bắt đầu khai báo một hằng số:

```dart
const wantADouble = 3;
```

100% hằng số này là kiểu `int`. Bạn muốn đổi nó sang `double` thì như trên sẽ là như sau:

```dart
final actuallyDouble = 3.toDouble();
```

Nhìn sơ qua thì cũng đúng, nhưng nhìn kĩ thì quá ngáo luôn. Thôi bạn hãy về chánh đạu như sau:

```dart
const double actuallyDouble = 3;
```

Khai báo đầy đủ và rõ ràng là tốt nhất. Hoặc đơn giản, bạn có thể cung cấp cho nó giá trị mà mang ý nghĩa biểu thị cho kiểu dữ liệu `double`.

```dart
const wantADouble = 3.0;
```

#### **Casting down**

Việc mà biến đổi từ kiểu dữ này thành kiểu dữ liệu khác. Hoặc các kiểu dữ liệu chung về một kiểu dữ liệu con cụ thể nào đó. Được gọi là **casting type**.

Ví dụ: bạn có 1 biến kiểu `num` là một kiểu số chung chung

```dart
num someNumber = 3;
print(someNumber.isEven);
```

Với lệnh kiểm tra chẵn lẻ kìa thì sẽ không thực thi được. Vì chúng ta không xác định nó là `int` hay `double`. Muốn về 1 kiểu con chính xác thì bạn hãy dùng từ khoá `as`

```dart
final someInt = someNumber as int;
print(someInt.isEven);
```

Công việc với `as` được gọi là **casting type**. Tuy nhiên, việc ép kiểu này chỉ được ép xuống thôi, chứ không thể ép lên. Ví dụ, bạn ép kiểu từ `int` lên `double` như sau:

```dart
num someNumber = 3;
final someDouble = someNumber as double;
```

Thì sẽ bị báo lỗi. Tốt nhất hãy dùng đến `.toDouble()`. Hi vọng bạn đã hiểu hơn một chút về kiểu dữ liệu và các vấn đề xoay quanh việc chuyển đổi kiểu dữ liệu.

## Strings

Trong Dart, `string` là một chuỗi giữ các kí tự với mã `UTF-16`. Chúng nằm trong 2 dấu `' '` hoặc `"  "`. Ví dụ nhoé:

```dart
var s1 = 'Single quotes work well for string literals.';
var s2 = "Double quotes work just as well.";
var s3 = 'It\'s easy to escape the string delimiter.';
var s4 = "It's even easier to use the other delimiter.";
```

Hoặc từ một giá trị là số, bạn có thể chuyển đổi nó sang String một cách nhanh chóng bằng toán tử `.toString()`

### **Unicode**

Với việc trang bị bộ mã Unicode cho String thì đêm lại cho nó khá nhiều sức mạnh. Đủ để mô tả toàn bộ kí tự trên thế giới này.

> **Note**: You can read more about Unicode at its official website, [unicode.org](unicode.org).

Bao gồm các:

* Character truyền thống
* Các kí tự số
* Kí tự đặc biệt
* Emojis
* ...

Cách để xem các ký tự trong chuỗi thành mã của nó với bảng mã Unicode thì sử dụng `.codeUnits`. Ví dụ:

```dart
var salutation = 'Hello!';
print(salutation.codeUnits);
```

Kết quả của bạn sẽ là

```dart
[72, 101, 108, 108, 111, 33]
```

Áp dụng được cho các ký tự đặc biệt và emojis nha.

### **Strings and characters**

Ta hãy lấy ví dụ sau:

```dart
var greeting = 'Hello, Dart!';
print(greeting);
```

Giúp bạn dễ phân biệt ra giữa 2 khái niệm:

* `greeting` là kiểu `string`
* `Hello, Dart` là một chuỗi ký tự (string literal)

Và khi bạn gán một biến String bằng một chuổi kí tự khác, có nghĩa là bạn loại bỏ chuỗi cũ đi và thay bằng chuỗi mới hoàn toàn.

Nếu bạn nghĩ việc khai báo như thế này thì sẽ có 1 Character

```dart
var name = 'a'
```

Thì với một ký tự nhưng Dart sẽ hiểu là một chuỗi kí tự với số lượng là `1`.

### **Single-quotes vs. double-quotes**

Để tạo ra một chuỗi kí tự bạn có thể dùng cả 2 dấu `'` và `"` vẫn được. Tất cả đều vẫn oke. Tuỳ thuộc vào thói quen trước đây của bạn với các ngôn ngữ khác.

### Multi-line strings

Bạn sử dụng `'''` hay `"""` để bắt đầu nhập 1 đoạn văn bản.

```dart
var s1 = '''
You can create
multi-line strings like this one.
''';

var s2 = """This is also a
multi-line string.""";
```

### Combine String

Bạn có 2 String và muốn tạo ra một String mới từ chúng, bạn có thể dùng toán tử `+`. Ví dụ như sau:

```dart
  var firstname = 'Fx';
  var lastname = 'Studio';
  var fullname = firstname + lastname;
  print(fullname); //FxStudio
```

Bạn có thể thêm trực tiếp 1 chuỗi kí tự vẫn được. Xem tiếp ví dụ:

```dart
var fullname = firstname + ' ' + lastname;
```

### Interpolation

Phép nội suy từ giá trị của biến trong một chuỗi ký tự với toán tử `$`. Bạn có thể chèn một String này vào trong một String khác. Chúng ta sử dụng toán tử `$` phía trước và tên biến ở phía sau:

```dart
var age = 18;
var hello = 'Hello, I am $fullname . I am $age year olds';
```

Không chỉ `$` cho biến String và các biến với các kiểu dữ liệu khác đều vẫn được. Đây là cách bạn chèn thêm giá trị của một biến vào một chuỗi string.

### StringBuffer

Dart cung cấp cho chúng ta một kiểu là `StringBuffer` để giúp bạn tạo ra một String bằng cách thêm nhiều chuỗi kí tự vào.

```dart
final message = StringBuffer();
message.write('Hello');
message.write(' my name is ');
message.write('Fx');
message.toString();
// "Hello my name is Fx"
```

Bạn sử dụng `.write` để thêm vào. Và lúc nào xuất ra một chuỗi string thì dùng `.toString()`.

### Raw String

Bạn thử thực thi đoạn code này:

```dart
  var s = 'In a raw string, not even \n gets special treatment.';
  print(s);
```

Kết quả là sẽ có 2 dòng được in ra, vì ký tự `\n` là enter. Và tạo ra một dòng mới. Trong String chúng ta có rất nhiều ký tự đặt biệt như vậy. Nên để in ra được giá trị thô `raw string` thì hãy bắt đầu bằng kí tự `r'....'` cho string.

```dart
var s = r'In a raw string, not even \n gets special treatment.';
```

## Object & Dynamic Types

Dart được phát triển để giải quyết các vấn đề tồn tại trong Javascript. Mà Javascript được xem là một ngôn ngữ động. Linh hoạt trong kiểu dữ liệu của các biến. Và cũng vì vậy, Dart có thêm một kiểu dữ liệu động nữa. Cũng khá thú vị.

Bạn sẽ dùng từ khoá `dynamic` để khai báo 1 biến với kiểu dữ liệu động nha.

```dart
dynamic myVariable = 42;
myVariable = "hello";
```

Trong đó:

* Lúc khai báo ban đầu thì `myVariable` là kiểu `int`
* Sau đó được gán bằng `hello` thì `myVariable` là kiểu `string`

Hoặc bạn sử dụng `var` và không cung cấp giá trị ban đầu cho biến, Dart sẽ mặc định cho biến đó là kiểu động.

```dart
  var myVariable2;
  myVariable2 = "hello"; //OK
  myVariable2 = 54;      //OK
```

Cuối cùng bạn có thể dụng kiểu là `Object?` vẫn đảm bảo được kiểu dữ liệu linh hoạt của biến.

```dart
  Object? myVariable3 = 42;
  myVariable3 = 'hello'; // OK
```

Cũng tương tự như Optional của Swift và Any cho kiểu dữ liệu bất kì. Qua trên bạn có tới 3 cách để khai báo 1 biến với kiểu dữ liệu động.

> Lời khuyên chân thành là đừng chơi dại mà hối hận không kịp.

---

Cảm ơn bạn đã theo dõi các bài viết từ **Fx Studio** & hãy truy cập [website](https://fxstudio.dev/) để cập nhật nhiều hơn!
