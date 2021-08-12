

# 09 - Collections

Chào mừng bạn đến với **Fx Studio**. Chúng ta lại tiếp tục tìm hiểu ngôn ngữ lập trình **Dart**. Chủ đề lần này sẽ là các kiểu dữ liệu tập hợp, hay còn gọi là **Collections**. Chúng ta sẽ tìm hiểu nó bao gồm những loại gì & như thế nào ...

> Nào bắt đầu thôi!

## List

**List** hay còn gọi là **Array** theo cái tên dân gian lập trình. Đây là một kiểu dữ liệu phổ biến nhất trong Dart cũng như trong các ngôn ngữ lập trình khác. 

List có những đặc điểm cơ bản sau:

* List là một cấu trúc dữ liệu để sắp xếp thứ tự các đối tượng.
* Các đối tượng trong List thì có cùng kiểu dữ liệu với nhau
* Phần tử đầu tiên sẽ có `index = 0`
* Thứ tự các phần tử trong một danh sách rất quan trọng.

> Như vậy chắc cũng ổn rồi, bắt tay vào việc chính thôi.

### Create List

**List** sẽ được tạo bằng việc khai báo các đối tượng cùng loại trong cặp dấu `[]`. Ví dụ cơ bản nhất như sau:

```dart
var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
```

Đó là một List với kiểu `int` cho các phần tử. Chúng ta sẽ gọi ngắn là **List int** nhoé. Công việc tạo một List như vậy được gọi là **list literal**. Và bạn có thể gán lại biến bằng một **list literal** khác.

```dart
numbers = [];
```

Lúc này, `numbers` của chúng ta là một List rỗng, hay không chứa bất cứ phần tử nào hết. 

> Tuy là rỗng nhưng nó khác `null` nhoé, vì nó tồn tại.

Khai báo một List ban đầu bằng cách gán một danh sách rỗng cho nó.

```dart
var names = [];
```

Tuy nhiên, Dart sẽ không biết được kiểu dữ liệu chính xác cho danh sách của bạn. Nó có thể nhận nhiều kiểu dữ liệu khác nhau. Và Dart sẽ cho nó là kiểu `dynamic`. 

> Đây không phải là một cách khuyến khích cho bạn để khai báo List trong Dart.

### Syntax

Do đó, cú pháp khai báo một danh sách sẽ như sau:

```dart
// #1
List<type> list_name = [];

// #2
var list_name = <type>[];
```

Trong đó:

* Cách 1 là bạn sẽ xác định kiểu của List trước tiên. Sau đó là tên của List. Cuối cùng là gán với một danh sách rỗng.
* Cách 2 là bạn tạo ra một biến. Sau đó là gán bằng việc khởi tạo một List với kiểu dữ liệu xác định

> Cặp dấu `<>` được gọi là **generic types**. Bạn sẽ nhét một kiểu dữ liệu vào trong đó.

### Print

Đôi khi bạn muốn xem thử danh sách chúng ta có những gì trong đó. Bạn hãy dùng tới lệnh `print` thôi.

```dart
var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
print(numbers);
  
// [1, 2, 3, 4, 5, 6, 7, 8, 9]
```

Đơn giản phải không nào.

### Elements of a list

Thao tác với các phần tử trong List thì cũng tương tự việc thao tác với các kiểu Array trong các ngôn ngữ khác. Ta lấy ví dụ là một List int như sau. Và chúng ta sẽ có một số tương tác với các phần tử trong đó.

```dart
var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 9, 9];
```

* **Truy cập vào phần tử thứ `i` trong List**

```dart
  final second = numbers[1];
  print(second); // 2
```

Bạn sử dụng dấu `[]` và điền thứ tự phần tử vào là truy cập được tới phần tử đó.

* **Lấy `index` của một phần tử**

```dart
  final index = numbers.indexOf(9);
  print(index); //8

  final index2 = numbers.indexOf(0);
  print(index2); //-1
```

Bạn sử dụng phương thức `.indexOf()` để tìm `index` của một phần tử nào đó trong List.  Nó sẽ trả về `index` đầu tiên được tìm thấy, bỏ qua các `index` khác. Nếu không tìm thấy sẽ là `-1`.

* **Gán giá trị vào phần tử thứ `i`**

```dart
  numbers[2] = 2;
  print(numbers);
  
  //[1, 2, 2, 4, 5, 6, 7, 8, 9, 9, 9]
```

