
import 'package:auto_route/auto_route.dart';

import '../../../bases/bases.dart';
import '../../../ui/ui.dart';
import '../widgets/widgets.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NewsPage extends StatelessWidget {
  const NewsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final router = AutoRouter.of(context);
    final List<Widget> news = getNews(theme);
    return CustomScrollView(
      slivers: [
        CustomSliverAppBar(
          expandedHeight: 300,
          backgroundColor: theme.secondaryHeaderColor,
          flexibleTitle: Text('Новости',
              style: theme.textTheme.titleLarge?.copyWith(color: Colors.black)),
          background: Container(
            color: theme.colorScheme.primaryContainer,
            child: Column(
              children: [const DayEventWidget(), LongButtonWidget(onPressed: () {
                router.pushNamed("/announcements");
              }),],
            ),
          ),
        ),
        SliverList.builder(
          itemBuilder: (context, index) =>news[index],
          itemCount: news.length,
        ),
      ],
    );
  }
}
