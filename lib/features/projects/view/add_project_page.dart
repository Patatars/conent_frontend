import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:separated_column/separated_column.dart';

import '../../../ui/ui.dart';
import '../widgets/widgets.dart';

@RoutePage()
class AddProjectPage extends StatefulWidget {
  const AddProjectPage({super.key});

  @override
  State<AddProjectPage> createState() => _AddProjectPageState();
}

class _AddProjectPageState extends State<AddProjectPage> {
  late Widget currentPage;

  @override
  void initState() {
    super.initState();
    currentPage = MainPage(
      createResume: () {
        setState(() {
          currentPage = const CreateResume();
        });
      },
      createProject: () {
        setState(() {
          currentPage = const CreateProject();
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return currentPage;
  }
}

class MainPage extends StatelessWidget {
  const MainPage(
      {super.key, required this.createProject, required this.createResume});

  final Function() createProject;
  final Function() createResume;

  @override
  Widget build(BuildContext context) {
    const double padding = 20;
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(16).add(const EdgeInsets.only(bottom: 16)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: padding,
          ),
          ProjectContainer(
            textStyle: theme.textTheme.bodyLarge!.copyWith(color: Colors.white),
            title: 'Присоединиться к проекту',
            subtitile: 'как участник',
            widget: ProjectTextField(
                onEditingComplete: () => print('132'), hint: 'Код проекта'),
            backgroundColor: Colors.black,
          ),
          const SizedBox(
            height: padding,
          ),
          ProjectContainer(
            title: 'Найти проект',
            subtitile: 'присоединиться как волонтёр или сотрудник',
            widget: ElevatedButton(
                onPressed: createResume, child: const Text('Создать резюме')),
            backgroundColor: theme.primaryColor,
            textStyle: theme.textTheme.bodyLarge!.copyWith(
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: padding,
          ),
          GestureDetector(
            onTap: createProject,
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
        ],
      ),
    );
  }
}

class CreateProject extends StatelessWidget {
  const CreateProject({super.key});

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
      child: SizedBox(
        width: double.infinity,
        child: SeparatedColumn(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          separatorBuilder: (BuildContext context, int index) => const SizedBox(
            height: 15,
          ),
          children: [
            Text(
              'Создайте карточку мероприятия',
              style: theme.textTheme.titleSmall?.copyWith(color: Colors.black),
            ),
            OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  side: MaterialStatePropertyAll(
                      BorderSide(color: theme.primaryColor, width: 3)),
                ),
                child: const Text('Добавить участника')),
            const ProjectTextField(
              hint: 'Название',
              textColor: Colors.black,
              hintOpacity: 0.5,
              textFieldColor: Colors.white,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(16)),
              child: CalendarDatePicker(
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2023),
                  lastDate: DateTime(2026),
                  onDateChanged: (dateTime) {}),
            ),
            OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                side: MaterialStatePropertyAll(
                    BorderSide(color: theme.primaryColor, width: 3)),
              ),
              child: Text('Добавить доп.информацию'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Создать'),
            )
          ],
        ),
      ),
    );
  }
}

class CreateResume extends StatelessWidget {
  const CreateResume({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
        child: SizedBox(
            width: double.infinity,
            child: SeparatedColumn(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Давайте создадим вам резюме!',
                    style: theme.textTheme.titleSmall
                        ?.copyWith(color: Colors.black),
                  ),
                  const ProjectTextField(
                    textFieldColor: Colors.white,
                    hint: 'ваше ФИО',
                  ),
                  const ProjectTextField(
                    textFieldColor: Colors.white,
                    hint: 'телефон',
                  ),
                  const ProjectTextField(hint: 'email',textFieldColor: Colors.white,),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white),
                      child: CalendarDatePicker(
                          initialDate: DateTime.now()
                              .subtract(const Duration(days: 365 * 12)),
                          firstDate: DateTime(1800),
                          lastDate: DateTime.now(),
                          onDateChanged: (dateTime) {})),
                  const ProjectTextField(
                    hint: 'город проживания',
                    textFieldColor: Colors.white,
                  ),
                  ElevatedButton(onPressed: () {
                    Navigator.pop(context);
                  }, child: const Text('Готово!'))
                ],
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                      height: 15,
                    ))));
  }
}
