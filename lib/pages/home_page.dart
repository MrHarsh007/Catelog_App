import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:Catelog_App/utilis/routes.dart';
import 'package:Catelog_App/widgets/home_widget/catelog_header.dart';
import 'package:Catelog_App/widgets/home_widget/catelog_list.dart';
import 'package:Catelog_App/widgets/home_widget/catelog_showImage.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:Catelog_App/models/catelog.dart';
import 'package:Catelog_App/models/products.dart';
import 'package:Catelog_App/widgets/catelog_widget.dart';
import 'package:Catelog_App/widgets/darwer.dart';
import 'package:Catelog_App/widgets/iteam_widget.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBluisColor = Color(0xff403b58);

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final url = "https://upcdn.io/kW15awi/raw/catelog-4Kgi.json";

  List iteams = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    // final response = await http.get(Uri.parse(url));
    // final catJson = response.body;
    var catJson = await rootBundle.loadString("assets/files/catelog.json");
    var decodeData = jsonDecode(catJson);
    var productData = decodeData["products"];
    CatelogModel.catiteams = List.from(productData)
        .map<catIteam>((catiteams) => catIteam.fromMap(catiteams))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, MyRoutes.cartRoutes);
          },
          child: Icon(CupertinoIcons.cart),
          backgroundColor: HomePage.darkBluisColor,
        ),
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatelogHeader(),
                if (CatelogModel.catiteams != null &&
                    CatelogModel.catiteams.isNotEmpty)
                  CatelogList().py16().expand()
                else
                  CircularProgressIndicator().centered().expand(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class showIteam extends StatelessWidget {
//   final catIteam catelog;

//   const showIteam({Key? key, required this.catelog}) : assert(catelog != null);

//   @override
//   Widget build(BuildContext context) {
//     return VxBox(
//         child: Row(
//       children: [
//         Hero(
//             tag: Key(catelog.id.toString()),
//             child: showImage(image: catelog.image)),
//         Expanded(
//             child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             catelog.name.text.bold.lg.color(HomePage.darkBluisColor).make(),
//             catelog.desc.text.textStyle(context.captionStyle).make(),
//             10.heightBox,
//             ButtonBar(
//               alignment: MainAxisAlignment.spaceBetween,
//               buttonPadding: EdgeInsets.zero,
//               children: [
//                 "\$${catelog.price}".text.bold.xl.make(),
//                 ElevatedButton(
//                     onPressed: () {},
//                     style: ButtonStyle(
//                         backgroundColor:
//                             MaterialStateProperty.all(HomePage.darkBluisColor),
//                         shape: MaterialStateProperty.all(StadiumBorder())),
//                     child: "Buy".text.make()),
//               ],
//             ).pOnly(right: 8)
//           ],
//         ))
//       ],
//     )).white.roundedSM.square(150).make().py16();
//   }
// }
