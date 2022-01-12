import 'package:flutter/material.dart';
import 'package:gfgapp/pages/constraints.dart';

class profilepage extends StatelessWidget {
  const profilepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Icon(
              Icons.edit,
              size: 30,
            ),
          )
        ],
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          "NETFLIX",
          style: TextStyle(
            color: Colors.red,
            fontSize: 35,
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Text(
                "Who's Watching?",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 90.0),
                  child: netflixAccountImg(1, 'KSC'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: netflixAccountImg(2, 'Nobita'),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 90.0),
                  child: netflixAccountImg(3, 'Shizuka'),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: netflixAccountImg(4, 'Suneo'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90.0),
              child: Row(
                children: [
                  netflixAccountImg(5, 'Dorami'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget netflixAccountImg(int ac, String name) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(7),
        child: Image(
          height: 110,
          width: 110,
          fit: BoxFit.fill,
          image: AssetImage('assets/images/netflixaccimg$ac.jpg'),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      netflixAccName(name),
    ],
  );
}

Widget netflixAccName(String name) {
  return Text(
    name,
    style: CustomTextStyle().txt3,
  );
}
