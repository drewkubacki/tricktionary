import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrickCardHeader extends ConsumerWidget {
  final String trickName;
  final int trickDifficulty;
  const TrickCardHeader(
      {required this.trickName, required this.trickDifficulty, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(trickName,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inverseSurface,
                  fontWeight: FontWeight.w600,
                  fontSize: 18)),
        ),
      ),
      //Trick Difficulty
      Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 8),
          child: Text("Difficulty: $trickDifficulty",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inverseSurface,
                  fontWeight: FontWeight.w600,
                  fontSize: 14)),
        ),
      ),
    ]);
  }
}
