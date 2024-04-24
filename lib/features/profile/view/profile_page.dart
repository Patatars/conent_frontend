import 'dart:math';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
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
    final router = AutoRouter.of(context);
    final List<Widget> slivers = [
      CustomSliverAppBar(
        actions: [
          IconButton(
              onPressed: () {
                router.pushNamed('/chat');
              },
              icon: const Icon(
                Icons.message,
                size: 30,
              ))
        ],
        expandedHeight: 300,
        flexibleTitle: Text('Имя Фамилия',
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
          borderRadius:
              const BorderRadius.vertical(bottom: Radius.circular(16)),
          child: Image.network(
            "https://cdn.discordapp.com/attachments/552804831421530132/1230989398552739891/image.png?ex=66355337&is=6622de37&hm=6837b78ec1fd38bb98b1c896bdd8e99ca9065d8d61d7c8b73dddb6737565f806&",
            fit: BoxFit.cover,
          ),
        ),
      ),
    ];
    slivers.addAll([
      const SliverToBoxAdapter(
        child: ListTile(
          title: Text('Описание'),
          subtitle: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
        ),
      ),
      SliverToBoxAdapter(
        child: ListTile(
          title: const Text('Фото'),
          subtitle: SizedBox(
            height: 200,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors
                        .primaries[Random().nextInt(Colors.primaries.length)],
                    borderRadius: BorderRadius.circular(16)),
              ),
              separatorBuilder: (context, index) => const SizedBox(
                width: 15,
              ),
              itemCount: 5,
            ),
          ),
        ),
      ),
      const SliverToBoxAdapter(
        child: ListTile(
          title: Text('У вас есть вопрос?'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ),
      const SliverToBoxAdapter(
        child: ListTile(
          title: Text('Ваша статистика'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ),
      const SliverToBoxAdapter()
    ].map((e) => SliverPadding(
          padding:
              const EdgeInsets.symmetric(horizontal: 8).add(const EdgeInsets.only(top: 15)),
          sliver: e,
        )));
    return CustomScrollView(
      slivers: slivers,
    );
  }
}
