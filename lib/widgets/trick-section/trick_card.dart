import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tricktionary/widgets/trick-section/trick_card_header.dart';
import '../../models/trick.dart';

class TrickCard extends ConsumerWidget {
  final Trick trick;
  const TrickCard({required this.trick, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.only(bottom: 30, top: 25, left: 10, right: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant,
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
        ],
        borderRadius: BorderRadius.circular(15.0),
      ),
      //Main Column that aligns Image, Trick Name, Difficulty and Description
      child: Column(
        children: [
          Image.asset(
            trick.image,
            width: width / 1.3,
            fit: BoxFit.fill,
          ),
          TrickCardHeader(
            trickName: trick.name,
            trickDifficulty: trick.difficulty,
          ),

          //Icon(Icons.skateboarding),

          //Trick Description
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              trick.description,
              maxLines: 3,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inverseSurface,
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.w300),
            ),
          )
        ],
      ),
    );
  }
}
