import 'package:flutter_riverpod/flutter_riverpod.dart';

class P1ScoreControlModel extends StateNotifier<String> {
  P1ScoreControlModel() : super('');

  addLetter(String p1Score) {
    state = p1Score += "at";
  }
}
