import 'package:flutter/material.dart';

class P2ScoreControlModel extends ChangeNotifier {
  final String playerTwoScore;
  P2ScoreControlModel() : playerTwoScore = "";

  addLetter(String playerTwoScore) {
    if (playerTwoScore == "") {
      playerTwoScore += "S";
      notifyListeners();
    }
  }
}
