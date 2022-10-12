import 'package:flutter/material.dart';
import 'package:Catelog_App/models/catelog.dart';

class CatelogWidget extends StatelessWidget {
  final catIteam cIteam;

  const CatelogWidget({
    Key? key,
    required this.cIteam,
  })  : assert(cIteam != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print(cIteam.name);
        },
        leading: Image.network(cIteam.image),
        title: Text(cIteam.name),
        subtitle: Text(cIteam.desc),
        trailing: Text(
          "\$${cIteam.price}",
          textScaleFactor: 1.5,
          style:
              TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
