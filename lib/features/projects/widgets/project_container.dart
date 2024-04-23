import 'package:flutter/material.dart';

class ProjectContainer extends StatelessWidget {
  const ProjectContainer({
    super.key,
    required this.title,
    required this.subtitile, this.widget,
    required this.backgroundColor,
    required this.textStyle,
  });

  final String title;
  final String subtitile;

  final Widget? widget;
  final Color backgroundColor;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: backgroundColor),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: textStyle,
            ),

            Text(
              textAlign: TextAlign.center,
              subtitile,
              style: textStyle.copyWith(fontSize: textStyle.fontSize!-3),
            ),
            widget != null ? Padding(
              padding: const EdgeInsets.all(8.0).add(const EdgeInsets.only(top: 10)),
              child: widget,
            ) : const SizedBox(height: 10,),

          ],
        ));
  }
}
