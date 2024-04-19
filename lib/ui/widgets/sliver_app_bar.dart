import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
    required this.title,
    this.background,
    this.expandedHeight = 360,
    required this.backgroundColor,
    this.collapseMode =  CollapseMode.pin,
    this.stretchModes = const [],
  });

  final Widget title;
  final Widget? background;
  final double expandedHeight;
  final Color backgroundColor;
  final CollapseMode collapseMode;
  final List<StretchMode> stretchModes;


  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32))),
        backgroundColor: backgroundColor,
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        expandedHeight: expandedHeight,
        pinned: true,
        flexibleSpace:
             FlexibleSpaceBar(
               titlePadding: EdgeInsets.zero,
                collapseMode: collapseMode,
                centerTitle: true,
                stretchModes: stretchModes,
                title: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: title,
                ),
                background: background
             ),

        );


    // flexibleSpace: FlexibleSpaceBar(
    //     titlePadding: const EdgeInsets.only(top: 0),
    //     collapseMode: CollapseMode.pin,
    //     centerTitle: true,
    //     title: title,
    //     background: background));
  }
}
