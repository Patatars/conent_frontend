import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({
    super.key, required this.image, required this.text,
  });

  final Image image;
  final String text;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: _theme.cardColor,
                borderRadius: BorderRadius.circular(16)),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: image,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(text),
              ],
            )));
  }
}
