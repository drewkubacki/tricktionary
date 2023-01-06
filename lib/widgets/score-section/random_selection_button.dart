import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/providers.dart';

class RandomSelectionButton extends ConsumerWidget {
  const RandomSelectionButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollItemModel = ref.watch(scrollableProvider);

    return ElevatedButton(
      onPressed: scrollItemModel.scrollToItem,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
      ),
      child: Text(
        "Generate",
        style: TextStyle(
          color: Theme.of(context).colorScheme.background,
        ),
      ),
    );
  }
}
