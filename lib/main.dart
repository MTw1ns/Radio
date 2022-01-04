// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'WidGet/Gridview.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2, child:
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:  Colors.blueAccent.withOpacity(0.2),
        appBar: AppBar(

          actions: [
            Padding(padding: EdgeInsets.only(right: 10),
                child:
            Icon(Icons.search, size: 30, color: Colors.black,))

          ],
          backgroundColor:  Color(0xff406882),
          centerTitle: true,
          bottom: TabBar(
            unselectedLabelColor: Colors.white .withOpacity(0.5),
            labelStyle: TextStyle(fontSize: 16),
            indicatorColor: Colors.deepPurple,
            labelColor: Colors.black,
            tabs: [
            Column(
              children: [
              Icon(Icons.home , size: 30,),
              Text("Home" , style: TextStyle(fontWeight: FontWeight.bold),)

            ],),
            Column(children: [
              Icon(Icons.search, size: 30),
              Text("Favourite" , style: TextStyle(fontWeight: FontWeight.bold),)

            ],)

          ],),
        ),
        drawer: Drawer(
          child: Center(child: Text("qwefasdgv"),),),
        body: TabBarView(children: const [
          Grid(),
          Text(" ")
        ])
      ),
    ));
  }
}
