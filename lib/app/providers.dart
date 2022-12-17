import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tricktionary/models/trick.dart';

import '../scroll_control_model.dart';

final scrollableProvider = ChangeNotifierProvider<ScrollControlModel>(((ref) {
  return ScrollControlModel();
}));
