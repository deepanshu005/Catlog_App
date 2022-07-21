class Item {
  final int? id;
  final String? name;
  final String? desc;
  final num? price;
  final String? color;
  final String? image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}

class CatalogModel {
  static final items = [
    Item(
        id: 005,
        name: "Poco M2 Pro",
        desc: "Sexy looks with Punch hole ",
        price: 13999,
        color: "#33505a",
        image:
            "https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80"),
  ];
}
