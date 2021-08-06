# 06 - Functions

Chào bạn, chúng ta sẽ tiếp tục tìm hiểu về các hàm (**functions**) trong ngôn ngữ lập trình **Dart**.

> Bắt đầu thôi!

## Function là gì?

Câu hỏi hơi ngáo một chút, nhưng lâu nay ít ai tự trả lời những cái mà ai cũng nghĩ là hiển nhiên hết. Về định nghĩa, function (hàm) là một khối lệnh nhằm thực hiện một nhiệm vụ nhất định nào đó.

Cấu trúc cơ bản sẽ là:

> Input => [ Function ] => Output

* Input là các đối số được truyền vào cho các tham số của function
* Output là giá trị trả về của function, nếu không có gì trả về kiểu `void` (không phải là không có trả gì về hết)

Mục đích duy nhất mà function được sinh ra là:

> Tránh lặp lại những đoạn code giống nhau về cách xử lý thông tin.

### Cú pháp

Ta sẽ phân tích cú pháp của một function tiêu chuẩn trong ngôn ngữ Dart thông qua ví dụ sau nhoé:

```dart
String hello(String name) {
  return 'Hello. I am $name';
}
```

Trong đó:

* **Return Type**: đó là phần đầu tiên trong dòng khai báo function. Trong ví dụ là kiểu `String`
* **Function Name**: là tên function, phần tiếp theo sau Return Type. Trong ví dụ tên function là `hello`
* **Parameters**: là các tham số cho function, có thể có 1 hoặc nhiều tham số, hoặc không có tham số nào hết. Chúng được khai báo trong dấu `()`. Chia thành 2 phần:
  * **Parameter Type**: kiểu của tham số (phần từ trước)
  * **Parameter Name**: là tên của tham số (phần tử sau)
* **Return Value**: giá trị mà function trả về, nó sẽ được gởi trong lệnh `return` ở bên trong function
* **Function body**: toàn bộ các dòng lệnh trong 2 dấu `{ }`

### Gọi hàm

Sau khi định nghĩa xong function trong Dart, chúng ta sẽ thực hiện việc gọi hàm thực thi. Bạn xem tiếp ví dụ nha:

```dart
void main() {
  var str = hello("Fx Studio");
  print(str);
}
```

Trong đó:

* Bạn sử dụng 2 dấu `()` để gọi thực thi một function. Bằng việc để nó ở sau tên hàm, ví dụ `hello()`
* `Fx Studio` là đối số được truyền vào function. Nó tương ứng cho tham số `name` mà ta đã khai báo ở trên
* `Output` được gán cho biến `str`. Đây là String được trả về trong lệnh `return`

Ngoài ra, function trong Dart vẫn giống như các ngôn ngữ khác. Bạn hoàn toàn tự tin mà áp dụng theo các cách bạn đã biết.

## Parameters

Chúng ta sẽ nói về các tham số cho các function trong Dart tiếp nhoé. Chúng cũng khá linh hoạt đó.

### Sử dụng nhiều tham số

Dart vẫn hỗ trợ khai báo nhiều tham số trong 1 function. Các tham số cách nhau bởi dấy `,`. Xem ví dụ nha:

```dart
void helloPersonAndPet(String person, String pet) {
  print('Hello, $person, and your furry friend, $pet!');
}
```

Ta có function và 2 tham số. Bạn muốn thêm gì thì cứ thêm vào nhoé. Còn gọi thì đơn giản như sau:

```dart
helloPersonAndPet('Fluffy', 'Chris');
```

Các đối số truyền vào lần lượt và cũng cách nhau bởi dấu `,`.

> Tới đây thì Swift & Objective-C của chúng ta đã khác xa với phần còn lại của thế giới. Khi chúng có thêm `name` & `label` cho các tham số của function.

### **arameters optional**

Dart hỗ trợ thêm cho function một chức năng khá là hay. Biến tham số khai báo trở lên là optional. Có nghĩa là có thể có trong lời gọi hàm hoặc không có vẫn không sao.

Các tham số này sẽ được khai báo trong 2 dấu `[]` và kiểu dữ liệu của chúng sẽ là Optional (tìm hiểu sau nhoé).

Ví dụ nhoé!

```dart
String fullName(String first, String last, [String? title]) {
  if (title != null) {
    return '$title $first $last';
  } else {
    return '$first $last';
  }
}
```

Trong đó:

* `title` là tham số tuỳ chọn.

Và cách gọi hàm đó như sau

```dart
print(fullName('Fx', 'Studio'));
print(fullName('Albert', 'Einstein', 'Professor'));
```

Bạn sẽ thấy ưu điểm của nó trong lời gọi hàm. Bạn sẽ không cần viết nhiều function với việc chỉ bỏ đi 1 vài tham số.

### **Default values**

Để cung cấp giá trị mặc định cho các tham số, thì giá trị sẽ được để sau dấu `=` cho từng tham số. Khi có giá trị mặc định thì khi gọi hàm nếu không được cung cấp đối số thì function sẽ lấy giá trị mặc định được khai báo. 