Vẫn sử dụng việc truy cập vào phần tử thứ `i`, nhưng chúng ta đặt ở bên phải dấu `=` . Gán giá trị mới cho nó. Như vậy là ổn.

* **Thêm một phần tử vào List**

```dart
  numbers.add(10);
  print(numbers);

  //[1, 2, 2, 4, 5, 6, 7, 8, 9, 9, 9, 10]
```

Dùng phương thức `.add()` để thêm một phần tử mới vào danh sách.

* **Xoá một phần tử trong List**

```dart
  numbers.remove(5);
  print(numbers);
  // [1, 2, 2, 4, 6, 7, 8, 9, 9, 9, 10]
  
  numbers.remove(2);
  print(numbers);
  // [1, 2, 4, 6, 7, 8, 9, 9, 9, 10]
```

Ta dùng phương thức `.remove()` để xoá đi một phần tử trong danh sách.

### Mutable & Immutable List

#### Ví dụ

Bạn hãy xem một ví dụ sau:

```dart
  var books = ['iOS', 'Android', 'Flutter', 'Kotlin', 'Swift', 'Dart'];
  books.add('C#');
  books.remove('Android');
  print(books);

  final names = ['Tèo', 'Tí', 'Na', 'Lam', 'Hồng', 'Dần'];
  names.add("Tỵ");
  names.remove('Na');
  print(names);
```

Bạn có thấy điều gì không ổn trong ví dụ trên không?

> `var` là biến số, nên giá trị có thể thay đổi được. Nhưng mà `final` lại là hằng số, tại sao giá trị vẫn có thể thay đổi được.

Ta tiếp tục xem ví dụ tiếp theo nhoé

```dart
  books = ['PHP', 'HTML', 'CSS', 'JS'];
  print(books);

  names = ['Dũng', 'Đài', 'Hải', 'Cường']; //error
  print(names);
```

May quá, chúng ta đã có lỗi xãy ra với `final` List rồi. Còn `var` List vẫn bình an vô sự.

#### Giải thích

* Với `var` hay `final` List thì sẽ không liên quan tới tới việc một danh sách có thể thay đổi được (**mutable**) hay không thay đổi được (**immutable**)
* Chúng sẽ liên quan tới địa chỉ vùng nhớ. Tức là con trỏ.
* `var` List thì mọi chuyện khá là đơn giản. Khi nó là biến. Nó có quyền:
  * Thay đổi sang vùng nhớ khác (ví dụ 2)
  * Thay đổi nội dung của nó (ví dụ 1)
* `final` List thì mọi chuyện sẽ phúc tạp hơn. Khi con trỏ sẽ trỏ tới vùng nhớ lúc được cấp phát lần đầu tiên. Nó sẽ:
  * Không chuyển sang vùng nhớ khác hay gán con trỏ khác cho nó (ví dụ 2)
  * Nhưng nó có thể thay đổi nội dung liên quan tới vùng nhớ mà nó trỏ vào (ví dụ 1)

> Thật là mệt mỏi. Đúng là trong hư có thật mà trong thật có hư.

#### Deeply immutable lists

Và giờ bạn quyết tâm tạo một danh sách mà bất khả xâm phạm. Dù thay đổi vùng nhớ hay là thay đổi nội dung đi cho nữa, thì đều không được hết. Cách giải quyết khá là đơn giản, thay bằng từ khoá `const` là xong.

Ví dụ như sau:

```dart
const names = ['Tèo', 'Tí', 'Na', 'Lam', 'Hồng', 'Dần'];

// or

final names = const ['Tèo', 'Tí', 'Na', 'Lam', 'Hồng', 'Dần'];
```

Nhìn hơn phèn một chút, nhưng bạn sẽ an tâm là cho dù gán hay `add` hay `remove` đều không thể làm được.

Tuy nhiên, nhiều bạn cố chấp vẫn muốn tạo một danh sách là `final` vì giá trị phải được tính toán lúc run-time. Nhưng lại muốn nó là **immutable**. Dart sẽ cho chúng ta một giải pháp, đó là `List.unmodifiable()`. Ví dụ:

```dart
final modifiableList = [DateTime.now(), DateTime.now()];
final unmodifiableList = List.unmodifiable(modifiableList);
```

