import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../app/providers.dart';

class RandomSelectionButton extends ConsumerWidget {
  const RandomSelectionButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollItemModel = ref.watch(scrollableProvider);

    return GestureDetector(
      onTap: scrollItemModel.scrollToItem,
      child: Container(
          height: 50,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceVariant,
              borderRadius: BorderRadius.circular(30.0),
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
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Generate",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inverseSurface,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ))
            ],
          )),
    );
  }
}
