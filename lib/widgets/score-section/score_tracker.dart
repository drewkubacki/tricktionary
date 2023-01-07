import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tricktionary/widgets/score-section/random_selection_button.dart';
import 'score_containers.dart';

class ScoreTrackerSection extends ConsumerWidget {
  const ScoreTrackerSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;

    return Container(
      height: height / 2.5,
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.15),
              offset: const Offset(0, 15),
              blurRadius: 25,
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //Creates the container in which the Image is rounded within
          Container(
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/img/skateboard-icon.jpg'),
                  fit: BoxFit.fill,
                )),
          ),
          //Section which holds the player name and scores
          const ScoreContainers(),
          //Button to filter through the list of tricks -> Will need to store the index value and remove from list
          const RandomSelectionButton(),
        ],
      ),
    );
  }
}