Bạn sẽ có danh sách `unmodifiableList` được tạo ra từ `modifiableList` lúc run-time. Và nó sẽ không bị thay đổi được. 

> Bạn hài lòng với từ khoá `final` rồi chứ.

### List Properties

Ta tìm hiểu các thuộc tính cơ bản của một List qua các ví dụ sau. Giả sử bạn có List như thế này.

```dart
const drinks = ['water', 'milk', 'juice', 'soda'];
```

* **First & Last elements**

```dart
drinks.first  // water
drinks.last   // soda
```

Với `.first` & `.last` là bạn nhanh chóng truy cập vào phần tử đầu tiên và cuối cùng của một danh sách.

* **Checking if a list contains any elements**

Kiểm tra xem thử danh sách chúng ta có phần tử hay không có phần tử nào cả, bằng 2 thuộc tính sau

```dart
drinks.isEmpty     // false
drinks.isNotEmpty  // true
```

* **Length**

Sử dụng thuộc tính `.length` để xem có bao nhiêu phân tử trong một danh sách.

```dart
drinks.length == 0 // false
drinks.length > 0  // true
```

* **Loop**

Nôm na thì bạn sẽ có 2 cách duyệt từng phần tử trong một List. Đó là `for` và `forEach`. Xem ví dụ nhoé.

```dart
// for in
for (var item in drinks) {
  print(item);
}

// forEach
desserts.forEach((dessert) => print(dessert));

desserts.forEach(print);
```

Với cách cuối được gọi là `tear-off`, bạn sẽ lượt bỏ qua những cú pháp không cần thiết.

### Exten for Flutter

Bây giờ chúng ta lại sang phần crossover giữa Dart & Flutter. Vì chúng nó có sự ảnh hưởng qua lại lẫn nhau. Nên sẽ có một số toán tử được thêm vào như sau:

#### **Spread operator**

Để bắt đầu, bạn xem qua ví dụ sau nhoé

```dart
  const list1 = ["1", "2", "3", "4", "5"];
  const list2 = ["A", "B", "C", "D", "E"];
  
  const list3 = ["0", ...list1, "&", ...list2, "F"];
  
  print(list3);
  //[0, 1, 2, 3, 4, 5, &, A, B, C, D, E, F]
```

Bạn cũng đủ đoán ra ý nghĩa của toán tử `...` rồi chứ. Nó được gọi là **spread operator**. Giúp bạn tạo một danh sách mới bằng việc thêm một danh sách khác vào trong nó.

Ngoài ra, áp dụng với List là **nullable**, ta sẽ có toán tử **null spread operator** `(...?)`. Bạn xem ví dụ nhoé.

```dart
  List<String>? coffees;
  final hotDrinks = ['milk tea', ...?coffees];
  print(hotDrinks);
```

Bạn có một danh sách mới, tạo từ việc mở rộng 1 danh sách cộng thêm một List **nullable**. Nếu như ví dụ thì nó không có ý nghĩa mấy. Chắc chúng ta sẽ tìm hiểu sau.

#### Collection if

Một toán tử mới, à mà đúng ra là 1 cách dùng mới khá là bá đạo. Khi bạn có thể thêm 1 câu lệnh điều kiện `if` vào trong 1 List, để quyết định rằng có nên thêm vào 1 phần tử tiếp theo hay không.

Xem ví dụ là hiểu liền nhoé

```dart
  const isOkay = false;
  const list4 = ['A', 'B', if (isOkay) 'C', 'D'];
  
  print(list4);
  [A, B, D]
```

Trong đó,

* Bạn chú ý tới các `const` dùng để khai báo là các hằng số và không thay đổi được
* Tuy nhiên `list4` có số lượng các phần tử phụ thuộc vào `isOkay`
* Cụ thể là việc quyết định có thêm `C` vào trong List hay không tuỳ thuộc vào điều kiện `if` kia

Bạn hãy thử thay đổi giá trị `isOkay = true`, và cảm nhận kết quả nhoé.

#### **Collection for**

Và bạn nghĩ thử xem là tụi Dart có dám cho `for` và trong 1 List nữa hay không. Xem ví dụ code sau nhoé:

```dart
  const list5 = ['1', '2', '3', '4', '5'];
  var list6 = ['0', for (var item in list5) item, '6', '7'];
  print(list6);
```

Trong đó

