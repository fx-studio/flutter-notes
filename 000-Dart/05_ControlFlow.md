# 05 - Control Flow

Bài viết này, chúng ta tiếp tục tìm hiểu về các Control Flow trong Dart. Hay dân gian lập trình gọi là lệnh điều kiển.

## Boolean values

Để bắt đầu, chúng ta cần tìm hiểu về **Boolean** trước. Nguyên nhân, với các giá trị đúng/sai của **Boolean** thì mới quyết định việc rẽ nhánh của chương trình. Hay chính xác hơn đó là việc các **Control FLow** lựa chọn luồng code phù hợp.

Boolean được khai báo bằng từ khoá `bool` và nó có 2 giá trị là `true` & `false`. 

```dart
const bool yes = true;
const bool no = false;
```

Khá EZ nhĩ!

## Boolean operators

Ta sẽ tìm hiểu thêm các toán tử mà kết quả trả về là `bool` nhoé. 

### **Testing equality**

Bắt đầu, toán tử so sánh `==` , 2 dấu `=` nha mọi người. Vì `=` là toán tử gán. Ví dụ như sau:

```dart
const doesOneEqualTwo = (1 == 2);
print(doesOneEqualTwo);
```

Ta sẽ có kết quả là `false`, vì `1` không bằng `2` . Kết quả của biểu thức `1 == 2` là `false`. Nó sẽ được gán cho `doesOneEqualTwo`.

Phiên bản thu gọn bằng cách lượt bỏ đi các dấu `(   )`

```dart
const doesOneEqualTwo = 1 == 2;
```

### **Testing inequality**

So sánh không bằng, chúng ta sẽ dùng toán tử sau `!=`. Xem ví dụ nha:

```dart
const doesOneNotEqualTwo = (1 != 2);
```

Kết quả sẽ là `true`, vì `1 != 2` tức là 1 không bằng 2. Nên kết quả biểu thức sẽ là `true`, sau đó được gán cho biến `doesOneNotEqualTwo`.

Ngoài ra, bạn có thể dùng toán tử phủ định `!` cho toán tử so sánh bằng `==` để đạt ý nghĩa là so sánh không bằng.

```dart
const alsoTrue = !(1 == 2);
```

Dăm ba cái so sanh nhĩ! Ahihi!

### **Testing greater and less than**

Chúng ta tiếp tục đi tới các toán tử so sánh **lớn hơn hoặc bằng** & **bé hơn hoặc bằng**. Bằng các toán tử sau `>=` và `<=`.

Ví dụ:

```dart
print(1 <= 2); // true
print(2 <= 2); // true

print(2 >= 1); // true
print(2 >= 2); // true
```

Cũng giống như so sánh bằng và không bằng ở trên kia. Mấy cái này kiến thức cơ bản nhoé!

## Boolean logic

Tiếp theo, là các toán tử logic mà kết quả trả về là một `bool`

### AND

Phép và, đây là phép cơ bản nhất. Khi chỉ có `true` và `true` thì kết quả mới là `true`. Còn lại là `false`. 

Chúng ta sử dụng toán tử `&&` để thực hiện phép và này. Xem ví dụ:

```dart
const isSunny = true;
const isFinished = true;
const willGoCycling = isSunny && isFinished;
```

### OR

Phép hoặc, cũng là phép logic cơ bản tiếp theo. Nó chỉ `false` khi cả 2 đều `false`. Còn lại là `true`.

Chúng ta sử dụng toán tử `||` để thực hiện phép hoặc này. Xem ví dụ:

```dart
const willTravelToAustralia = true;
const canFindPhoto = false;
const canDrawPlatypus = willTravelToAustralia || canFindPhoto;
```

### **Operator precedence**

Nếu bạn kết hợp các toán tử so sánh và logic lại với nhau thì sẽ có độ ưu tiên.

* Toán tử so sánh sẽ được ưu tiên trước
* Tiếp theo là các toán tử logic

