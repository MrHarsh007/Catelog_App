import 'package:flutter/material.dart';
import 'package:Catelog_App/pages/homeDetails_page.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/catelog.dart';
import '../../pages/home_page.dart';
import 'catelog_showIteam.dart';

class CatelogList extends StatelessWidget {
  const CatelogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatelogModel.catiteams.length,
      itemBuilder: (context, index) {
        final catelogs = CatelogModel.catiteams[index];
        return InkWell(
            onTap: (() => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomeDetailsPage(catelog: catelogs)))),
            child: showIteam(catelog: catelogs));
      },
    );
  }
}
