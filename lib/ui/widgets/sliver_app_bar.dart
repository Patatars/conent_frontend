import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {


  const CustomSliverAppBar({
    super.key,
    this.flexibleTitle,
    this.background,
    this.expandedHeight,
    this.backgroundColor,
    this.collapseMode =  CollapseMode.pin,
    this.stretchModes = const [], this.actions, this.title, this.bottom, this.collapsedHeight,
  });

  final Widget? flexibleTitle;
  final Widget? background;
  final double? expandedHeight;
  final Color? backgroundColor;
  final CollapseMode collapseMode;
  final List<StretchMode> stretchModes;
  final List<Widget>? actions;
  final Widget? title;
  final PreferredSize? bottom;
  final double? collapsedHeight;


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
        collapsedHeight: collapsedHeight,
        bottom: bottom,
        pinned: true,
        title: title,
        actions: actions,
        flexibleSpace: flexibleTitle == null && background == null ? null :
             FlexibleSpaceBar(
               titlePadding: EdgeInsets.zero,
                collapseMode: collapseMode,
                centerTitle: true,
                stretchModes: stretchModes,
                title: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: flexibleTitle,
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
