import 'package:flutter/material.dart';
import 'package:Catelog_App/models/products.dart';

class IteamWidget extends StatelessWidget {
  final Iteam iteam;

  const IteamWidget({super.key, required this.iteam}) : assert(iteam != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${iteam.name} pressed");
        },
        leading: Image.network(iteam.image),
        title: Text(iteam.name),
        subtitle: Text(iteam.desc),
        trailing: Text(
          "\$${iteam.price}",
          textScaleFactor: 1.5,
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
