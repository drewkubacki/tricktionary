import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../widgets/trick_carousel.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          ],
        ),
      ),
    );
  }
}
