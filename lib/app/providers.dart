import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../scroll_control_model.dart';

final scrollableProvider = ChangeNotifierProvider<ScrollControlModel>(((ref) {
  return ScrollControlModel();
}));
