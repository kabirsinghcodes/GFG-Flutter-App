import 'dart:math';

import 'package:flutter/material.dart';

import '../constraints.dart';

class PreviewPage extends StatelessWidget {
  const PreviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Previews',
              style: CustomTextStyle().txt7,
            ),
          ),
        ),
        SizedBox(
          height: 170,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (contex, index) {
              return Stack(
                children: [
                  Container(
                    width: 150.0,
                    height: 150.0,
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 4.0,
                        color: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                      ),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/${index + 1}.jpg'),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Image(
                      width: 150,
                      image: AssetImage('assets/images/title_${index + 1}.png'),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
