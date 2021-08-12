void main() {
  print('Hello, Dart! I am Fx Studio');

  /////////// LIST ////////////
  var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 9, 9];
  print(numbers);

  final second = numbers[1];
  print(second);

  final index = numbers.indexOf(9);
  print(index);
  final index2 = numbers.indexOf(0);
  print(index2);

  numbers[2] = 2;
  print(numbers);

  numbers.add(10);
  print(numbers);

  numbers.remove(5);
  print(numbers);
  numbers.remove(2);
  print(numbers);

  //List<String> names = [];
  //var books = <String>[];

  var books = ['iOS', 'Android', 'Flutter', 'Kotlin', 'Swift', 'Dart'];
  books.add('C#');
  books.remove('Android');
  print(books);

  final names = ['Tèo', 'Tí', 'Na', 'Lam', 'Hồng', 'Dần'];
  names.add("Tỵ");
  names.remove('Na');
  print(names);

  books = ['PHP', 'HTML', 'CSS', 'JS'];
  print(books);

  //names = ['Dũng', 'Đài', 'Hải', 'Cường'];
  //print(names);

  const list1 = ["1", "2", "3", "4", "5"];
  const list2 = ["A", "B", "C", "D", "E"];
  const list3 = ["0", ...list1, "&", ...list2, "F"];
  print(list3);

  List<String>? coffees;
  final hotDrinks = ['milk tea', ...?coffees];
  print(hotDrinks);

  const isOkay = false;
  const list4 = ['A', 'B', if (isOkay) 'C', 'D'];
  print(list4);

  const list5 = ['1', '2', '3', '4', '5'];
  var list6 = ['0', for (var item in list5) item, '6', '7'];
  print(list6);

  /////////// SET ////////////
  final Set<int> someSet = {};

  final anotherSet = {1, 2, 3, 1};
  print(anotherSet);

  print(anotherSet.contains(1)); // true
  print(anotherSet.contains(999)); // false

  someSet.add(22);
  someSet.add(07);
  someSet.add(22);
  print(someSet);

  someSet.remove(7);
  print(someSet);

  someSet.addAll([1, 22, 3, 4]);
  print(someSet);

  final setA = {8, 2, 3, 1, 4};
  final setB = {1, 6, 5, 4};
  final intersection = setA.intersection(setB);
  print(intersection);

  final union = setA.union(setB);
  print(union);

  /////////// MAP ////////////
  final Map<String, int> emptyMap = {};
  //final emptyMap = <String, int>{};
  final emptySomething = {};

  final foods = {
    'cakes': 20,
    'pies': 14,
    'donuts': 37,
    'cookies': 141,
  };

  final numbers2 = {
    1: 'one',
    2: 'two',
    3: 'three',
    4: 'four',
  };

  print(foods);
  print(numbers2);

  final map1 = {'A': 1, 'B': 2, 'C': 4, 'B': 3};

  final map2 = {'A': 1, 'B': 2, 'C': 3, 'D': 3};

  final numberOfCakes = foods['cakes'];
  print(numberOfCakes);

  foods['brownies'] = 99;
  foods['cakes'] = 1;
  foods.remove('cookies');
  print(foods);

  print(foods.isEmpty); // false
  print(foods.isNotEmpty); // true
  print(foods.length); // 4
  print(foods.keys);
  print(foods.values);

  print(foods.containsKey('pies'));
  print(foods.containsValue(42));

  for (var item in foods.keys) {
    print(foods[item]);
  }

  foods.forEach((key, value) => print('$key -> $value'));

  for (final entry in foods.entries) {
    print('${entry.key} -> ${entry.value}');
  }

/////////// HANDLING ////////////
  const nums = [1, 2, 3, 4];
  final squares = nums.map((nums) => nums * nums);
  print(squares);
  print(nums);

  final evens = squares.where((square) => square.isEven);
  print(evens);

  const amounts = [199, 299, 299, 199, 499];
  final total = amounts.reduce((sum, element) => sum + element);
  print(total);

  final total2 = amounts.fold(
    0,
    (int sum, element) => sum + element,
  );
  print(total2);

  final chars = ["X", "Z", "H", "O", "A", "B", "C", "D", "E"];
  chars.sort();
  print(chars);

  final nums2 = [1, 9, -1, 22, 87, 57, 999, 246, 7, 0, 12];
  nums2.sort((n1, n2) => n2.compareTo(n1));
  print(nums2);

  final chartsReversed = chars.reversed;
  print(chars);
  print(chartsReversed);

  const desserts = ['cake', 'pie', 'donuts', 'brownies'];
  final bigTallDesserts = desserts
      .where((dessert) => dessert.length > 5)
      .map((dessert) => dessert.toUpperCase())
      .toList()
      .reversed;
  print(bigTallDesserts);
}
