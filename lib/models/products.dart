// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class catelogIteam {
  static List<Iteam> iteams = [
    Iteam(
        id: 1,
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12 Gen Bionic Chip",
        price: 35999,
        color: "#33505a",
        image:
            "https://www.bollywoodhungama.com/wp-content/uploads/2021/09/WhatsApp-Image-2021-09-07-at-5.16.34-PM.jpeg"),
  ];
}

class Iteam {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Iteam(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Iteam.fromMap(Map<String, dynamic> map) {
    return Iteam(
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
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}