* Phải sử dụng `var` cho khai báo danh sách cuối cùng rồi.
* `list6` được tạo nên bởi việc lặp các phần tử `list5` và trong bản thân danh sách gán cho nó.

Một nước đi mà chúng ta không ngờ được.

---

## Set

Trong Dart, **Set** cũng là một kiểu cấu trúc dữ liệu tập hợp. Nhưng các phần tử trong tập hợp là duy nhất. Ta có một số đặc tính riêng của **Set** như sau:

* Là tập hợp mà mỗi phần tử tồn tại trong đó là duy nhất
* Các phần tử có cùng kiểu dữ liệu
* Thứ tự các phần tử không ảnh hưởng và không quan trong. **Set** luôn duy trì một thứ tự đặc biết dựa theo giá trị của các phần tử.
* `index` trong Set không có ý nghĩa
* **Set** có tốc độ truy cập & xử lý nhanh hơn List. Đặt biệt với các dữ liệu lớn
* Ta có thể sử dụng các phép toán logic trên Set

Chúng ta sẽ bắt đầu tìm hiểu **Set** thông qua các ví dụ sau.

### Create Set

Để tạo một Set, bạn sử dụng toán tử `{}`. Các giá trị của tập hợp sẽ được đặt vào trong 2 dấu đó. Ví dụ như sau:

```dart
final Set<int> someSet = {};

//or

final someSet = <int>{};
```

Trên là 2 cách bạn tạo một **Set** trong Dart.

* Cách 1 là bạn khai báo một tập hợp với kiểu dữ liệu là `Set<int>`. Kiểu dữ liệu các phần tử trong tập hợp là `int`. Sau đó, bạn gán bằng một tập hợp rỗng `{}`
* Cách 2 là bạn tạo ra một biến trước. Sau đó, gán cho biến đó bằng việc khởi tạo một đối tượng tập hợp với generic type là `int`

Hoặc bạn có thể tạo ra một tập hợp bằng cách khai báo một biến và gán bằng **set literal**. Xem ví dụ code nhoé

```dart
  final anotherSet = {1, 2, 3, 1};

  print(anotherSet);
  // {1, 2, 3}
```

Mặc dù bạn cố tình cho 2 lần giá trị `1` vào trong **set literal**. Tuy nhiên, kết quả **print** ra sẽ chỉ có 1 giá trị `1` mà thôi.

### Operations

Ta sẽ có một số toán tử cơ bản cho Set như sau. À, ta sử dụng `someSet` và `anotherSet` làm ví dụ minh hoạ luôn nhoé.

* **Checking the contents**

Đâu tiên là kiểm tra xem một phần tử nào đó có trong tập hợp của chúng ta hay là không. Ví dụ như sau:

```dart
print(anotherSet.contains(1));  // true
print(anotherSet.contains(999)); // false
```

Bạn sử dụng toán tử `.contains()` để kiểm tra nhoé. Cũng đơn giản thôi.

* **Adding single elements**

Cũng tương tự như với List, bạn sử dụng toán tử `.add` để thêm một phần tử vào tập hợp. Ví dụ như sau:

````dart
  someSet.add(22);
  someSet.add(7);
  someSet.add(22);
  
  print(someSet); // {22, 7}
````

Khi bạn `.add` 2 lần 1 giá trị thì Set sẽ nhận một cái thôi. Kết quả in ra thì như trên.

* **Removing elements**

Lại cũng tương tự như List, bạn sử dụng toán tử `.remove` để xoá đi một phần tử trong tập hợp. Xem ví dụ code nha.

```dart
someSet.remove(7);
```

* **Adding multiple elements**

Khi bạn chán việc theo 1 cái phần tử lần lượt rồi. Và khi bạn muốn thêm nhiều phần tử thì sử dụng toán tử `.addAll` . Tham số truyền vào là một danh sách. Xem ví dụ code sau.

```dart
  someSet.addAll([1, 2, 3, 4]);
```

Và nếu trong danh sách kia có phần tử nào trùng lặp với các phần tử trong tập hợp thì nó không được thêm vào.

### Logic Operations

Ta sẽ có 2 phép logic cơ bản cho Set, đó là giao (**Intersections**) và hợp (**Unions**).

* **Intersections**

Ta sẽ có tập hợp là giao của 2 tập hợp, thì tập hợp đó sẽ có các phần tử chung cho 2 tập hợp kia. Bạn sẽ sử dụng toán tử `.intersection()` để thực hiện phép giao này. Xem ví dụ code nhoé.

