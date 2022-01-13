import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gfgapp/constraints.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ImageList movieImages = ImageList();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset('assets/images/sintel.jpg',
                      color: const Color.fromARGB(160, 255, 255, 255),
                      colorBlendMode: BlendMode.modulate),
                  Positioned(
                    top: 65,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        headerTextAndImg('Show Img', imgChecker: false),
                        headerTextAndImg('TV Shows'),
                        headerTextAndImg('Movies'),
                        headerTextAndImg('My Lists'),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 80,
                    left: 0,
                    right: 0,
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            width: 300,
                            image: AssetImage('assets/images/sintel_title.png'),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                  headerTextAndImg('List', size: false),
                                ],
                              ),
                              SizedBox(
                                height: 45,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.white),
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.play_arrow,
                                        color: Colors.black,
                                        size: 35,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Play',
                                        style: CustomTextStyle().txt5,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  const Icon(
                                    Icons.info_outline,
                                    color: Colors.white,
                                  ),
                                  headerTextAndImg('Info', size: false),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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
                height: 180,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: movieImages.imges.length,
                    itemBuilder: (contex, index) {
                      return Container(
                        width: 150.0,
                        height: 150.0,
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 6.0,
                            color: Colors.primaries[
                                Random().nextInt(Colors.primaries.length)],
                          ),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(movieImages.imges[index]),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.queue_play_next_outlined,
            ),
            label: 'Coming Soon',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.download,
            ),
            label: 'Downloads',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: 'More',
          ),
        ],
      ),
    );
  }

  Widget headerTextAndImg(String txt,
      {bool imgChecker = true, bool size = true}) {
    return imgChecker
        ? Text(
            txt,
            style: size ? CustomTextStyle().txt4 : CustomTextStyle().txt6,
          )
        : const Image(
            height: 40,
            image: AssetImage('assets/images/netflix_logo0.png'),
          );
  }
}
