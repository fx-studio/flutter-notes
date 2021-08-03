# 03 - Variables & Constant

Chúng ta tiếp tục tìm hiểu về biến số (variables) và hằng số (constants) trong Dart nhoé.

## Variables

Đầu tiên, bạn xem qua ví dụ khai báo một biến số trong Dart nhoé

```dart
int number = 20;
```

Để khai báo một biến số, bạn cần:

* Khai báo kiểu dữ liệu trước
* Sau đó là tên biến
* Gán giá trị cho biến

Phần `int` được xem là chú thích kiểu dữ liệu cho `number`. Khá đơn giản phải không nào.

Và dấu `=` là toán tử gán, dành cho bạn nào quên sách bài vở thì `==` mới là toán tử so sánh.

Vì là biến số, nên bạn có thể tuỳ ý gán lại giá trị cho chúng.

```dart
int number = 20;
number = 999;
```

`int` là kiểu số nguyên và bạn sẽ có kiểu số thực là `double`. Cũng tương tự như khai báo với `int` ở trên thôi.

```dart
double apple = 3.14159;
```

Và `int` & `double` hay các kiểu số nào cũng xuất phát từ một thuỷ tổ. Đó là `num`

```dart
num myNumber;
```

Ngoài ra, bạn có thể áp dụng một vài toán tử với các số hay các biến. Vì mặc dù số nhưng cũng là những đối tượng trong chương trình

```dart
10.isEven
// true

3.14159.round()
// 3
```

Trong đó:

* `isEven` là có phải số chẳn hay không
* `round90` là làm tròn số thực về số nguyên

Còn rất nhiều thứ hay ho nữa, bạn từ từ khám phá nhoé.

## Type safety

> Dart is a type-safe language.

Câu này nghe rất quen nhĩ. Hình như Swift cũng là ngôn ngữ an toàn. Và Dart cũng giống Swift khi an toàn được hiểu ở đây là:

> Bạn phải cho biết kiểu giá trị của biến và bạn sẽ không thay đổi nó sau này.

Ví dụ nhoé:

```dart
int myInteger = 10;
myInteger = 3.14159; // No, no, no. That's not allowed.
```

Khi bạn đã khia báo `myInteger` là một kiểu `int` thì không thể nào gán giá trị `double` cho nó nữa. Điều này giúo cho Dart tiết kiệm thời gian biên dịch và debug giúp bạn.

Tuy nhiên, ta sẽ có một số kiểu ngoại lệ. Như với `num` dùng để khai báo một kiểu số chung chung thì bạn có thể chuyển đổi qua lại được.

```dart
num myNumber;
myNumber = 10;      // OK
myNumber = 3.14159; // OK
myNumber = 'ten';   // No, no, no.
```

Còn bạn thích máu choá và thử thách bản thân thì có thể dùng kiểu `dynamic` để khai báo một biến số. Điều này giúp bạn chỉ định bất kỳ loại kiểu dữ liệu nào cũng được hết. Trình biên dịch sẽ không cảnh báo cho bạn về nó.

```dart
dynamic myVariable;
myVariable = 10;      // OK
myVariable = 3.14159; // OK
myVariable = 'ten';   // OK
```

> Dart cũng khá là vi diệu phải không nào!

## Type inference

Cái này có thể gọi là kiểu nội suy. Khi Dart có thể tự động suy luận ra đúng kiểu dựa vào giá trị bạn gán lúc khai báo một biến số. Và sử dụng với từ khoá là `var`

> Haha, giống Swift nữa rồi.

```dart
var someNumber = 10;
```

Khi khai báo như vậy thì `someNumber` sẽ được hiểu là kiểu `int` và một `type safety` được tạo ra. Và bạn cố gắng gán cho nó một giá trị kiểu khác thì sẽ báo lỗi.

```dart
var someNumber = 10;
someNumber = 15;      // OK
someNumber = 3.14159; // No, no, no.
```

## Constants

Trong Dart, bạn sẽ có 2 loại biến số mà không bao giờ thay đổi giá trị. Hay còn gọi là hằng số.

### const

Đầu tiên, bạn sẽ có các hằng số được khai báo bằng từ khoá `const`. Nó cũng được kiểu là các biến số không thể thay đổi giá trị (immutable) trong toàn bộ chương trình.

Ví dụ:

```dart
const myConstant = 10;
```

Cũng tương tự như `var`, hằng số khai báo với `const` thì cũng là một kiểu nội suy dựa vào giá trị ban đầu gán cho nó. Và bạn cũng không thể gán lại giá trị khác cho hằng số.

> Nó được xem như một biến số không đổi giá trị.

### final

Tiếp theo, là một hằng số với khai báo là `final`. Nó có nghĩa như sau:

* Bạn không thể biết giá trị của nó lúc biên dịch (complie)
* Chỉ khi chương trình thực thi tới đó (run-time) thì giá trị của nó mới được xác định

> Loại này được gọi là hằng số run-time.

Bạn có thể nghe vô lý, nhưng đôi lúc bạn sẽ không biết được giá trị tại thời điểm bạn code là như thế nào.

```dart
final hoursSinceMidnight = DateTime.now().hour;
```

Với `DateTime.now()` chính là thời điểm run-time tại dòng lệnh. Khi đó bạn mới lấy được giá trị cho hằng số của bạn.

### Tóm tắt

* Khái báo hằng số với `const` trước, nếu trình biên dịch báo lỗi
* Bạn sẽ thay đổi thành `final`

Như vậy là okay!

## Naming

Cách đặt tên cho biến / hằng rất quan trọng. Nên bạn hãy áp dụng các nguyên tắt trước đây với các ngôn ngữ khác mà bạn đã từng làm việc.

* Các quy tắt đặt tên cơ bản trong lập trình
* Quy tắc lạc đà
* Tên phải có ý nghĩa, tránh các từ chung chung không rõ nghĩa

Ví dụ

```dart
dogAge         // ok
totalComputer  // ok
a              // not ok
temp           // not ok
```

## Increment & decrement

Phần này sẽ tăng và giảm giá trị của các biến số là kiểu số. Cũng tương tự như các ngôn ngữ lập trình khác.

* `+=` , `-=`

Toán tử này được hiểu là sẽ lấy giá trị của biến và công hoặc trừ với giá trị phía bên phải. Sau đó, kết quả được gán lại cho biến đó. Ví dụ:

```dart
var counter = 0;
counter += 1;
counter -= 1;
```

Ví dụ trên tương tự với biểu thức sau:

```dart
var counter = 0;
counter = counter + 1;
counter = counter - 1;
```

EZ, phải không!

* `++` , `--`

Toán tử này tăng và giảm trực tiếp giá trị biến lên hoặc xuống 1 đơn vị.

```dart
var counter = 0;
counter++;
counter--;
```

> Swift đã bỏ 2 toán tử này rồi. Ahuhu!

* `*=`, `/=`

Có thể áp dụng cách này cho nhân và chia với một giá trị nào đó. Ví dụ:

```dart
double myNumber = 30;
myNumber *= 4;
myNumber /= 10;
```

Cũng không có gì quá khó ở đây hết. Mọi thứ vẫn đơn giản nhoé!

---

Cảm ơn bạn đã theo dõi các bài viết từ **Fx Studio** & hãy truy cập [website](https://fxstudio.dev/) để cập nhật nhiều hơn!