```dart
  final setA = {8, 2, 3, 1, 4};
  final setB = {1, 6, 5, 4};
  
  final intersection = setA.intersection(setB);
  
  print(intersection); //{1, 4}
```

Vì `{1, 4} ` đều có trong cả 2 `setA` & `setB`. Nên khi sử dụng toán tử `.intersection`. Thì kết quả trả về là một tập hợp với giá trị là `{1, 4}`.

* **Unions**

Phép hợp sẽ tạo nên một tập hợp mới, bao gồm các phần tử của cả hai tập hợp. Bạn sẽ sử dụng toán tử `.union()` để thực hiện việc này. Xem ví dụ nhoé.

```dart
  final union = setA.union(setB);
  print(union);
  
  //    {8, 2, 3, 1, 4, 6, 5}
```

Phép hợp này đại diện cho tất cả các phần tử từ cả hai tập hợp. Hãy nhớ rằng: các tập hợp không có yêu cầu phải theo thứ tự.

#### **Other operations**

Cũng giống như List, Set cũng có các toán tử như List về mặt ý nghĩa và cách sử dụng. Nên mình sẽ liệt kê ra thôi.

- collectionif
- collectionfor
- for-in loops
- forEach loops
- spread operators

---

## Map

**Map** trong **Dart** cũng là một cấu trúc dữ liệu tập hợp. **Map** được xem là một kiểu từ điển, tức là với mỗi `key` sẽ có `value` tương tứng. Ta có các đặc điểm sau cho Map.

* Các phần tử là 1 cặp giá trị, bao gồm `key` & `value`
* Không có yêu cầu về thứ tự trong Map
* Các `key` phải cũng kiểu dữ liệu với nha và `value` cũng vậy
* Giữa `key` & `value` có thể khác kiểu dữ liệu
* 1 `key` trong Map là tồn tại duy nhất.
* Để tìm tới giá trị của một phần tử thì phải dựa vào `key` của nó

### Create Map

Ta sẽ sử dụng các dấu `{}` để tạo ra một Map. Tuy nhiên, sẽ có chút khác biệt lại **generic type** cung cấp vào giữa 2 dấu `<>`. Bạn sẽ cần tới 2 **type** cho `key` & `value`. Cú pháp đơn giản sẽ như sau:

```dart
Map<type_key, type_value> map_name = {};
```

#### **Tạo một Map rỗng**

Bạn xem ví dụ nha:

```dart
  //1
  final Map<String, int> emptyMap = {};
  
  //2
  final emptyMap = <String, int>{};
  
  //3
  final emptySomething = {};
```

Trong đó:

* Cách 1 & 2 thì ý nghĩa giống như List & Set đã trình bày ở trên.
* Cách 3 thì tạo 1 Map rỗng mà không cho biết kiểu dữ liệu như thế nào, nên chúng sẽ nhận kiểu như sau `<dynamic, dynamic>`.

> Set & Map có cùng kiểu gán một tập hợp rỗng với dấu `{}`. Nên bạn phải cẩn thận nha.

#### Tạo một Map với giá trị

Bạn xem ví dụ sau:

```dart
final foods = {
  'cakes': 20,
  'pies': 14,
  'donuts': 37,
  'cookies': 141,
};

final numbers = {
  1: 'one',
  2: 'two',
  3: 'three',
  4: 'four', 
};

print(foods); //{cakes: 20, pies: 14, donuts: 37, cookies: 141}

print(numbers); //{1: one, 2: two, 3: three, 4: four}
```

Cách này tương tự với việc tạo bằng Map rỗng, tuy nhiên chúng ta sẽ thêm các cặp giá trị vào giữa 2 dấu `{}`. Dart sẽ tự động nhận diện ra được kiểu cho `key` & `value`. Như ví dụ thì:

* `foods` có kiểu dữ kiệu `<String, int>`
* `numbers` có kiểu dữ liệu là `<int, String>`

Ta có một số lưu ý như sau:

* Keys sẽ phải đảm bảo tất cả là duy nhất
* Về Values thì có thể trung nhau vẫn được

Ví dụ như sau:

```dart
  final map1 = {
    'A' : 1,
    'B' : 2,
    'C' : 4,
    'B' : 3
  }; // error

    final map2 = {
    'A' : 1,
    'B' : 2,
    'C' : 3,
    'D' : 3
  };
```

