import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tricktionary/widgets/score-section/control-models/p1_score_control_model.dart';
import '../scroll_control_model.dart';

final scrollableProvider = ChangeNotifierProvider<ScrollControlModel>(((ref) {
  return ScrollControlModel();
}));

final p1ScoreProvider =
    StateNotifierProvider<P1ScoreControlModel, String>(((ref) {
  return P1ScoreControlModel();
}));
