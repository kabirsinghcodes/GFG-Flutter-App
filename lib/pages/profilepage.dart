import 'package:flutter/material.dart';
import 'package:gfgapp/constraints.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Netflix".toUpperCase(),
          style: CustomTextStyle().txt,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.edit),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Text(
                'Who\'s Watching ?',
                style: CustomTextStyle().txt2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                netflixAccountImg(1, 'Doremon'),
                netflixAccountImg(2, 'Nobita'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                netflixAccountImg(3, 'Shizuka'),
                netflixAccountImg(4, 'Suneo'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                netflixAccountImg(5, 'Dorami'),
                netflixAccountImg(6, 'Gian'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget netflixAccountImg(int ac, String name) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image(
            height: 120,
            width: 120,
            fit: BoxFit.fill,
            image: AssetImage('assets/images/netflixaccimg$ac.jpg'),
          ),
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
}
