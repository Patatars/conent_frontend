import 'dart:math';

import 'package:auto_route/annotations.dart';
import 'package:connent_frontend/features/announcements/view/register_for_event_page.dart';
import 'package:connent_frontend/features/news/widgets/widgets.dart';
import 'package:connent_frontend/ui/ui.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AnnouncementsPage extends StatelessWidget {
  const AnnouncementsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: theme.dialogBackgroundColor,
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(
            // expandedHeight: 300,
            backgroundColor: theme.primaryColor,
            // HSLColor.fromColor(theme.dialogBackgroundColor).withLightness(0.8).toColor(),
            collapsedHeight: 65,
            title: Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: ProjectTextField(
                onEditingComplete: () => print(123),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10)
                    .add(const EdgeInsets.only(bottom: 10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(onPressed: () {
                    }, child: Text('Сегодня')),
                    const ElevatedButton(onPressed: null, child: Text('Завтра')),
                    const ElevatedButton(
                        onPressed: null, child: Text('Выбрать дату')),
                  ],
                ),
              ),
            ),
          ),
          SliverList.builder(
            itemBuilder: (context, index) => NewsWidget(
              actions: [
                ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(
                          ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        backgroundColor:
                            MaterialStatePropertyAll(theme.primaryColor),
                        textStyle: MaterialStatePropertyAll(
                            theme.textTheme.bodyLarge)),
                    onPressed: () {
                      showModalBottomSheet(isScrollControlled: true, context: context, builder: (context) => const RegisterForEventPage());
                    },
                    child: Text(
                      'записаться',
                      style: theme.textTheme.bodyLarge
                          ?.copyWith(color: Colors.white),
                    )),
                OutlinedButton(
                    style: ButtonStyle(
                        side: const MaterialStatePropertyAll(
                            BorderSide(color: Colors.black, width: 3)),
                        shape: MaterialStatePropertyAll(
                          ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        textStyle: MaterialStatePropertyAll(
                            theme.textTheme.bodyLarge)),
                    onPressed: () {},
                    child: Text(
                      'подробнее',
                      style: theme.textTheme.bodyLarge
                          ?.copyWith(color: Colors.black),
                    )),
              ],
              authorsName: Text(
                'Автор',
                style:
                    theme.textTheme.titleMedium?.copyWith(color: Colors.black),
              ),
              avatar: CircleAvatar(
                backgroundColor:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
              ),
              text:
                  '''📆В последний день весенних каникул учителя старшей школы имели возможность снять эмоциональное напряжение и морально подготовиться к завершению учебного года. Для педагогов были организованы следующие площадки:

✅«Вверх по течению» - занятие в бассейне. Известно, что близость к воде дарит спокойствие, а физическая активность помогает вырабатывать гармоны счастья.

✅«Мягкое расслабление» - занятие с элементами пилатеса. Активная медитация, сосредоточенное дыхание и концентрация помогают снизить уровень кортизола, успокоить разум и тело.

✅«Пейзаж моей души» - создание картины с помощью карандашей. Известно, что наше подсознание мыслит образами, поэтому для систематизации собственных мыслей очень полезно взять бумагу и просто на время «отключится» от повседневных задач.

✅«Яркие моменты» - создание магнита с определенным сакральным смыслом. Коллеги выбрали свой образ позитивного будущего и погрузившись в творческий процесс смогли зарядиться позитивным настроем «на завтра».

Все перечисленные мероприятия не состоялись бы без кураторов площадок, которым мы говорим отдельные слова благодарности. Это Ольга Сергеевна Воробьева, Татьяна Артемовна Славинская, Людмила Алексеевна Лапшина, Татьяна Владимировна Емельяненко и Елена Геннадьевна Цепко.

🌞Желаем всем сохранить душевное спокойствие.''',
              image: Image.network(
                  loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                    child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                      : null,
                ));
              }, 'https://sun9-43.userapi.com/impg/hPZJ9guTWFHu9bNZB6xAt721fIOB8bJG8JRC7g/lYt2yhtRUPU.jpg?size=1560x1040&quality=95&sign=0e1964098ca3e5685e6ff8ade9a9261f&type=album'),
            ),
            itemCount: 50,
          ),
        ],
      ),
    );
  }
}
