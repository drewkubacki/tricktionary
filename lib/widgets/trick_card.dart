import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/trick.dart';

class TrickCard extends ConsumerWidget {
  final Trick trick;
  const TrickCard({required this.trick, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.only(
          top: 15.0, bottom: 30.0, left: 15.0, right: 15.0),
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
        children: [
          Text(trick.name),
          SizedBox(height: 10),
          Image.asset(
            trick.image,
            height: 125,
            width: 250,
          ),
        ],
      ),
    );
  }
}
