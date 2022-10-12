import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../models/catelog.dart';
import '../../pages/home_page.dart';

class HomeDetailsBody extends StatelessWidget {
  final catIteam catelog;
  const HomeDetailsBody({
    Key? key,
    required this.catelog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(children: [
        Container(
          child: Hero(
            tag: Key(catelog.id.toString()),
            child: Image.network(
              catelog.image,
            ),
          ).p16().h32(context),
        ),
        Expanded(
            child: VxArc(
          height: 30,
          arcType: VxArcType.CONVEY,
          edge: VxEdge.TOP,
          child: Container(
            color: HomePage.creamColor,
            width: context.screenWidth,
            child: Column(children: [
              catelog.name.text.bold.xl2.color(HomePage.darkBluisColor).make(),
              catelog.desc.text.textStyle(context.captionStyle).xl.make(),
              10.heightBox,
              "In 2007 Apple debuted the iPhone and every year since they continue to wow with a new iteration that moves design and technology forward. Early game-changing features like Internet connectivity, text messaging and a built-in camera paved the way for the standard smartphone.Massive improvements in the quality of its display, battery power and sound have supported its inaugural claim to reinvent the phone altogether."
                  .text
                  .make()
                  .p20()
            ]).pOnly(top: 36),
          ),
        ))
      ]),
    );
  }
}
