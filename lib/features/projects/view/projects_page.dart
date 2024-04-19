import 'package:auto_route/annotations.dart';
import 'package:connent_frontend/features/projects/methods/methods.dart';
import 'package:connent_frontend/ui/ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  int projectCount = 2;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomScrollView(
      slivers: [
        CustomSliverAppBar(
            backgroundColor: Colors.black,
            expandedHeight: 200,
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Ваши проекты',
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
        projectCount == 0
            ? SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Center(
                      child: Text('У вас ещё нет проектов'),
                    ),
                    TextButton(
                        onPressed: () => openAddProjectDialog(context),
                        child: const Text(
                            'Создайте новый или присоединитесь к уже существующему',
                            textAlign: TextAlign.center)),
                  ],
                ),
              )
            : SliverList.builder(
          itemCount: projectCount,
                itemBuilder: (context, index) {
                  return const Padding(
                      padding: EdgeInsets.all(5),
                      child: ListTile(
                        title: Text('Название'),
                        subtitle: Text('Описание'),
                        leading: CircleAvatar(child: Icon(Icons.build)),
                      ));
                },
              ),
        SliverToBoxAdapter(child: ElevatedButton(child: Text('+ проект'), onPressed: () {
          setState(() {
            projectCount++;
          });
        },),),
        projectCount > 0 ? SliverToBoxAdapter(child: ElevatedButton(child: Text('- проект'), onPressed: () {
          setState(() {
            projectCount--;
          });
        },),) : const SliverToBoxAdapter()
      ],
    );
  }
}
