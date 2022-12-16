import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:tricktionary/examples/tricks.dart';
import 'package:tricktionary/widgets/trick_card.dart';

class TrickScroller extends ConsumerWidget {
  const TrickScroller({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 10),
          height: height / 2.7,
          child: ScrollablePositionedList.builder(
            scrollDirection: Axis.horizontal,
            //itemScrollController: itemController,
            itemCount: tricks.length,
            itemBuilder: (context, index) {
              return TrickCard(
                trick: tricks[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
