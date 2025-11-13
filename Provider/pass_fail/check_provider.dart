import 'package:flutter/material.dart';

class CheckProvider extends ChangeNotifier {
  // Field to hold the result text
  String _resultText = 'Enter a score and click Check.';

  String _resultText;

  // Method to check the value and update the result
  void checkScore(String scoreText) {
    int? score = int.tryParse(scoreText);

    if (score == null) {
      _resultText = 'Please enter a valid number.';
    } else if (score > 300) {
      _resultText = 'You are passed';
    } else {
      _resultText = 'You are failed';
    }

    // Important: Notify listeners to rebuild the Consumer widget
    notifyListeners();
  }
}
