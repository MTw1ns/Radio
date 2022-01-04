import 'package:flutter/material.dart';

class card extends StatelessWidget {
  final text;

  card({required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white.withOpacity(.89),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/4.5,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                        child: Image.network(
                            "https://mytuner.global.ssl.fastly.net/media/tvos_radios/kvZca3MVz3.png" , fit: BoxFit.fill,))),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40))),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height/19,
                    child: const Center(
                      child: Text("NGOM FM",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          )),
                    )),
              ],
            )
          ],
        ));
  }
}
