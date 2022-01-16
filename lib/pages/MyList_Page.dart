import 'package:flutter/material.dart';

import '../constraints.dart';

class MyListPage extends StatelessWidget {
  const MyListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'My List',
              style: CustomTextStyle().txt7,
            ),
          ),
        ),
        SizedBox(
          height: 250,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (contex, index) {
              return Container(
                height: 200.0,
                width: 150,
                margin: const EdgeInsets.all(5),
                child: Image(
                  fit: BoxFit.fill,
                  image:
                      AssetImage('assets/images/small_poster_${index + 1}.jpg'),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