### Operations

Cũng như List, với Map ta cũng sẽ có một số toán tử cơ bản liên quan tới việc truy cập các phần tử. Map sẽ có đặc trưng thông qua `key` (List thì thông qua `index`). Ta sẽ tìm hiểu thông qua các ví dụ sau:

* **Accessing elements from a map**

Vấn đề đâu tiên cần bạn thành thạo đó là truy cập tới phần tử trong Map, thông qua `key` của nó. Ví dụ code như sau:

```dart
  final numberOfCakes = foods['cakes'];
  print(numberOfCakes); //20
```

Chúng ta sẽ đặt `key` vào trong dấu `[]` để truy cập tới đúng phần tử mà chúng ta mong muốn

* **Adding elements to a map**

Xem ví dụ trước nhoé.

```dart
  foods['brownies'] = 99;
  print(foods);
  //{cakes: 20, pies: 14, donuts: 37, cookies: 141, brownies: 99}
```

Khi thêm 1 phần tử mới vào Map, thì cũng giống như ra truy cập vào phần tử qua `key`. Sau đó, ta gán giá trị vào. Vì `key` chưa tồn tại trong Map, nên Map sẽ tạo thêm một phần tử theo `key` đó và `value` bằng giá trị ta gán vào.

* **Updating an element**

Tương tự như cách thêm một phần tử, với việc cập nhật lại giá trị thì ta sẽ dùng `key` là phần tử đã có trong Map. Sau đó, gán giá trị mới vào.

```dart
foods['cakes'] = 1;
```

* **Removing elements from a map**

Còn xoá đi một phần tử, thì bạn dùng toán tử `.remove()`. Ta sẽ truyền `key` của phần tử muốn xoá vào. Xem ví dụ nhoé.

```dart
foods.remove('cookies');
```

### Map Properties

Vẫn là một số thuộc tính quen thuộc, như:

* Rỗng `.isEmpty`
* Không rỗng `.isNotEmpty`
* Số lượng phần tử trong Map `.length`
* Lấy tất cả các keys `.keys`
* Lấy tất cả các value `.values`

Xem ví dụ nhoé.

```dart
  print(foods.isEmpty); // false
  print(foods.isNotEmpty); // true
  print(foods.length); // 4
  print(foods.keys);
  print(foods.values);
```

### **Checking for key or value existence**

Để kiểm tra tồn tại của một `key` hay `value` nào đó có thực sự tồn tại trong Map hay không. Bạn sẽ sử dụng 2 toán tử sau: `.containsKey` & `.containsValue`. Ví dụ:

```dart
  print(foods.containsKey('pies'));
  print(foods.containsValue(42));
```

### **Looping over elements of a map**

Vì Map có cấu trúc khác với List, nên việc lặp hay duyệt các phần tử cũng có sự khác nhau. Và ta sẽ có các kiểu lặp và duyệt các phần tử trong Map như sau:

* **For in Map**

Sử dụng vòng lặp `for in` để duyệt qua lần lượt các phần tử trong Map. Ta sẽ thử với ví dụ sau:

```dart
  for (var item in foods) {
    print(foods[item]);
  }
```

Rất buồn là nó sẽ gặp lỗi. Dart không thể nào duyệt qua Map như vậy. Ta sẽ tìm hiểu nguyên nhân sau nhoé. Ta sẽ fix như sau:

```dart
  for (var item in foods.keys) {
    print(foods[item]);
  }
```

Đơn giản là duyệt qua `keys` thôi.

* **ForEach**

Với ForEach thì có vẻ đơn giản hơn xí. Khi ta duyệt qua từng cặp `key` và `value`. Xem ví dụ nhoé.

```dart
foods.forEach((key, value) => print('$key -> $value'));
```

Hoặc có cách viết tương tự như sau:

```dart
  for (final entry in foods.entries) {
    print('${entry.key} -> ${entry.value}');
  }
```

Trong đó

* `foods.entries` sẽ là cách bạn lấy được tất cả các thực thể hay các phần tử mà Map có
* Mỗi thực thể là 1 cặp giá trị `key` & `value`

---

## Handling collections

