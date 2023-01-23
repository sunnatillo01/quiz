import 'package:flutter/material.dart';

import 'package:quiz/screens/welcome/welcome_screen.dart';

import '../quiz/quiz_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff1B56A2),
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text(
            'QUIZ',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 25.0,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Menu',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 100.0,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return cards(imagesAsString[index], 100, 100);
              },
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Kategoriyalar',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 400.0,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    cards(imagesAsString[index], 180.0, 180.0),
                    cards(imagesAsString[index], 180.0, 180.0),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  List<String> imagesAsString = [
    'assets/images/q4.jpg',
    'assets/images/q2.jpg',
    'assets/images/q3.jpg',
    'assets/images/q1.jpg',
    'assets/images/q1.jpg',
    'assets/images/q2.jpg',
    'assets/images/q3.jpg',
    'assets/images/q4.jpg',
  ];
  Widget cards(
    String img,
    double wh,
    double hh,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const QuizScreen();
              },
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 7,
                offset: const Offset(0, 1),
              ),
            ],
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
          ),
          width: wh,
          height: hh,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              img,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