```dart
const andTrue = 1 < 2 && 4 > 3;
const andFalse = 1 < 2 && 3 > 4;
const orTrue = 1 < 2 || 3 > 4;
const orFalse = 1 == 2 || 3 == 4;
```

Tuy nhiên, với các toán tử logic với nhau thì có sự ưu tiên rõ rệt khi `&&` ưu tiên cao hơn `||`.

```dart
  print(false && true || true);
  print(false || true && true);
```

Bạn tự nhẫm ra kết quả nhoé!

Còn đây là bảng thứ tự ưu tiên các toán tử từ lớn tới bé

* `!`
* `>=` , `>` , `<=` , `<`
* `==` , `!=`
* `&&`
* `||`

Cuối cùng, mọi việc sẽ khác khi bạn thêm các dấu `(  )` vào trong biểu thức logic. Vì lúc này, sẽ ưu tiên xử lý trong `()` trước. Cũng giống như toán học thôi!.

## **String equality**

Phép so sánh bằng cho String, thì bạn cũng dùng tới toán tử `==` thôi. Và giống với so sánh bằng với các kiểu dữ liệu số. Ví dụ như sau:

```dart
const guess = 'dog';
const dogEqualsCat = guess == 'cat';
```

Cũng EZ thôi nhoé!

## if ... else

### If statement

Nhân vật đầu tiên chính là câu lênh `if` huyền thoại rồi. Chắc cũng không quá khó hiểu nhĩ. Nếu điều kiện của câu lệnh `if` đúng, thì sẽ thực thi khối lệnh trong dấu `{ }`.

```dart
if (2 > 1) {
  print('Yes, 2 is greater than 1.');
}
```

Và nếu biểu thức sai thì sẽ không làm gì cả.

### **else clause**

Vẫn có một cơ hội tiếp theo cho điều kiện `if` không đúng. Thì với tiếp nối `else` thì chương trình sẽ thực hiện khối lệnh của `else`. Ví dụ như sau:

```dart
const animal = 'Fox';
if (animal == 'Cat' || animal == 'Dog') {
  print('Animal is a house pet.');
} else {
  print('Animal is not a house pet.');
}
```

### **Else-if chains**

Và nếu bạn là người chưa muốn từ bỏ, khi thêm điều kiện rẽ nhanh nữa thì hãy thêm tiếp `if` vào sau `else`. Lúc này, phần sai của điều kiện `if` đầu tiên, sẽ được xem xét với điều kiện `if` thứ 2. Xem ví dụ sau:

```dart
  const trafficLight = 'yellow';
  var command = '';
  if (trafficLight == 'red') {
    command = 'Stop';
  } else if (trafficLight == 'yellow') {
    command = 'Slow down';
  } else if (trafficLight == 'green') {
    command = 'Go';
  } else {
    command = 'INVALID COLOR!';
  }
```

Tất cả cũng khá quen thuộc thôi, không có gì phải xoắn hết.

## **Variable scope**

Phần này, ít bạn để ý tới một điều cực kì quan trọng. Đó làm phạm vi biến được sinh ra bởi các câu lệnh rẽ nhanh hoặc các điều kiện.

> Giống như bạn tách từ dòng thời gian này ra thêm 1 dòng thời gian nữa. Biến số của bạn sẽ tồn tại trong một phạm vi nhất định.

Chúng ta sẽ mượn tạm ví dụ sau để phân biệt phạm vi biến cơ bản nhoé.

```dart
const global = 'Hello, world';
void main() {
  const local = 'Hello, main';
  if (2 > 1) {
    const insideIf = 'Hello, anybody?';
    print(global);
    print(local);
    print(insideIf);
}
  print(global);
  print(local);
  print(insideIf); // Not allowed!
}
```

Phạm vi biến sẽ có 3 loại chính:

* **Global** (biến toàn cầu, toàn cục, toàn chương trình ....) đây là phạm vi lớn nhất, khi bạn có thể dùng nó ở bất kì đâu trong chương trình của bạn.
  * Được khai báo ở ngoài `main` và ngoài phạm vi các dấu `{ }`
  * Thường sẽ là các biến `static` hay `const`
