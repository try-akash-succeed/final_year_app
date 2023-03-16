// import 'package:flutter/material.dart';

// class QuizPage extends StatefulWidget {
//   @override
//   _QuizPageState createState() => _QuizPageState();
// }

// class _QuizPageState extends State<QuizPage> {
//   int _currentIndex = 0;
//   int _score = 0;

//   final List<Map<String, Object>> _questions = [    {      'questionText': 'What is the capital of India?',      'answers': [        {'text': 'Mumbai', 'score': 0},        {'text': 'Delhi', 'score': 1},        {'text': 'Chennai', 'score': 0},        {'text': 'Kolkata', 'score': 0},      ],
//     },
//     {
//       'questionText': 'Who is the current CEO of Tesla?',
//       'answers': [        {'text': 'Mark Zuckerberg', 'score': 0},        {'text': 'Sundar Pichai', 'score': 0},        {'text': 'Elon Musk', 'score': 1},        {'text': 'Jeff Bezos', 'score': 0},      ],
//     },
//     {
//       'questionText': 'What is the largest mammal on Earth?',
//       'answers': [        {'text': 'Elephant', 'score': 0},        {'text': 'Blue Whale', 'score': 1},        {'text': 'Hippopotamus', 'score': 0},        {'text': 'Giraffe', 'score': 0},      ],
//     },
//   ];

//   void _answerQuestion(int score) {
//     setState(() {
//       _score += score;
//       _currentIndex++;
//     });
//   }

//   void _resetQuiz() {
//     setState(() {
//       _currentIndex = 0;
//       _score = 0;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Quiz'),
//       ),
//       body: _currentIndex < _questions.length
//           ? Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   _questions[_currentIndex]['questionText'],
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 ...(_questions[_currentIndex]['answers'] as List<Map<String, Object>>)
//                     .map((answer) => ElevatedButton(
//                           onPressed: () => _answerQuestion(answer['score']),
//                           child: Text(answer['text']),
//                         ))
//                     .toList(),
//               ],
//             )
//           : Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'You have completed the quiz!',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Text(
//                   'Your Score: $_score/${_questions.length}',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 ElevatedButton(
//                   onPressed: _resetQuiz,
//                   child: Text('Restart Quiz'),
//                 ),
//               ],
//             ),
//     );
//   }
// }
