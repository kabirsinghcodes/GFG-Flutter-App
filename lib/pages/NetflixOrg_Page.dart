import 'package:flutter/material.dart';

import '../constraints.dart';

class NetflixOrgPage extends StatelessWidget {
  const NetflixOrgPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Netflix Originals',
              style: CustomTextStyle().txt7,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 2,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (contex, index) {
              return Container(
                width: 200,
                margin: const EdgeInsets.all(5),
                child: Image(
                  fit: BoxFit.fill,
                  image:
                      AssetImage('assets/images/big_poster_${index + 1}.jpg'),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
