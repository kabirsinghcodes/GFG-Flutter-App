import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0, left: 145),
            child: Text(
              "Who's Watching",
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
