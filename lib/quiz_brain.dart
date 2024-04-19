import 'question.dart';

class QuizBrain {
  int questionNumber = 0;

  List<Question> _questionBank = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('The Earth is flat.', false),
    Question('Water boils at 100 degrees Celsius.', true),
    Question('Humans can breathe underwater.', false),
    Question('The capital of France is Rome.', false),
    Question('The Great Wall of China is visible from space.', false),
    Question('The human body has 206 bones.', true),
    Question('Mount Everest is the tallest mountain in the world.', true),
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
