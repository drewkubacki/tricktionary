import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tricktionary/widgets/trick_card.dart';
import 'dart:math';

import '../app/providers.dart';
import '../examples/tricks.dart';

class TrickCarousel extends ConsumerStatefulWidget {
  const TrickCarousel({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TrickCarouselState();
}

class _TrickCarouselState extends ConsumerState<TrickCarousel> {
  final itemCarouselController = CarouselController();
  final trickListLength = tricks.length;

  Future scrollToItem() async {
    var indexValue = Random().nextInt(trickListLength);
    itemCarouselController.animateToPage(indexValue,
        duration: Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
            height: height / 2.6,
            child: CarouselSlider.builder(
              options: CarouselOptions(
                height: 400,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
              itemCount: tricks.length,
              carouselController:
                  ref.read(scrollableProvider).itemCarouselController,
              itemBuilder: (context, index, realIndex) =>
                  TrickCard(trick: tricks[index]),
            )),
        SizedBox(height: 10),
      ],
    );
  }
}
