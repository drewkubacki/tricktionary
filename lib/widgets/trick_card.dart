import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/trick.dart';

class TrickCard extends ConsumerWidget {
  final Trick trick;
  const TrickCard({required this.trick, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width / 1.3,
      margin:
          const EdgeInsets.only(top: 0, bottom: 15.0, left: 15.0, right: 15.0),
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
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: [
                Text(trick.name,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w300)),
                Spacer(),
                Text("Difficulty: " + trick.difficulty.toString(),
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w300)),
              ],
            ),
          ),
          Image.asset(
            trick.image,
            height: 175,
            width: 225,
          ),
          Container(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Text(
              trick.description,
              maxLines: 2,
              style: const TextStyle(
                  overflow: TextOverflow.ellipsis, fontWeight: FontWeight.w300),
            ),
          )
        ],
      ),
    );
  }
}
