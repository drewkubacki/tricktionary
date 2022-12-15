import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/trick.dart';

class TrickCard extends ConsumerWidget {
  final Trick trick;
  const TrickCard({required this.trick, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 280,
      height: 210,
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.only(
          top: 15.0, bottom: 15.0, left: 15.0, right: 15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.15),
            offset: const Offset(0, 15),
            blurRadius: 25,
          ),
        ],
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Text(trick.name),
                Spacer(),
                Text("Difficulty: " + trick.difficulty.toString()),
              ],
            ),
          ),
          SizedBox(height: 10),
          Image.asset(
            trick.image,
            height: 125,
            width: 250,
          ),
          SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(
              trick.description,
              maxLines: 2,
              style: const TextStyle(
                overflow: TextOverflow.ellipsis,
              ),
            ),
          )
        ],
      ),
    );
  }
}
