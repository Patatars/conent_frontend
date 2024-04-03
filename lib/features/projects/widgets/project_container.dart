import 'package:flutter/material.dart';

class ProjectContainer extends StatelessWidget {
  const ProjectContainer({
    super.key,
    required this.title,
    required this.subtitile, this.widget,
  });

  final String title;
  final String subtitile;

  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: theme.primaryColor),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: theme.textTheme.titleLarge?.copyWith(color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              subtitile,
              style: theme.textTheme.titleSmall?.copyWith(color: Colors.white),
            ),
            widget ?? const SizedBox(height: 10,)
          ],
        ));
  }
}
