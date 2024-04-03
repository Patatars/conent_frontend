import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

@RoutePage()
class AddProjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Ваши проекты',
            style: theme.textTheme.titleLarge?.copyWith(
                color: theme.primaryColor, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: theme.secondaryHeaderColor,
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              const ProjectContainer(title: 'Присоединиться к проекту', subtitile: 'как сотрудник', widget: ProjectTextField(),),

              const SizedBox(height: 15,),
              ProjectContainer
                (title: 'Найти проект',
                subtitile: 'присоединиться как волонтёр или сотрудник',
                widget: ElevatedButton(onPressed: (){} , child: const Text('Создать резюме')),),
              const SizedBox(height: 15,),
              const ProjectContainer(title: 'Создать проект', subtitile: 'как руководитель',),
            ],
          ),
        ));
  }
}
