import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
    required this.title,
    required this.background,
    this.expandedHeight = 350,
    required this.backgroundColor,
  });

  final Text title;
  final Widget background;
  final double expandedHeight;
  final Color backgroundColor;


  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16))),
        backgroundColor: backgroundColor,
        expandedHeight: expandedHeight,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
            titlePadding: const EdgeInsets.only(top: 0),
            collapseMode: CollapseMode.pin,
            centerTitle: true,
            title: title,
            background: background));
  }
}
