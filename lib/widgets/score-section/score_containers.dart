import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tricktionary/app/providers.dart';

class ScoreContainers extends ConsumerWidget {
  const ScoreContainers({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final p1Updated = ref.watch(p1ScoreProvider);
    final p2Updated = ref.watch(p2ScoreProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            ref.read(p1ScoreProvider.notifier).addLetter(p1Updated);
          },
          child: Container(
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
                Text(p1Updated.toString(),
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inverseSurface,
                    )),
              ],
            ),
          ),
        ),
        const SizedBox(width: 25),
        GestureDetector(
          onTap: () {
            ref.read(p2ScoreProvider.notifier).addLetter(p2Updated);
          },
          child: Container(
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
                Text(p2Updated.toString(),
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inverseSurface,
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
