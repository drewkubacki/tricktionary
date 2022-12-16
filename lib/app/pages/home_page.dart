import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:math';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import '../../examples/tricks.dart';
import '../../widgets/trick_card.dart';
import '../../widgets/trick_scroller.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final itemController = ItemScrollController();
  final trickListLength = tricks.length;

  Future scrollToItem() async {
    var indexValue = Random().nextInt(trickListLength);
    itemController.jumpTo(index: indexValue);
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Tricktionary",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text("Text"),
            //TrickScroller(),
            //TrickScroller code below and commented out the actual widget
            Container(
              padding: const EdgeInsets.only(top: 10),
              height: height / 2.7,
              child: ScrollablePositionedList.builder(
                scrollDirection: Axis.horizontal,
                itemScrollController: itemController,
                itemCount: tricks.length,
                itemBuilder: (context, index) {
                  return TrickCard(
                    trick: tricks[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.shuffle),
        onPressed: () => scrollToItem(),
      ),
    );
  }
}
