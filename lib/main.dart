import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer choosen');
  }

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var questions = ['What\'s your fav color?', 'What\'s your fav animal?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First APP'),
        ),
        body: Column(
          children: [
            Text('The question!'),
            ElevatedButton(
              onPressed: () => print('object'),
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: ((() => print('Answer'))),
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer 3'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer 4'),
            ),
          ],
        ),
      ),
    );
  }
}
