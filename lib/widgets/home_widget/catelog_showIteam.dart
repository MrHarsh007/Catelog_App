import 'package:Catelog_App/models/catelog.dart';
import 'package:flutter/material.dart';
import 'package:Catelog_App/widgets/home_widget/catelog_showImage.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../pages/homeDetails_page.dart';
import '../../pages/home_page.dart';
import '../../utilis/routes.dart';

class showIteam extends StatelessWidget {
  final catIteam catelog;

  const showIteam({
    Key? key,
    required this.catelog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
            tag: Key(catelog.id.toString()),
            child: showImage(image: catelog.image)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catelog.name.text.bold.lg.color(HomePage.darkBluisColor).make(),
            catelog.desc.text.textStyle(context.captionStyle).make(),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${catelog.price}".text.bold.xl.make(),
                ElevatedButton(
                    onPressed: (() => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                HomeDetailsPage(catelog: catelog)))),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(HomePage.darkBluisColor),
                        shape: MaterialStateProperty.all(StadiumBorder())),
                    child: "Buy".text.make()),
              ],
            ).pOnly(right: 8)
          ],
        ))
      ],
    )).white.roundedSM.square(150).make().py16();
  }
}
