import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tricktionary/app/providers.dart';

class ClearGameButton extends ConsumerWidget {
  const ClearGameButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.read(p1ScoreProvider.notifier).clearScore("");
        ref.read(p2ScoreProvider.notifier).clearScore("");
      },
      child: Container(
        height: 50,
        width: 50,
        child: Icon(Icons.refresh),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).colorScheme.surfaceVariant,
            // image: DecorationImage(
            //   image: AssetImage('assets/img/skateboard-icon.jpg'),
            //   fit: BoxFit.fill,
            // ),
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
      ),
    );
  }
}
