import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:velocity_x/velocity_x.dart';

import 'home_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: "Cart".text.bold.xl2.make(),
      ),
      body: Column(
        children: [
          _CartList().p32().expand(),
          "Coming Soon".text.bold.xl5.make().h20(context),
          // Divider(),
          _cardTotal(),
        ],
      ),
    );
  }
}

class _cardTotal extends StatelessWidget {
  const _cardTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            "\$9999".text.xl5.red400.make(),
            30.widthBox,
            ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: "Buying not Supported".text.black.make()));
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(HomePage.darkBluisColor),
                        shape: MaterialStateProperty.all(StadiumBorder())),
                    child: "Buy".text.xl2.make())
                .wh(100, 50),
          ],
        ));
  }
}

class _CartList extends StatefulWidget {
  const _CartList({super.key});

  @override
  State<_CartList> createState() => _CartListState();
}

class _CartListState extends State<_CartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: ((context, index) => ListTile(
            leading: Icon(Icons.done),
            trailing: IconButton(
              icon: Icon(CupertinoIcons.delete),
              onPressed: () {},
            ),
            title: "Iteam 1".text.make(),
          )),
    );
  }
}
