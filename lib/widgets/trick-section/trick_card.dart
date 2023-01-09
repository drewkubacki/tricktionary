import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/trick.dart';

class TrickCard extends ConsumerWidget {
  final Trick trick;
  const TrickCard({required this.trick, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width / 1.2,
      margin: const EdgeInsets.only(bottom: 30, top: 25, left: 15, right: 15),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: [
                Text(trick.name,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inverseSurface,
                        fontWeight: FontWeight.w300)),
                const Spacer(),
                Text("Difficulty: ${trick.difficulty}",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inverseSurface,
                        fontWeight: FontWeight.w300)),
              ],
            ),
          ),
          Image.asset(
            trick.image,
            height: 150,
            width: 200,
          ),
          Container(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Text(
              trick.description,
              maxLines: 2,
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
