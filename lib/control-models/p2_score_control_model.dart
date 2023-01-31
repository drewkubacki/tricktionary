import 'package:flutter_riverpod/flutter_riverpod.dart';

class P2ScoreControlModel extends StateNotifier<String> {
  P2ScoreControlModel() : super('');

  addLetterP2(String p2Score) {
    if (p2Score == "") {
      state = p2Score += "S";
    } else if (p2Score == "S") {
      state = p2Score += "k";
    } else if (p2Score == "Sk") {
      state = p2Score += "a";
    } else if (p2Score == "Ska") {
      state = p2Score += "t";
    } else if (p2Score == "Skat") {
      state = p2Score += "e";
    }
  }

  clearScore(String p2Score) {
    state = p2Score += "";
  }
}