Trong nhiều ngôn ngữ lập trình thì các **collections** (List, Set, Map) đều có và đôi khi chúng có thể gọi tên khác nhau. Nhưng hầu như về bản chất thì sẽ giống nhau và ta sẽ có những toán tử cao cấp hơn để quản lý hay xử lý các phần tử trong các *collections*. Gọi là **higher order methods** (ví dụ: *map, filter, reduce, ..*).

### map

Đây là toán tử `map` (hay gọi là **mapping**) chứ không phải là kiểu dữ liệu Map. Tên tiếng Việt thân thiện sẽ gọi là

> Phép ánh xạ


Phép ánh xạ cho một collections sẽ giúp bạn thực hiện một hành động trên từng phần tử của tập hợp, hiểu nôm na như là một vòng lặp. Phương thức `map` là một *anonymous function* và kết quả *return* lại là một collections.

Bạn xem qua ví dụ code sau nhoé:

```dart
const nums = [1, 2, 3, 4];
final squares = nums.map((nums) => nums * nums);

print(squares); //(1, 4, 9, 16)
```

Trong đó,

* Yêu cầu bài toán là tạo một danh sách mới với các phần tử sẽ là bình phương của từng phần tử List `nums`
* Sử dụng toán tử `map` và tham số chính là `nums` & phép biến đổi là `nums * nums`
* Kết quả trả về cho `squares` và chúng ta có một danh sách mới

Quan trọng là danh sách `nums` không bị thay đổi. Đây là điểm khác với các toán tử lặp khác.

```dart
 print(nums); //[1, 2, 3, 4]
```

### Iterable

Nếu bạn tinh ý thì sẽ thấy khi `print` lại có 2 kiểu khác nhau, đó là 2 dấu `()` và `[]`. Với dấu `()` thì gọi là **Iterable of int**.

**Iterable** là một lớp generic biểu diễn tập hợp dữ liệu mà có thể duyệt qua hết phần tử này đến phần tử khác. Nghĩa là nó hỗ trợ `moveNext()` để đi đến phần tử tiếp theo, lấy dữ liệu phần tử hiện tại bằng `iterator.current`.

Thường thì Iterable được tạo ra, liên kết với một loại kiểu dữ liệu tập hợp khác như List, Map ... Từ Iterable bạn có thể chuyển đổng sang List & Set thông qua các toán tử `.toList()` & `.toSet()`

#### Filtering

Tiếp theo, bạn có thể lặp và lọc một tập hợp để thu lại được một tập hợp nhỏ hơn. Chúng ta sử dụng toán tử `where`. Cách dùng cũng tương tự như `map`. Nhưng nó sẽ cho phép các phần tử có thể được thêm vào tập hợp mới, nếu thoải mãn được một điều kiện nào đó.

Xem ví dụ code nhoé!

```dart
final evens = squares.where((square) => square.isEven);
print(evens); //(4, 16)
```

Trong đó:

* Kết quả trả về là một tập hợp kiểu **Iterable**
* Điều kiện lọc ở đây là `.isEven` tức là lặp ra các phần tử chẵn từ list `squares`

#### reduce

Đây được xem là toán tử hợp nhất. Khi bạn muốn tính toán dựa trên toàn bộ số phần tử của tập hợp. Ví dụ: tính tổng các phần tử trong tập hợp. Bạn có thể tuỳ ý thực hiện việc tính toán hoặc hợp nhất theo một quy luật nào đó mà bạn nghĩ ra.

Xem ví dụ:

```dart
const amounts = [199, 299, 299, 199, 499];
final total = amounts.reduce((sum, element) => sum + element);
print(total); //1495   
```

Trong đó:

* Cứ mỗi bước lặp thì `sum` sẽ được cộng thêm `element` vào.
* Sau đó `sum` sẽ gán lại cho `sum` ở bước lặp tiếp theo

#### fold

Đây là toán tử tối ưu hơn `reduce`, nếu trong trường hợp danh sách rỗng thì bạn sẽ gặp lỗi. Và `fold` sẽ bắt bạn cung cấp giá trị ban đầu khi thực hiện công việc hợp nhất này.

Xem ví dụ nhoé

```dart
final total2 = amounts.fold(
  0,
  (int sum, element) => sum + element,
);
print(total2);
```

Trong đó:

* `0` sẽ được gán cho `sum` trong lần chạy đầu tiên
* Các lần chạy tiếp theo thì lệnh `fold` tương tự như `reduce`

#### Sorting