* **Local** (biến cục bộ) đây là phạm vi biến trong một function nào đó. Nó có giá trị tồn tại trong chính function của nó. Khi function kết thúc thì biến cũng bay màu theo. Trong trường hợp này `main` được xem là một function
  * Được khai báo trong 2 dấu `{ }`
* **Inside** (biến bên trong khối lệnh) đây là phạm vi nhỏ hơn nữa. Khi biến được khai báo để phục vụ trong một khối lệnh mà thôi. Như là `if`, `for`, `while` ...
  * Khai báo bên trong khối lệnh.
  * Có ý nghĩa trong khối lệnh mà nó khai báo.
  * Nếu câu lệnh có nhiều khối lệnh thì biến không thể nào ảnh hưởng cho toàn bộ các khối lệnh đó

## The ternary conditional operator

Toán tử điều kiện 3 ngôi. Nghe khá là văn vẻ rồi, có thể bạn chưa biết tên của nó, nhưng bạn có thể làm nó lâu rồi. Chúng ta sẽ thay thế câu lệnh `if ... else` bằng một toán tử 3 ngôi duy nhất. Đó là:

```dart
(condition) ? valueIfTrue : valueIfFalse;
```

Xem ví dụ nha:

```dart
const score = 83;
const message = (score >= 60) ? 'You passed' : 'You failed';
```

Trong đó:

* Khi điều kiện đúng (trước dấu `?`), sẽ lấy giá trị ở sau dấu `?`
* Nếu điều kiện sai, sẽ lấy giá trị ở sau dấu `:`

## Switch ... case

### **Switch statements**

Nếu bạn có nhiều hơn 2 nhánh để rẽ trong chương trình, thì bạn nên cân nhắc sử dụng lới lệnh `switch` nhoé. Cú pháp như sau:

```dart
switch (variable) {
  case value1:
    // code
    break;
  case value2:
    // code
    break;
  ...
  default:
    // code
}
```

Trong đó:

* `switch` sẽ dựa trên giá trị biến trong 2 dấu `()` mà sẽ điều hướng chương trinh theo nhánh phù hợp
* `case` là định nghĩa các nhánh tương ứng với từng giá trị. Nếu giá trị của biến so sánh đúng, thì sẽ thực hiện khối lệnh sau dấu `:`
* `break` để kết thúc toàn bộ câu lệnh `switch` khi đã chọn đúng nhánh.
* `default` nếu không có `case` nào phù hợp thì sẽ thực thi `default`.

### **Replacing else-if chains**

Khi bạn có một chuỗi `if else` dài bất tận, lúc này bạn mạnh dạng chuyển sang `switch case` nhoé. Giúp cho chương trình của bạn sẽ trông tường minh hơn.

Ví dụ với chuỗi `if else` như sau:

```dart
const number = 3;
if (number == 0) {
  print('zero');
} else if (number == 1) {
  print('one');
} else if (number == 2) {
  print('two');
} else if (number == 3) {
  print('three');
} else if (number == 4) {
  print('four');
} else {
   print('something else');
}
```

Bạn có thể refactor lại với `switch case` như sau:

```dart
const number = 3;
switch (number) {
  case 0:
    print('zero');
    break;
  case 1:
    print('one');
    break;
  case 2:
    print('two');
    break;
  case 3:
    print('three');
    break;
  case 4:
    print('four');
    break;
  default:
    print('something else');
}
```

Nhìn ngầu hơn trong khi dài dòng hơn một tí. Nhưng giúp bạn bớt đau não khi so sánh quá nhiều điều kiện.

### **Switching on strings**

Dart sẽ hỗ trợ thêm `switch` cho một String. Tuy không được đa năng như Swift, nhưng mà như vậy thì cũng khá là ổn rồi.

Ví dụ như sau:

```dart
var command = 'OPEN';
switch (command) {
  case 'CLOSED':
    executeClosed();
    break;
  case 'PENDING':
    executePending();
    break;
  case 'APPROVED':
    executeApproved();
    break;
  case 'DENIED':
    executeDenied();
    break;
  case 'OPEN':
    executeOpen();
    break;
  default:
    executeUnknown();
}
```

