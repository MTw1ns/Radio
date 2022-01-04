import 'package:flutter/material.dart';
import 'package:radio/WidGet/Gridtile.dart';
class Grid extends StatelessWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(

      padding: EdgeInsets.all(MediaQuery.of(context).size.height/80),
      crossAxisCount: 2,
      childAspectRatio: 1,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      children: [

        grigtile(),
        grigtile(),
        grigtile(),
        grigtile(),
        grigtile(),
        grigtile(),
        grigtile(),
        grigtile(),
        grigtile(),
        grigtile(),
        grigtile(),
        grigtile(),
      ],
    );
  }
}
