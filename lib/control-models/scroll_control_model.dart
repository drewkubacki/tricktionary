import 'dart:math';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../examples/tricks.dart';

class ScrollControlModel extends ChangeNotifier {
  final CarouselController itemCarouselController;

  ScrollControlModel() : itemCarouselController = CarouselController();
  final trickListLength = tricks.length;

  void scrollToItem() async {
    var indexValue = Random().nextInt(trickListLength);
    itemCarouselController.animateToPage(indexValue,
        duration: const Duration(seconds: 1));
  }
}
