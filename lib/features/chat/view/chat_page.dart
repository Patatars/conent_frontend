import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../ui/ui.dart';

@RoutePage()
class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        CustomSliverAppBar(
            backgroundColor: Colors.black,
            expandedHeight: 200,
            flexibleTitle: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Сообщения',
                  style: theme.textTheme.titleLarge?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ),
            background: Container(
                color: theme.scaffoldBackgroundColor,
                child: Container(
                  decoration: BoxDecoration(
                      color: theme.primaryColor,
                      borderRadius: BorderRadius.circular(16)),
                ))),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 5,
          ),
        ),
        SliverList.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return const Padding(
                padding: EdgeInsets.all(5),
                child: ListTile(
                  title: Text('Коллега'),
                  subtitle: Text('Сообщение'),
                  leading: CircleAvatar(child: Icon(Icons.person)),
                ));
          },
        ),
      ],
    ));
  }
}