## **Enumerated types**

Enum được gọi là kiểu liệt kê (danh cho các bạn chưa biết tên tiếng Việt của nó nhoé), nó có ý nghĩa đặc biệt với `switch`. Cho phép giá trị biến kiểu liệt kê có một trong các giá trị mà được khai báo với enum.

Ví dụ khai báo một enum như sau.

```dart
enum Weather {
  sunny,
  snowy,
  cloudy,
  rainy,
}
```

Bạn sẽ sử dụng từ khoá `enum` để khai báo một enum. Các case của nó sẽ được khai báo trong `{}`, phân biệt giữa các case bằng đấu `,`

Tiếp theo là cách bạn khai báo một biến kiểu enum. Xem tiếp ví dụ nha:

```dart
const weatherToday = Weather.cloudy;
```

Sử dụng tên của enum và dấu `.`, sau đó chọn case phù hợp. Vậy là xong cho việc khai báo một biến kiểu enum rồi nhoé!

### **Switching on enums**

Như đã nói ở trên, lợi ích tốt nhất của nó là để vào `switch case`. Chúng ta xem tiếp ví dụ nhoé.

```dart
const weatherToday = Weather.cloudy;
switch (weatherToday) {
  case Weather.sunny:
    print('Put on sunscreen.');
    break;
  case Weather.snowy:
    print('Get your skis.');
    break;
  case Weather.cloudy:
  case Weather.rainy:
    print('Bring an umbrella.');
break; }
```

Trong đó:

* `switch` sẽ lấy chính biến enum là điều kiện so sánh với các `case` đã được định nghĩa ở dưới
* `case` sẽ được định nghĩa để phù hợp với từng giá trị của enum
* nếu bạn muốn gộp nhiều case với nhau thì không cần để câu lệnh gì sau dấu `:`. Chường trình sẽ tự động nhảy tới `case` sau đó.
* Nếu bạn muốn kết thúc khi đã chọn đúng `case` hay 1 vài `case` rồi thì hãy dùng tới `break`
* Khi bạn khai báo đủ `case` tương ứng với tất cả giá trị mà biến enum có thể có, thì sẽ không cần dùng tới `default`

### **Enum values and indexes**

Cách lấy giá trị (value) của enum thì hãy dùng trược tiếp chính biến enum đó. Ví dụ:

```dart
 print(weatherToday);
// Weather.cloudy
```

Còn muốn lấy `raw value` hay còn gọi là `index` của nó. Thì hãy dùng tiếp thuộc tính `.index` của biến enum. Xem ví dụ nha:

```dart
final index = weatherToday.index;
```

Kết quả là một số `int` nhoé!

## Loops

Nhóm lệnh điều khiển tiếp theo là lệnh lặp (loop). Chính là những câu lệnh huyền thoại đối với bạn mà thôi.

### While

Cú pháp như sau:

```dart
 while (condition) {
   // loop code
}
```

Sử dụng từ khoá `while` và một điều kiện trả về `bool`. Nếu điều kiện vẫn còn đúng thì khối lệnh sẽ tiếp tục được thực hiện. Câu lệnh `while` sẽ kết thúc khi điều kiện trả về là `false`.

Xem ví dụ sau nhoé

```dart
var sum = 1;
while (sum < 10) {
  sum += 4;
  print(sum);
}
```

Trong đó, `while` sẽ tiếp tục chạy khi `sum` bé hơn 10. Và trong khối lệnh của `while` thì mỗi bước lặp, `sum` đều được cộng với 4. kết quả cuối cùng là `sum = 13` và có 3 lần lặp.

Khi bạn muốn vòng lặp `while` chạy vô hạn thì hãy sử dụng `while (true) { ... }` nhoé.

### Do ... while

Cú pháp như sau:

```dart
 do {
  // loop code
} while (condition)
```

Chúng ta sẽ thực hiện khối lệnh trước. Sau đó `while` sẽ mới kiểm tra điều kiện.

