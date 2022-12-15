import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widgets/trick_card.dart';
import '../../widgets/trick_scroller.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tricktionary"),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(Icons.skateboarding),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            TrickScroller(),
          ],
        ),
      ),
    );
  }
}
