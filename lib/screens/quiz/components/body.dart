import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants.dart';
import '../../../controllers/question_controller.dart';
import 'question_card.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController questionController = Get.put(QuestionController());
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: kDefaultPadding),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Obx(
                () => Text.rich(
                  TextSpan(
                    text: "Savol ${questionController.questionNumber.value}",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(color: kSecondaryColor),
                    children: [
                      TextSpan(
                        text: "/${questionController.questions.length}",
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            ?.copyWith(color: kSecondaryColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(thickness: 1.5),
            const SizedBox(height: kDefaultPadding),
            Expanded(
              child: PageView.builder(
                // Block swipe to next qn
                physics: const NeverScrollableScrollPhysics(),
                controller: questionController.pageController,
                onPageChanged: questionController.updateTheQnNum,
                itemCount: questionController.questions.length,
                itemBuilder: (context, index) =>
                    QuestionCard(question: questionController.questions[index]),
              ),
            ),
          ],
        )
      ],
    );
  }
}
