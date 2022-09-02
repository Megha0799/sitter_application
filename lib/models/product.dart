class CatalogModel {
  static List<Item> items = [
    Item(
      id: 1,
      name: "iPhone 12 Pro",
      desc: "this is 12th generation phone",
      price: 699,
      color: "#00ac51",
      image: "https://m.media-amazon.com/images/I/71xkMA+gvYL._SX522_.jpg",
    )
  ];
}

class Item {
  final int id;
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

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  toMap() => {
        "id": id,
        " name": name,
        "desc": desc,
        " price": price,
        "color": color,
        " image": image
      };
}
