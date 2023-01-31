import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tricktionary/widgets/score-section/score-containers/p1_score_container.dart';
import 'package:tricktionary/widgets/score-section/score-containers/p2_score_container.dart';

class ScoreContainerSection extends ConsumerWidget {
  const ScoreContainerSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: Row(children: [
            Text("Player 1",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.inverseSurface,
                )),
            const Spacer(),
            Text("Player 2",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.inverseSurface,
                )),
          ]),
        ),
        Row(
          children: const [
            Expanded(child: P1ScoreContainer()),
            SizedBox(width: 15),
            Expanded(child: P2ScoreContainer()),
          ],
        ),
      ],
    );
  }
}
