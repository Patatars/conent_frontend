
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

@RoutePage()
class AddProjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const double padding = 20;
    final theme = Theme.of(context);
    return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: padding,
              ),
              ProjectContainer(
                textStyle:
                    theme.textTheme.bodyLarge!.copyWith(color: Colors.white),
                title: 'Присоединиться к проекту',
                subtitile: 'как участник',
                widget: ProjectTextField(onEditingComplete: ()=>print('132'),),
                backgroundColor: Colors.black,
              ),
              const SizedBox(
                height: padding,
              ),
              ProjectContainer(
                title: 'Найти проект',
                subtitile: 'присоединиться как волонтёр или сотрудник',
                widget: ElevatedButton(
                    onPressed: () {}, child: const Text('Создать резюме')),
                backgroundColor: theme.primaryColor,
                textStyle: theme.textTheme.bodyLarge!.copyWith(
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: padding,
              ),
              GestureDetector(
                onTap: (){

                },
                child: ProjectContainer(
                  title: 'Создать проект',
                  subtitile: 'как руководитель',
                  backgroundColor: Colors.white,
                  textStyle: theme.textTheme.bodyLarge!
                      .copyWith(color: theme.primaryColor),
                ),
              ),
              const SizedBox(
                height: padding,
              ),
              // ListView.builder(itemBuilder: (context, index) {
              //   return Card(child: Text('132'),);
              // },)

            ],
          ),
        );
  }
}
