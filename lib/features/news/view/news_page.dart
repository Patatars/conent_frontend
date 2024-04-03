import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';

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
          title: const Text('Новости',
              style: TextStyle(
                color: Colors.black,
              )),
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
                '''🏫В Центре образования «Кудрово» успешно завершился муниципальный этап региональной олимпиады школьников по политехнической олимпиаде. Это ежегодное соревнование стало отличной возможностью для старшеклассников проявить свои знания и навыки в четырех общеобразовательных предметах - математика, физика, информатика и химия.

🏫Санкт-Петербургский политехнический университет Петра Великого, организатор этого знакового события, является одним из передовых образовательных учреждений России. Его отличная репутация и престижный статус делают учебу в этом университете мечтой для многих школьников. Участие в политехнической олимпиаде становится уникальной возможностью погрузиться в атмосферу вуза, оценить его потенциал и уровень образования.

🏆Наши герои – ПРИЗЕРЫ олимпиады, ученики 10 и 11 классов, Кривцов Дмитрий (класс 10.1) и Воробьев Антон (класс 11.1), достойно проявили себя и заняли почетные призовые места! 
Успех ребят в олимпиаде является примером для всех учащихся, показывая, что труд и усердие не остаются незамеченными. Их усердие, умение справляться со сложными заданиями и стремление к знаниям помогли им обогнать более 40 участников. Мы гордимся нашими яркими и талантливыми учениками!

🌠От лица коллектива школы выражаем благодарность учителю, подготовившему наших призеров, Ирине Валерьевне Копыловой. Ее профессионализм, терпение и поддержка помогли ребятам добиться выдающихся результатов. Желаем побед и новых профессиональных достижений в трудной и благородной работе!

Не ограничивайтесь одним успехом - участвуйте в олимпиадах, развивайтесь и стремитесь к новым вершинам! Станьте вдохновением для других школьников, чтобы они тоже стали участниками мероприятий такого масштаба, как Политехническая олимпиада.

🌠Поздравляем еще раз наших победителей и благодарим всех участников, учителей и организаторов олимпиады за яркое мероприятие и возможность проявить себя. 

Пожелаем всем участникам дальнейших успехов, новых побед и вдохновения в учебе и научных исследованиях!''',
            image: Image.network(
                'https://sun9-73.userapi.com/impg/-u3yw1hanqsEz471EVWhkwfDvhOKR9zGbQeodA/tyKnqXDo9tE.jpg?size=538x807&quality=95&sign=f35124468f654cfcfbf6b4d9918e9394&c_uniq_tag=GR2C_V8OX13hg7DRyOxYeWOKWZCons3LuWycdedXeKo&type=album'),
          ),
          itemCount: 50,
        ),
      ],
    );
  }
}
