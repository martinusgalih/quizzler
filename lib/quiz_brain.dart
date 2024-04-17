import 'question.dart';

class QuizBrain {
  int questionNumber = 0;

  List<Question> _questionBank = [
    Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
    Question(q: 'Approximately one quarter of human bones are in the feet.', a: true),
    Question(q: 'A slug\'s blood is green.', a: true),
    Question(q: 'The Earth is flat.', a: false),
    Question(q: 'Water boils at 100 degrees Celsius.', a: true),
    Question(q: 'Humans can breathe underwater.', a: false),
    Question(q: 'The capital of France is Rome.', a: false),
    Question(q: 'The Great Wall of China is visible from space.', a: false),
    Question(q: 'The human body has 206 bones.', a: true),
    Question(q: 'Mount Everest is the tallest mountain in the world.', a: true),
  ];

  bool getQuestionAnswer() {
    return _questionBank[questionNumber].questionAnswer;
  }

  String getQuestionText() {
    return _questionBank[questionNumber].questionText;
  }

  int get questionBankLength {
    return _questionBank.length;
  }

  void nextQuestion() {
    if (questionNumber < _questionBank.length - 1) {
      questionNumber++;
    }
  }
}
