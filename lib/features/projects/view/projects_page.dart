import 'package:auto_route/annotations.dart';
import 'package:connent_frontend/ui/ui.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomScrollView(
      slivers: [
        CustomSliverAppBar(
          backgroundColor: theme.primaryColor,
            expandedHeight: 200,
            title: Text('Ваши проекты\n', style: theme.textTheme.titleLarge?.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
            background: Container(
                color: theme.scaffoldBackgroundColor,
                child: Container(
                  decoration: BoxDecoration(
                      color: theme.primaryColor,
                      borderRadius: BorderRadius.circular(16)),
                ))),
        const SliverToBoxAdapter(child: SizedBox(height: 5,),),
        SliverList.builder(itemBuilder: (context, index) {
          return Padding(padding: const EdgeInsets.all(5),child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
            ),
            child: const Row(
            children: [
              Icon(Icons.ac_unit),
              Column(children: [
                Text('Название'),
                Text('Описание')
              ],)
            ],
          ),)
          );
        },)
      ],
      
    );
  }
}
