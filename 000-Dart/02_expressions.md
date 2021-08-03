# 02 - Expressions

Chúng ta sẽ tìm hiểu về cách sử dụng các biểu thức (Expressions) trong ngôn ngữ Dart.

## Comment Code

Comment hay Comment code dùng để vô hiệu hoá đi 1 hay nhiều dòng code trong file chương trình của bạn. Phần này sẽ không được biên dịch. 

Dart cũng giống các ngôn ngữ khác với cú pháp của Comment.

* Comment 1 dòng hãy dùng `//`

Ví dụ:

```dart
// This is a comment. It is not executed.
```

Ví dụ thêm nữa:

```dart
// This is also a comment,
// over multiple lines.
```

* Comment nhiều dòng hãy dùng `/* */`

```dart
/* This is also a comment. Over many...
many...
many lines. */
```

Với kiểu Documentation Comments thì bạn sẽ dùng với cú pháp `/** */`

```dart
/// I am a documentation comment
/// at your service.

/**
 * Me, too!
 */
```

Dùng để mô tả về một API của bạn hay 1 function/class ... Rất là khá thú vị khi bạn xem lại code của mình sau 1 thời gian mà vẫn hiểu được.

## Print

Đây thuộc dạng câu lệnh kinh điển trong giới lập trình.

> Tool debug số một hiện nay.

Đây là lệnh đầu tiên mà bạn học, `print` dùng để in kết quả ra ở **Console**.

```dart
print('Ahihi!')
```

## Statements

**Statements** là câu lệnh, nó là một yêu cầu từ bạn nói để máy tính thực thi. Trong Dart, tất cả các câu lệnh sẽ được kết thức bằng dấu chấm phẩy `;`

> Nỗi kinh hoàng của iOS Developer rồi đây.

Ví dụ:

```dart
print('Ahuhu!')
```

Ngoài ra, một số câu lệnh sẽ kết thúc bằng dấu `}`. Đó là các câu lệnh mang một khối lệnh bên trong nó. Ví dụ

```dart
if (isOkay) {
    // ahihi
}
```

## Expressions

Tiếp theo là biểu thức (**Expressions**). Nó không giống **Statements** (câu lệnh), nó sẽ không làm gì cả. Nghĩa là, một biểu thức là một giá trị hoặc một cái gì đó mà có thể tính toán được như một giá trị.

Ví dụ:

```dart
22
8 + 6
'Fx Studio'
x + y
```

Giá trị ở đây có thể là số, text hay một số biến nào đó.

## Toán tử toán học

### Loại đơn giản

Đó là các em `+ - * / %` mà bạn dùng ngày qua tháng lại lâu nay. Ví dụ:

```dart
2 + 10
15 - 3
7 * 55
100 / 5
```

Ngoài ra, bạn có thể dùng cả toán tử trong một biểu thức để đưa vào một câu lệnh. Điển hình như với `print` sau đây:

```dart
print(2+10)
```

Dart cũng cho phép bạn bỏ qua các khoảng trắng trong một biểu thức với các toán tử toán học. Ví dụ:

```dart
2+10
2 + 10
```

> Tuy nhiên, có khoảng trắng vẫn hơn nhoé. Dễ đọc, dễ hiểu.

### Decimal numbers

Gọi là số thập phân, thì ta cần chú ý 2 biểu thức kinh điển sau:

```dart
16 / 3
```

Kết quả sẽ là bằng `5`, đó là cho các ngôn ngữ khác. Với Dart thì sẽ tính toán phép chia này ra số thập phân. Do đó, kết quả cuối cùng là `5.333333333333333`

Để thực hiện **chia lấy phần nguyên**, thì bạn hãy dùng `16 ~/ 3` nhoé. Sử dụng `~/` là okay.

```dart
16 ~/ 3       // = 5
```

**Chia lấy dư**. À, nếu bạn thắc mắt thì có thể dùng toán tử truyền thống là `%` để chia lấy phần dư. Ví dụ: 

```dart
16 % 3         // = 1
```

### Order of operations

Thứ tự thược hiện các toán tử trong một biểu thức toán học giống với độ ưu tiên phép tính. Tức là nhân chia trước. cộng trừ sau. Và ưu tiên dấu `( )` nữa.

```dart
print(1 + 2 * 3);   // 7
print(((8000 / (5 * 10)) - 32) ~/ (29 % 5)); // 32
```

Cũng dễ thôi, không có gì xoắn não ở đây cả.

## Math functions

Dart cũng cung cấp cho bạn nhiều hàm toán học cơ bản. Chỉ cần `import` thêm thư viện toán học của Dart vào thôi.

```dart
import 'dart:math';
```

Bạn có thể dùng các hàm như `sin`, `cos`, `sqrt` ... hay các hằng số toán học như `pi`. Các hàm so sánh như `min`, `max`. Nói chung cái gì bạn đã quen với toán học và các ngôn ngữ lập trình khác thì Dart cũng sẽ có.

---

Cảm ơn bạn đã theo dõi các bài viết từ **Fx Studio** & hãy truy cập [website](https://fxstudio.dev/) để cập nhật nhiều hơn!
