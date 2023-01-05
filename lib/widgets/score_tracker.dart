import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app/providers.dart';

class ScoreTracker extends ConsumerWidget {
  const ScoreTracker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final scrollItemModel = ref.watch(scrollableProvider);

    return Container(
      //width: width / 1.3,
      height: height / 2.5,
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white,
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
          //SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Column(
                  children: const [
                    Text("Player 1",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w300,
                        )),
                    SizedBox(height: 10),
                    Text("5"),
                  ],
                ),
              ),
              const SizedBox(width: 25),
              Container(
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Column(
                  children: const [
                    Text("Player 2",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w300,
                        )),
                    SizedBox(height: 10),
                    Text("2"),
                  ],
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: scrollItemModel.scrollToItem,
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ),
            child: const Text("Generate"),
          ),
        ],
      ),
    );
  }
}
