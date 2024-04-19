import 'dart:ui';

import 'package:auto_route/annotations.dart';
import 'package:connent_frontend/ui/ui.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomScrollView(
      slivers: [
        CustomSliverAppBar(
          title: Text('Имя Фамилия',
              style: theme.textTheme.titleMedium
                  ?.copyWith(color: Colors.white, shadows: [
                const Shadow(
                  blurRadius: 2,
                  offset: Offset(1.5, 1.5),
                  color: Colors.black,
                ),
              ])),
          stretchModes: const [
            StretchMode.blurBackground,
            StretchMode.fadeTitle,
            StretchMode.zoomBackground
          ],
          collapseMode: CollapseMode.parallax,
          backgroundColor: theme.primaryColor,
          background: ClipRRect(
            borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(16)),
            child: Image.network(
              "https://cdn.discordapp.com/attachments/552804831421530132/1230989398552739891/image.png?ex=66355337&is=6622de37&hm=6837b78ec1fd38bb98b1c896bdd8e99ca9065d8d61d7c8b73dddb6737565f806&",
              fit: BoxFit.cover,

            ),
          ),
          // expandedHeight: 150,
        ),
        SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
          sliver: SliverList.list(

            children: [
              ListTile(
                title: Text('У вас есть вопрос?'),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios), onPressed: () {},),
              ),
              SizedBox(height: 20,),
              ListTile(
                title: Text('Ваша статистика'),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios), onPressed: () {},),
              ),
            ],
          ),
        )

      ],
    );
  }
}
