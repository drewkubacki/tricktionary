import 'package:flutter_riverpod/flutter_riverpod.dart';

class P1ScoreControlModel extends StateNotifier<String> {
  P1ScoreControlModel() : super('');

  addLetterP1(String p1Score) {
    state = p1Score;
    if (p1Score.length < 5) {
      state += "Skate"[p1Score.length];
    }
  }

  clearScore(String emptyString) {
    state = emptyString;
  }
}
