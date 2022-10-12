import 'package:Catelog_App/models/products.dart';

class CatelogModel {
  static List<catIteam> catiteams = [
    //When you have to show only 1 data model...!!!
    // catIteam(
    //     id: 01,
    //     name: "Harsh",
    //     desc: "HarshPorwal",
    //     price: 999,
    //     color: "#33505a",
    //     image: "https://dartpad.dev/dart-192.png")
  ];

  // Get iteam by ID
  catIteam getById(int id) =>
      catiteams.firstWhere((element) => element.id == id, orElse: null);

  // Get iteam by Position
  catIteam getByPosition(int pos) => catiteams[pos];
}

class catIteam {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  catIteam(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory catIteam.fromMap(Map<String, dynamic> map) {
    return catIteam(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        image: map["image"]);
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}
