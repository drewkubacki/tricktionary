import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tricktionary/app/providers.dart';
import '../../widgets/score_tracker.dart';
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
            style: TextStyle(
                color: Theme.of(context).colorScheme.background,
                fontWeight: FontWeight.w300)),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.surfaceTint,
        elevation: 0,
        actions: [],
      ),
      backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
      body: SafeArea(
        child: Column(
          children: [
            TrickCarousel(),
            const SizedBox(height: 10),
            ScoreTracker(),
          ],
        ),
      ),
    );
  }
}
