import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tricktionary/app/providers.dart';
import '../../widgets/trick_carousel.dart';

class HomePage extends ConsumerWidget {
  HomePage({super.key});
  final itemCarouselController = CarouselController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollItemModel = ref.watch(scrollableProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("Tricktionary",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [],
      ),
      body: SafeArea(
        child: Column(
          children: [
            TrickCarousel(),
            ElevatedButton(
                onPressed: scrollItemModel.scrollToItem, child: Text("Tricks")),
          ],
        ),
      ),
    );
  }
}