* Nếu điều kiện đúng (true) thì khối lệnh sẽ được tiếp tục thực thi. Sau đó tiếp tục kiểm tra lại điều kiện.
* Nếu điều kiện sai (false) thì câu lệnh sẽ kết thúc

> Ưu điểm, dù điều kiện như thế nào thì bạn cũng thực hiện được ít nhất một lần cho khối lệnh với `do while`. Còn với `while` thì có thể bạn không thực hiện khối lệnh khi điều kiện ngay ban đầu là sai rồi.

Xem ví dụ và đoán kết quả nhoé

```dart
sum = 1; do {
sum += 4;
  print(sum);
} while (sum < 10);
```

### Break

Khi bạn rơi vào một vòng lặp vô tận hoặc bạn đã đạt được mục đích và muốn kết thúc vòng lặp sớm hơn. Hãy dùng tới lệnh `break;` nhoé.

Ví dụ nhoé:

```dart
sum = 1;
while (true) {
  sum += 4;
  if (sum > 10) {
     break; 
  }
}
```

Lệnh `while` sẽ kết thúc khi điều kiện `sum > 10`, vì tại `if` đó chúng ta gọi lệnh `break;`

### For

Với `while` bạn sẽ không xác định được số lần lặp của câu lệnh. Chỉ phụ thuộc vào điều kiện của câu lệnh đó mà thôi. Còn với `for` thì bạn có thể xác định cụ thể số lần lặp của câu lệnh.

Cú pháp của `for` trong Dart thì giống với C/C++ nhoé. Xem ví dụ là tự hiểu.

```dart
for (var i = 0; i < 5; i++) {
   print(i); 
}
```

Bạn thực hiện vòng lặp `for` với:

* Khai báo biến `i = 0`
* So sánh `i < 5`, sau đó thực hiện khối lệnh
* Tăng `i++` và tiếp tục so sánh với `5`
* Số lần lặp sẽ là 5 lần (vì chúng ta đếm từ `0`)

### continue

Khi bạn muốn bỏ qua 1 hay vài lần lặp thứ `i` nào đó. Thì bạn sẽ sử dụng từ khoá `continue`. Lúc đó, lệnh lặp sẽ nhảy sang vòng lặp tiếp theo.

Xem ví dụ sau:

```dart
for (var i = 0; i < 5; i++) {
  if (i == 2) {
    continue; 
  }
  print(i); 
}
```

Trong đó, bạn sẽ bỏ qua vòng lặp thứ 3 khi `i == 2`

### For in

Khi bạn có một chuỗi hay một tập hợp ... và bạn muốn duyệt qua từng phần tử của nó thì hãy lựa chọn `for in` nhớ. Câu lệnh này sẽ là lệnh rút gọn của `for` truyền thống.

Xem ví dụ sau nhoé

```dart
const myString = 'I ❤ Dart';
for (var codePoint in myString.runes) {
  print(String.fromCharCode(codePoint));
}
```

Trong đó:

* `myString.runes` là một tập hợp các kí tự của chuỗi `myString`
* `for in` sẽ lần lượt duyệt qua
* mỗi bước lặp thì giá trị của `codePoint` chính là phần thứ `i` của chuỗi đó

### For each

Khi bạn có một array và muốn duyệt qua từng phần tử của nó. Hãy gọi function của chính array là `forEach`.

Xem ví dụ sau nhoé:

```dart
const myNumbers = [1, 2, 3];

myNumbers.forEach((number) => print(number));

myNumbers.forEach((number) {
  print(number);
});
```

Trong ví dụ ta có 2 cách dùng `forEeach`, với cách dùng dấu `=>` thì là ta sẽ thực hiện lệnh tiếp theo ngay. Còn về dấu `{}` là sẽ thực hiện cả một khối lệnh.

---

Cảm ơn bạn đã theo dõi các bài viết từ **Fx Studio** & hãy truy cập [website](https://fxstudio.dev/) để cập nhật nhiều hơn!
