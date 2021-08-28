class MenuItem {
  //properties
  String name;
  String thumbnail;
  int count;

  // constructors
  MenuItem(this.name, this.thumbnail, {this.count = 0});

  // dummy data
  static List<MenuItem> dummyData = [
    MenuItem('Cơm gà', 'assets/images/img_2_01.jpeg'),
    MenuItem('Cơm tấm', 'assets/images/img_2_02.jpeg'),
    MenuItem('Cơm chiên dương châu', 'assets/images/img_2_03.jpeg'),
    MenuItem('Phở', 'assets/images/img_2_04.jpeg'),
    MenuItem('Bún bò', 'assets/images/img_2_05.jpeg'),
    MenuItem('Bánh canh', 'assets/images/img_2_06.jpeg'),
    MenuItem('Miến xào', 'assets/images/img_2_07.jpeg'),
    MenuItem('Cháo vịt', 'assets/images/img_2_08.jpeg'),
    MenuItem('Bún chả cá', 'assets/images/img_2_09.jpeg'),
    MenuItem('Mì Quảng', 'assets/images/img_2_10.jpeg'),
  ];
}