import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tricktionary/widgets/score-section/clear_game_button.dart';
import 'package:tricktionary/widgets/score-section/random_selection_button.dart';
import 'score_containers.dart';
import 'package:tricktionary/app/providers.dart';

class ScoreTrackerSection extends ConsumerWidget {
  const ScoreTrackerSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(15),
      width: width / 1.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //Section which holds the player name and scores
          ScoreContainers(),
          //Button to filter through the list of tricks -> Will need to store the index value and remove from list

          Container(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: RandomSelectionButton()),
                SizedBox(width: 10),
                ClearGameButton(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
