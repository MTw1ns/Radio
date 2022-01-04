// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';

import 'WidGet/Gridview.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
              backgroundColor: Colors.blueAccent.withOpacity(0.2),
              appBar: AppBar(

                actions: [
                  SizedBox(width: 20,),
                  Padding(
                      padding: EdgeInsets.all(6),
                      child: AnimSearchBar(
                        color: Color(0xff406882),
                        style: TextStyle(color: Colors.white),
                        prefixIcon: Icon(Icons.search , color: Colors.black,),
                        width: 350,
                        textController: textController,
                        onSuffixTap: () {
                          setState(() {
                            textController.clear();
                          });
                        },
                      ))
                ],
                backgroundColor: Color(0xff406882),
                centerTitle: true,
                bottom: TabBar(
                  unselectedLabelColor: Colors.white.withOpacity(0.5),
                  labelStyle: TextStyle(fontSize: 16),
                  indicatorColor: Colors.deepPurple,
                  labelColor: Colors.black,
                  tabs: [
                    Column(
                      children: [
                        Icon(
                          Icons.home,
                          size: 30,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.search, size: 30),
                        Text(
                          "Favourite",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              ),
              drawer: Drawer(
                child: Center(
                  child: Text("qwefasdgv"),
                ),
              ),
              body: TabBarView(children: const [Grid(), Text(" ")])),
        ));
  }
}
