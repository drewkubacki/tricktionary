import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tricktionary/control-models/p1_score_control_model.dart';
import '../control-models/scroll_control_model.dart';
import '../control-models/p2_score_control_model.dart';

final scrollableProvider = ChangeNotifierProvider<ScrollControlModel>(((ref) {
  return ScrollControlModel();
}));

final p1ScoreProvider =
    StateNotifierProvider<P1ScoreControlModel, String>(((ref) {
  return P1ScoreControlModel();
}));

final p2ScoreProvider =
    StateNotifierProvider<P2ScoreControlModel, String>(((ref) {
  return P2ScoreControlModel();
}));
