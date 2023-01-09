import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tricktionary/app/providers.dart';

class ScoreContainers extends ConsumerWidget {
  const ScoreContainers({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final p1Updated = ref.watch(p1ScoreProvider);
    final p2Updated = ref.watch(p2ScoreProvider);
    return IntrinsicWidth(
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              ref.read(p1ScoreProvider.notifier).addLetterP1(p1Updated);
            },
            child: Expanded(
              child: Container(
                padding: const EdgeInsets.all(30.0),
                margin: const EdgeInsets.only(bottom: 15.0),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surfaceVariant,
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade600,
                        offset: const Offset(5, 5),
                        blurRadius: 15,
                      ),
                      // ignore: prefer_const_constructors
                      BoxShadow(
                        color: Colors.white,
                        offset: const Offset(-5, -5),
                        blurRadius: 15,
                      ),
                    ]),
                child: Column(
                  children: [
                    Text("Player 1",
                        style: TextStyle(
                          fontSize: 18,
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
          ),
          SizedBox(width: 15),
          GestureDetector(
            onTap: () {
              ref.read(p2ScoreProvider.notifier).addLetterP2(p2Updated);
            },
            child: Expanded(
              child: Container(
                padding: const EdgeInsets.all(30.0),
                margin: const EdgeInsets.only(bottom: 15.0),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surfaceVariant,
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade600,
                        offset: const Offset(5, 5),
                        blurRadius: 15,
                      ),
                      // ignore: prefer_const_constructors
                      BoxShadow(
                        color: Colors.white,
                        offset: const Offset(-5, -5),
                        blurRadius: 15,
                      ),
                    ]),
                child: Column(
                  children: [
                    Text("Player 2",
                        style: TextStyle(
                          fontSize: 18,
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
          ),
        ],
      ),
    );
  }
}
