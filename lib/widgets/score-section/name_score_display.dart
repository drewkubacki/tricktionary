import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NameScoreDisplay extends ConsumerWidget {
  const NameScoreDisplay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondaryContainer,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Column(
            children: [
              Text("Player 1",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w300,
                    color: Theme.of(context).colorScheme.inverseSurface,
                  )),
              const SizedBox(height: 10),
              Text("Ska--",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inverseSurface,
                  )),
            ],
          ),
        ),
        const SizedBox(width: 25),
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondaryContainer,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Column(
            children: [
              Text("Player 2",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w300,
                    color: Theme.of(context).colorScheme.inverseSurface,
                  )),
              const SizedBox(height: 10),
              Text("S----",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inverseSurface,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
