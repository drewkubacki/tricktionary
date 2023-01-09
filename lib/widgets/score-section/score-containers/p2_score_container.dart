import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../app/providers.dart';

class P2ScoreContainer extends ConsumerWidget {
  const P2ScoreContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final p2Updated = ref.watch(p2ScoreProvider);
    return GestureDetector(
      onTap: () {
        ref.read(p2ScoreProvider.notifier).addLetterP2(p2Updated);
      },
      child: Container(
        height: 120,
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
        child: Align(
          alignment: Alignment.center,
          child: Text(p2Updated.toString(),
              style: TextStyle(
                color: Theme.of(context).colorScheme.inverseSurface,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              )),
        ),
      ),
    );
  }
}
