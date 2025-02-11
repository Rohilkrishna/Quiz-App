import 'package:flutter/material.dart';
import 'package:quizapp/data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct answer': questions[i].answers[0],
          'user answer': chosenAnswers[i]
        },
       );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(200),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answerex x out of y question correctly!'),
            const SizedBox(
              height: 30,
            ),
            const Text('List of questions and answers..'),
            const SizedBox(height: 30),
            TextButton(onPressed: () {}, child: const Text('Restart quiz')),
          ],
        ),
      ),
    );
  }
}
