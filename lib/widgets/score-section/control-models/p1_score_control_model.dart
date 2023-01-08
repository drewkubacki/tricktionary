import 'package:flutter_riverpod/flutter_riverpod.dart';

class P1ScoreControlModel extends StateNotifier<String> {
  P1ScoreControlModel() : super('');

  addLetter(String p1Score) {
    if (p1Score == "") {
      state = p1Score += "S";
    } else if (p1Score == "S") {
      state = p1Score += "k";
    } else if (p1Score == "Sk") {
      state = p1Score += "a";
    } else if (p1Score == "Ska") {
      state = p1Score += "t";
    } else if (p1Score == "Skat") {
      state = p1Score += "e";
    }
  }
}
