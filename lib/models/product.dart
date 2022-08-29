class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

final products = [
  Item(
    id: "pur001",
    name: "iPhone 12 Pro",
    desc: "this is 12th generation phone",
    price: 699,
    color: "#00ac51",
    image: "url",
  )
];

