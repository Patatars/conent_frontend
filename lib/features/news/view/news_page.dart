import 'package:auto_route/annotations.dart';

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
    return CustomScrollView(
      slivers: [
        CustomSliverAppBar(
          backgroundColor: theme.secondaryHeaderColor,
          title: Text('Новости',
              style: theme.textTheme.titleLarge?.copyWith(color: Colors.black)),
          background: Container(
            color: theme.colorScheme.primaryContainer,
            child: const Column(
              children: [DayEventWidget(), LongButtonWidget()],
            ),
          ),
        ),
        SliverList.builder(
          itemBuilder: (context, index) => NewsWidget(
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
                )
                );
              },
                'https://sun9-43.userapi.com/impg/hPZJ9guTWFHu9bNZB6xAt721fIOB8bJG8JRC7g/lYt2yhtRUPU.jpg?size=1560x1040&quality=95&sign=0e1964098ca3e5685e6ff8ade9a9261f&type=album'),
          ),
          itemCount: 50,
        ),
      ],
    );
  }
}
