import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({
    super.key, required this.image, required this.text, this.actions, required this.avatar, required this.authorsName,
  });

  final Image image;
  final String text;
  final List<Widget>? actions;
  final Widget avatar;
  final Widget authorsName;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: theme.cardColor,
                borderRadius: BorderRadius.circular(16)),
            child: Column(
              children: [
                Row(
                  children: [
                  avatar,
                  const SizedBox(width: 15,),
                  authorsName
                ],),
                const SizedBox(height: 20,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: image,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(text),
                actions == null ? const SizedBox() : Padding(padding: const EdgeInsets.all(16), child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: actions!,),)
              ],
            )));
  }
}
