import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../features/announcements/view/register_for_event_page.dart';
import '../features/event_card/event_card.dart';
import '../features/news/widgets/widgets.dart';

List<Widget> getAnn(BuildContext context, ThemeData theme) => [
      NewsWidget(
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
              onPressed: () {
                showCupertinoDialog(context: context, builder: (context) => const EventCardPublicPage(name: 'Волшебные мгновения Зимнего бала', date: '05.01.2024', description: 'Для старшеклассников Центра образования «Кудрово» на Старый-Новый год прозвучали фанфары, возвещающие о начале Второго школьного Зимнего бала «Волшебные мгновения».',));
              },
              child: Text(
                'подробнее',
                style: theme.textTheme.bodyLarge
                    ?.copyWith(color: Colors.black),
              )),
        ],
        authorsName: Text(
          'Автор',
          style: theme.textTheme.titleMedium?.copyWith(color: Colors.black),
        ),
        avatar: CircleAvatar(
          backgroundColor:
              Colors.primaries[Random().nextInt(Colors.primaries.length)],
        ),
        text: '''❄Волшебные мгновения Зимнего бала

Для старшеклассников Центра образования «Кудрово» на Старый-Новый год прозвучали фанфары, возвещающие о начале Второго школьного Зимнего бала «Волшебные мгновения».

☃Все мы были рады встретиться в этой удивительной атмосфере Бала. Звучат фанфары и на сцену выходит церемониймейстер, который объявляет Начало Бала и первый танец Бала – полонез. В торжественном танце-шествии мы увидели девушек, в летящих платьях и в туфельках, которые шествовали об руку с чопорно серьёзными, одетыми в строгие костюмы – юношами.''',
        image: Image.network(loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Center(
              child: CircularProgressIndicator(
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes!
                : null,
          ));
        }, 'https://sun9-25.userapi.com/impg/9HYp3qTyU2N1oQtdsuGe3xAwDGKOzuMwxZWkwg/YSR8NswXfsU.jpg?size=1280x853&quality=95&sign=4334a035c4c842395f52b30039eaa6d4&type=album'),
      ),
      NewsWidget(
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
              onPressed: () {
                showCupertinoDialog(context: context, builder: (context) => const EventCardPublicPage(name: 'Мандарины', date: '05.01.2024', description: 'Мандарины считаются традиционным угощением на Новый год. Характерный запах, яркий цвет и сочный вкус этих цитрусовых помогают создать праздничное настроение.',));
              },
              child: Text(
                'подробнее',
                style: theme.textTheme.bodyLarge
                    ?.copyWith(color: Colors.black),
              )),
        ],
        authorsName: Text(
          'Автор',
          style: theme.textTheme.titleMedium?.copyWith(color: Colors.black),
        ),
        avatar: CircleAvatar(
          backgroundColor:
              Colors.primaries[Random().nextInt(Colors.primaries.length)],
        ),
        text: '''🍊Мандарины считаются традиционным угощением на Новый год. Характерный запах, яркий цвет и сочный вкус этих цитрусовых помогают создать праздничное настроение.

🔥В этот день школа наполнилась неповторимым ароматом мандаринов с самого утра. Они такие красивые, что вдохновляют на творчество. Так, на Площади Искусств, началась игротека под кодовым названием «Мандариновый спринт».''',
        image: Image.network(loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Center(
              child: CircularProgressIndicator(
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes!
                : null,
          ));
        }, 'https://sun9-10.userapi.com/impg/4fRxZaKkjNJoALFmBijCDc6DIPJJVW_ZWsAkwQ/ECwfU3ta7Fk.jpg?size=1280x853&quality=95&sign=b2fe937ff124f73528eed5cd2c9b3f34&type=album'),
      ),
  NewsWidget(
    authorsName: Text(
      'Автор',
      style: theme.textTheme.titleMedium?.copyWith(color: Colors.black),
    ),
    avatar: CircleAvatar(
      backgroundColor:
      Colors.primaries[Random().nextInt(Colors.primaries.length)],
    ),
    text: '''📍День школьного ученического самоуправления
В нашей жизни бывают мгновения, которые дарят настолько сильные эмоции, что воспоминания об этом надолго оставляют след в душе.

📅Яркий пример такому событию –День школьного ученического самоуправления, который традиционно прошёл в Центре образования «Кудрово» 27 октября 2023 года, в последний учебный день перед осенними каникулами.
Ученики школы, под руководством Совета старшеклассников, провели серьёзную подготовку: выбрали и утвердили дублёров на роли администрации, учителей – предметников и классных руководителей; составили расписание уроков; написали планы и создали презентации по теме урока, подготовили интерактивы на Площади Искусств. А также подготовили и провели организационную линейку для участников, на которой была представлена W-администрация и переданы символические ключи от школы W-директору Виктории Солдатовой, Главе Совета старшеклассников Центра образования «Кудрово».''',
    image: Image.network(loadingBuilder: (context, child, loadingProgress) {
      if (loadingProgress == null) return child;
      return Center(
          child: CircularProgressIndicator(
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                loadingProgress.expectedTotalBytes!
                : null,
          ));
    }, 'https://sun9-45.userapi.com/impg/W1hi7XkOPijv3oqHkNJ7TFsgPBDqO6efoQaAuQ/WeUsr-vM1m8.jpg?size=1600x1066&quality=95&sign=04f446b0e73a475c0631c399bf59057c&type=album'),
  ),
    ];
