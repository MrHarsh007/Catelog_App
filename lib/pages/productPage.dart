import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:Catelog_App/pages/home_page.dart';
import '../widgets/darwer.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Harsh",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
          child: FutureBuilder(
        builder: ((context, snapshot) {
          var showData = json.decode(snapshot.data.toString());
          return ListView.builder(
            itemCount: showData.length,
            itemBuilder: ((context, index) {
              return Card(
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  leading: Image.network(showData[index]['image']),
                  title: Text(showData[index]['name']),
                  subtitle: Text(showData[index]['desc']),
                  trailing: Text(
                    "\$${showData[index]['price']}",
                    textScaleFactor: 1.5,
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            }),
          );
        }),
        future: DefaultAssetBundle.of(context)
            .loadString("assets/files/products.json"),
      )),
      drawer: MyDrawer(),
    );
  }
}
