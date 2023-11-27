import 'package:flutter/material.dart';

class QuizQuestion extends StatefulWidget {
  final Color textbuttonColor;
  final String questionText;
  final List<String> answerOptions;
  final String correctAnswer;
  final Function(bool) onAnswerSelected;

  const QuizQuestion({
    Key? key,
    required this.textbuttonColor,
    required this.questionText,
    required this.answerOptions,
    required this.correctAnswer,
    required this.onAnswerSelected,
  }) : super(key: key);

  @override
  _QuizQuestionState createState() => _QuizQuestionState();
}

class _QuizQuestionState extends State<QuizQuestion> {
  String? _selectedAnswer;
  bool _answered = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          widget.questionText,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
        ),
        SizedBox(height: 20),
        ...widget.answerOptions.map((answer) {
          bool isCorrect = answer == widget.correctAnswer;
          bool isSelected = _selectedAnswer == answer;
          Color? buttonColor = isSelected ? (isCorrect ? Colors.green : Colors.red) : null;

          return ElevatedButton(
            onPressed: _answered
                ? null
                : () {
              setState(() {
                _selectedAnswer = answer;
                _answered = true;
              });
              bool isCorrect = answer == widget.correctAnswer;
              widget.onAnswerSelected(isCorrect);
            },
            style: ElevatedButton.styleFrom(
              //primary: Colors.white, // Sets the button's background color
              onPrimary: Colors.white,
              primary: Colors.white,// Sets the text color
              // You can also configure other properties here like padding, elevation, etc.
            ),
            child: Text(answer,style: TextStyle(color: widget.textbuttonColor),),
          );
        }).toList(),
        SizedBox(height: 10),
        if (_answered)
          Text(
            _selectedAnswer == widget.correctAnswer ? '  Correct!' : '  Wrong!',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: _selectedAnswer == widget.correctAnswer ? Colors.green : Colors.red,
            ),
          ),
      ],
    );
  }
}
