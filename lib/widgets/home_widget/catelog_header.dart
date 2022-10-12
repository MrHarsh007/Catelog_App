import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatelogHeader extends StatelessWidget {
  const CatelogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catelog App".text.xl3.bold.color(Colors.black).make(),
        "Trending Product".text.xl2.make(),
      ],
    );
  }
}
