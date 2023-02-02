import 'package:flutter_riverpod/flutter_riverpod.dart';

class P2ScoreControlModel extends StateNotifier<String> {
  P2ScoreControlModel() : super('');

  addLetterP2(String p2Score) {
    state = p2Score;
    if (p2Score.length < 5) {
      state += "Skate"[p2Score.length];
    }
  }

  clearScore(String emptyString) {
    state = emptyString;
  }
}
