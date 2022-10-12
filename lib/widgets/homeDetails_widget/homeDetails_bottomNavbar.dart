import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/catelog.dart';
import '../../pages/home_page.dart';
import '../../utilis/routes.dart';

class HomeDetailsBottomNavbar extends StatelessWidget {
  final catIteam catelog;

  const HomeDetailsBottomNavbar({
    Key? key,
    required this.catelog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HomePage.creamColor,
      child: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: EdgeInsets.zero,
        children: [
          "\$${catelog.price}".text.bold.xl4.red600.make(),
          ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.cartRoutes);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(HomePage.darkBluisColor),
                      shape: MaterialStateProperty.all(StadiumBorder())),
                  child: "Add to Cart".text.xl.make())
              .wh(120, 40),
        ],
      ).p32(),
    );
  }
}