**Sorting** (sắp xếp) được xem là một trong những toán tử kinh điển của mọi thời đại. Quy luật sắp xếp sẽ dựa trên kiểu dữ liệu của tập hợp mà quyết định. Quan trọng là việc sắp xếp vẫn thực hiện trên chính tập hợp đó, nó sẽ thay đổi thứ tự các phần tử. Và nếu bạn áp dụng chon `const` thì sẽ gặp lỗi.

Xem ví dụ code nhoé

```dart
final chars = ["X", "Z", "H", "O", "A", "B", "C", "D", "E"];
chars.sort();
print(chars); //[A, B, C, D, E, H, O, X, Z]
```

Ví dụ này cũng khá là đơn giản và không có gì phức tạp hết. Danh sách của bạn sẽ được làm lại một cách xinh đẹp với thứ tự sắp xếp theo chữ cái tăng dần.

#### Custom sort

Nếu bạn muốn áp dụng một quy luật khác thì có thể sử dụng **custom sort**, thực chất đây là bạn chọn tham số và tạo ra quy luật cho toán tử `sort` ở trên mà thôi.

Xem ví dụ là hiểu liền.

```dart
final nums2 = [1, 9, -1, 22, 87, 57, 999, 246, 7, 0, 12];
nums2.sort((n1, n2) => n2.compareTo(n1));

print(nums2); 
//[999, 246, 87, 57, 22, 12, 9, 7, 1, 0, -1]
```

Trong đó:

* Điều kiện so sánh các phần tử là `n2.compareTo(n1)`, tạm thời bạn hiểu là chúng sắp xếp ngược

> Nếu có điều kiện thì chúng ta sẽ tìm hiểu các tham số hay các cách để bạn thực hiện so sánh sau nhoé.

#### Reversing

Bạn có cách đơn giản hơn để đão ngược lại danh sách của bạn. Đó chính là toán tử `.reversed`. Thật là may mắn khi bạn có được một tập hợp mới sau khi gọi toán tử đó.

Xem ví dụ code nhoé

```dart
final chartsReversed = chars.reversed;

print(chars);
// [A, B, C, D, E, H, O, X, Z]

print(chartsReversed);
(Z, X, O, H, E, D, C, B, A)
```

Kiểu dữ liệu cho tập hợp trả về bởi toán tử `.reversed` là một kiểu **Iterable**.

#### Combining

Cuối cùng, bạn có thể kết hợp nhiều toán tử **the higher order methods** với nhau. Tương tự như thế giới Rx hay Combine à. Kết quả của toán tử này là đầu vào của toán tử tiếp theo. Bạn sẽ gọi liên tiếp thông qua các dấu `.`.

Xem ví dụ nhoé

```dart
const desserts = ['cake', 'pie', 'donuts', 'brownies'];
final bigTallDesserts = desserts
    .where((dessert) => dessert.length > 5)
    .map((dessert) => dessert.toUpperCase());

print(bigTallDesserts);
//(DONUTS, BROWNIES)
```

Ta sẽ có một tập hợp cuối cùng thông qua 2 lần biến đổi với `where` & `map`. Tuy nhiên, bạn cần chú ý về kiểu dữ liệu của mỗi bước biến đổi. Điều này cực kì quan trọng. Xem ví dụ sau nếu bạn muốn đảo ngược danh sách kia, bằng cách thêm các toán tử `reversed` nhoé.

```dart
final bigTallDesserts = desserts
    .where((dessert) => dessert.length > 5)
    .map((dessert) => dessert.toUpperCase())
    .toList()
    .reversed;
```

Trước khi thực hiện `reversed` thì chúng ta cần biến đổi **Iterable** về **List**. Vì `reversed` không áp dụng cho kiểu **Iterable** được. 

> Tới đây tạm thời kết thúc phần mệt mỏi này nhoé.

## Tạm kết

* Tìm hiểu về các kiểu dữ liệu cấu trúc tập hợp trong Dart, là: List, Set, Map
* Các thuộc tính & phương thức cơ bản của chúng
* Các toán tử nâng cao cho các kiểu dữ liệu tập hợp này
* Kết hợp sử dụng các toán tử lại với nhau

---

Cảm ơn bạn đã theo dõi các bài viết từ **Fx Studio** & hãy truy cập [website](https://fxstudio.dev/) để cập nhật nhiều hơn!