> Nếu không có giá trị mặc định thì sẽ là `null`. Giống ở phần trên. Do đó, chúng ta cũng có thể khai báo chúng vào trong 2 dấu `[]`.

Xem ví dụ nhoé:

```dart
String fullName2(String first, String last, [String title = 'Ahihi']) {
  return '$title $first $last';
}
```

Cung cấp giá trị mặc định cho `title` là `ahihi`. Cách gọi cũng tương tự.

```dart
print(fullName2('Fx', 'Studio'));
print(fullName2('Albert', 'Einstein', 'Professor'));
```

### Naming parameters

Để không thua kém Swift thì Dart cũng hỗ trợ thêm các `name` cho các tham số. Trong khai báo thì chúng ta sẽ đặt các tham số này vào trong các dấu `{}`. Chúng có:

* tên khi gọi hàm, làm cho ý nghĩa của các tham số được rõ ràng hơn
* có thể optional để bỏ qua giá trị, tức là `null`
* có giá trị mặc định, được gán sau dấu `=` của mỗi tham số

Ví dụ sau:

```dart
bool withinTolerance(int value, {int min = 0, int max = 10}) {
  return min <= value && value <= max;
}
```

Gọi thực thi như sau:

```dart
withinTolerance(9, min: 7, max: 11);
```

Bạn để ý giữa `9` và `min: 7` và `max: 11`. Sự khác biệt ở các dữ `min` & `max` xuất hiện trong lời gọi hàm.

> Hình bóng của Swift đã quay về rồi. Ahihi!

### **Named parameters required**

Có một lỗi nhẹ, thực chất là sự bỏ qua suggestion cho lời gọi làm. Khi các tham số trong `{}` không được liệt kê ra. Và để muốn chắc chắn bạn phải cung cấp giá trị cho các tham số đó. Thì hãy sử dụng thêm từ khoá `required` vào trước các tham số nào cần thiết phải có trong lời gọi hàm.

Sửa lại ví dụ trên như sau:

```dart
bool withinTolerance2({required int value, required int min, required int max}) {
  return min <= value && value <= max;
}
```

Bạn sẽ thấy khác biệt khi gọi hàm này với việc suggestion từ các IDE nhoé.

> Lưu ý, với từ khoá `required` thì sẽ không dùng được giá trị mặc định cho tham số.

## **Optional types**

Được xem là một tính năng đặc biết của function trong Dart. Bạn có thể lượt bỏ đi phần **Return Type** trong khai báo function.

```dart
compliment(number) {
  return '$number is a very nice number.';
}
```

Với khai báo function như trên thì Dart sẽ hiểu kiểu trả về của function là một kiểu dạng `dynamic`. Mặc dù, Dart có thể suy luận ra kiểu trả về là `String` bên trong hàm.

Ngoài ra, với khai báo kiểu này, bạn có thể bỏ qua cả kiểu dữ liệu của tham số. Nếu bạn chú ý kĩ về khai báo `number` ở ví dụ trên.

Và ví dụ trên tương đương với khai báo sau:

```dart
 String compliment(dynamic number) {
  return '$number is a very nice number.';
}
```

## **Anonymous functions**

Dart cũng rất thú vị khi bạn có thể bỏ luôn tên function biến chúng trở thành hàm ẩn danh (**anonymuos function**). Chúng ta tiếp tục khám phá chúng nó qua các phần sau đây.

Nghe thì cao sang quyền quý như vậy, nhưng thực chất đó là phiên bản

> Closure của Swift cho Dart mà thôi.

### Ý nghĩa

* Biến 1 function thành một biến hay khai báo 1 biến với kiểu dữ liệu là 1 function
* Khai báo các tham số của một function là một kiểu function
* Return giá trị trả về là một function

Tất cả những thứ này giống như Closure làm được bên Swift yêu dấu của chúng ta nhoé.

### Sử dụng cơ bản

Bạn sẽ viết function mà không có kiểu trả về và tên hàm. Thì bạn sẽ có được một hàm ẩn danh. Cú pháp cơ bản như sau:

```dart
([[Type] param1[, …]]) {
  codeBlock;
};
```

Trong đó:

* Các tham số ở trong dấu `()`
* Code sẽ ở trong 2 dấu `{}`
* Kiểu trả về tuỳ thuộc vào giá trị `return` của function này

Ví dụ nhoé:

```dart
final multiply = (int a, int b) {
  return a * b;
};
```

Lúc này, `multiply` được xem là một biến. Tuy nhiên kiểu dữ liệu của nó là một function và giá trị trả về tuỳ thuộc vào giá trị tham số truyền vào. Xem cách gọi biến thực thi nhoé.

```dart
print(multiply(2, 3));
```

### **Returning a function**

Chúng ta sẽ tới phần 1 function return về một function. Tất nhiên kiểu dữ liệu ở đây sẽ là `Function`, đây cũng chính là từ khoá cho kiểu viết này.

Ví dụ:

```dart
Function applyMultiplier(num multiplier) {
  return (num value) {
    return value * multiplier;
  };
}
```

Trong đó, `Function` ở đầu tiên được xem là một kiểu dữ liệu cho function `applyMultiplier`. Và kết quả trả về của chính `applyMultiplier` lại là 1 hàm ẩn danh.

