import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz/screens/score/chart.dart';

import '../../constants.dart';
import '../../controllers/question_controller.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController qnController = Get.put(QuestionController());
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'Ism: Azizbek',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
              ),
              Text(
                'Jami Savollar: ${qnController.questions.length}',
                style: const TextStyle(
                    fontSize: 24.0, fontWeight: FontWeight.w600),
              ),
              Text(
                'To`g`ri javoblar: ${qnController.numOfCorrectAns}',
                style: const TextStyle(
                    fontSize: 24.0, fontWeight: FontWeight.w600),
              ),
              Text(
                'Xato javoblar: ${qnController.questions.length - qnController.numOfCorrectAns}',
                style: const TextStyle(
                    fontSize: 24.0, fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ChartP(
                  a: (qnController.numOfCorrectAns.toDouble() /
                          qnController.questions.length.toDouble()) *
                      100,
                  b: ((qnController.questions.length.toDouble() -
                              qnController.numOfCorrectAns.toDouble()) /
                          qnController.questions.length.toDouble()) *
                      100,
                ),
              ),
            ],
          ),
        ));
  }
}