> Bắt đầu hơi điên về Dart rồi nhoé!

Xem tiếp ví dụ với 1 biến tạo ra bởi kiểu Function trên.

```dart
   final triple = applyMultiplier(3);
```

Lúc này, `triple` vẫn là 1 biến với kiểu là `applyMultiplier`. Chúng ta không thực thi được `triple` ngay lúc này. Mà nó vẫn là chỉ là function mà thôi. 

Muốn thực thi tiếp thì như sau:

```dart
print(triple(6));
print(triple(14.0));
```

Vì hàm ẩn danh trong phần `return` lại cần 1 tham số nữa, dó đó khi gọi biến này thực thi bạn lại cung cấp thêm cho chúng 1 đối số tiếp.

> Mệt não rồi nhoé!

### **Closures and scope**

> Anonymous functions in Dart act as what are known as **closures**.

Đây cũng là thưa nhận về Dart cho function ẩn danh của nó là một bao đóng (closure). Chính vì các bao đóng này mà sinh ra cái gọi làm phạm vi của biến.

> Các biến có các phạm vi nhất định trong chính khối lệnh của nó, tức là 2 dấu `{}` nhoé.

Lấy lại ví dụ trên:

```dart
Function applyMultiplier(num multiplier) {
  return (num value) {
    return value * multiplier;
  };
}
```

Trong đó:

* `multiplier` có phạm vi ảnh hưởng toàn bộ function này
* `value` chỉ ảnh hưởng trong phạm vi function ẩn danh được trả về mà thôi

Ta có 1 ví dụ khác:

```dart
var counter = 0;
final incrementCounter = () {
  counter += 1;
};
```

Khi biến được khai báo ở ngoài bao đóng, thì hàm ẩn danh vẫn có thể truy cập và thay đổi giá trị của biến từ bên trong. Và ta gọi thực thi nhiều lần thì đối tượng tác động chính là biến khai báo ở ngoài đó.

```dart
  incrementCounter();
  incrementCounter();
  incrementCounter();
  incrementCounter();
  incrementCounter();
  print(counter); //5
```

Kết quả lúc này sẽ là 5. Và cách này cũng có ý nghĩa khi bạn sử dụng kiểu function trả về function. Xem ví dụ sau nhoé.

```dart
Function countingFunction() {
  var counter = 0;
  final incrementCounter = () {
    counter += 1;
    return counter;
  };
  return incrementCounter;
}
```

Cách sử dụng

```dart
final counter1 = countingFunction();
final counter2 = countingFunction();

print(counter1()); // 1
print(counter2()); // 1
print(counter1()); // 2
print(counter1()); // 3
print(counter2()); // 2
```

Các giá trị của `counter1` và `counter2` sẽ khác nhau và chúng nó không liên quan gì tới nhau. Bạn sẽ hiểu đơn giản là các biến `countingFunction` sẽ còn tồn tại theo các biến `counter1` và `counter2` còn tồn tại. Chung sẽ tiếp tục được các function ẩn danh bên trong sử dụng.

> Nỗ não nữa rồi!

## **Arrow functions**

### Cú pháp

Trong khi Swift với function chỉ có 1 dòng thì sẽ loại bỏ đi từ khoá `return`. Thì Dart từ trước đó đã chơi trội hơn nhiều rồi. Khi Dart đưa ra một cú pháp đặc biệt cho function chỉ có 1 dòng. Đó là `=>`

Ta lấy ví dụ ở trên:

```dart
int add(int a, int b) {
   return a + b; 
}
```

Thì có thể dùng cú pháp `=>` để viết lại function trên cho gọn. Xem ví dụ nhoé!

```dart
   int add(int a, int b) => a + b;
```

Và chúng ta cũng có thể áp dụng cú pháp này cho các function ẩn danh. Khi chỉ còn các tham số trong dấu `()`và biểu thức sau dấu `=>`.

```dart
   (parameters) => expression;
```

### Ví dụ 1 cho các function ẩn danh

Bạn có function sau:

```dart
final multiply = (int a, int b) {
  return a * b;
};
```

Chuyển đổi lại như sau:

```dart
final multiply = (int a, int b) => a * b;
```

Sử dụng thì như ri:

```dart
print(multiply(2, 3)); // 6
```

### Ví dụ 2 cho các function trả về function

Ví dụ:

```dart
Function applyMultiplier(num multiplier) {
  return (num value) {
    return value * multiplier;
  };
}
```

Viết lại như sau:

```dart
 Function applyMultiplier(num multiplier) {
  return (num value) => value * multiplier;
}
```

### Ví dụ với các ForEach

Ví dụ bạn có 1 array số nguyên và nhân mỗi phần tử với 3

```dart
numbers.forEach((number) {
  final tripled = number * 3;
  print(tripled);
});
```

Sửa lại cho xịn sò như ri.



> Như vậy là bạn đã xong cơ bản về function trong Dart rồi đó. Mệt não quá!

---

Cảm ơn bạn đã theo dõi các bài viết từ **Fx Studio** & hãy truy cập [website](https://fxstudio.dev/) để cập nhật nhiều hơn!
