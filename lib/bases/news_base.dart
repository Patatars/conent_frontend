import 'dart:math';

import 'package:flutter/material.dart';

import '../features/news/widgets/widgets.dart';


List<Widget> getNews(ThemeData theme)  =>[
  NewsWidget(
    authorsName: Text('Автор', style: theme.textTheme.titleMedium?.copyWith(color: Colors.black),),
    avatar: CircleAvatar(backgroundColor: Colors
        .primaries[Random().nextInt(Colors.primaries.length)],),
    text:
    '''🚀«Выход на орбиту»

📅12 апреля в нашей стране отмечается праздник - День космонавтики. В честь этого Дня, для учеников 5-х и 6-х классов, прошла игра по станциям «Выход на орбиту».
🌎Командам нужно было: найти слова о космосе в большом количестве букв, составить рацион и накормить космонавта, отгадать известных людей космонавтики, угадать саундтреки из мультфильмов и реклам про космос, собрать космический пазл и сказать определение понятий.
Ученики отлично справились с поставленной задачей и быстро прошли все станции, а также получили заряд хорошего космического настроения.
🔥За подготовку и проведение игры мы благодарим представителей Совета старшеклассников школы.''',
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
        'https://sun9-54.userapi.com/impg/BaaxpBij-ICc4WUdeP9zOmKd-yQZC3s1yxgXhw/FTsuqa7EpBs.jpg?size=1280x960&quality=95&sign=87878a313b1fa69030fbac7cf082e6bc&type=album'),
  ),
  NewsWidget(
    authorsName: Text('Автор', style: theme.textTheme.titleMedium?.copyWith(color: Colors.black),),
    avatar: CircleAvatar(backgroundColor: Colors
        .primaries[Random().nextInt(Colors.primaries.length)],),
    text:
    '''🥞Эх, Масленица!

🔥С 11 по 17 марта в России проходит самый известный сегодня славянский праздник - Масленица. Праздник проводов зимы и встречи весны. О его традициях знают и взрослые, и дети. И в честь этого события для учеников 5-х классов состоялась масленичная игра.

🙌Во время игры ребятам было предложено 7 станций. На них ребята: водили хоровод, кидали валенки, рисовали свои лучи для солнца, называли состав блинов, которые еще и "приготовили", а также познакомились с масленичными традициями.
По итогам игры все узнали основные символы и традиции Масленицы, а также получили море положительных эмоций!''',
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
        'https://sun9-72.userapi.com/impg/FKKioDfengdOJaWEm_cg3j1mstTvYVXHlAC-ZQ/YNZx_6hDFtE.jpg?size=1280x853&quality=95&sign=c50eeefc1e5ffc91f56c7abe01c41030&type=album'),
  ),
  NewsWidget(
    authorsName: Text('Автор', style: theme.textTheme.titleMedium?.copyWith(color: Colors.black),),
    avatar: CircleAvatar(backgroundColor: Colors
        .primaries[Random().nextInt(Colors.primaries.length)],),
    text:
    '''8 февраля День российской науки

📆В рамках этого Дня в Центре образования «Кудрово» традиционно состоялась интеллектуальная игра «Наука» для учащихся 5-6-х классов. Все вопросы касались науки, жизни выдающихся людей нашей страны и их открытий! Верим, что каждый получил атомный заряд энергии, открыл для себя что-то новое. Благодарим ребят за активное участие!

👭Благодарим Совет Старшеклассников за организацию игры, приложенные старания и силы, за превосходный результат и творческий подход!

📍Наука – это сила, дающая прогресс, движение, развитие во всех сферах жизни: медицина, образование, экономика, производство. Достижения ученых выводят человечество на новый уровень жизни, повышая ее качество. Науке в России отводится особое значение. Предоставляются условия для молодых специалистов и исследователей, запускаются программы фундаментальных научных исследований, поддерживается конкурентоспособность в области научных разработок.''',
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
        'https://sun9-27.userapi.com/impg/gkd1AOpfejcr4R4fN1qdevlhvlOO4wsutQgRBw/vobmKyBvZuQ.jpg?size=1280x720&quality=95&sign=35ac9249b7a054386cd2487209e7bc3d&type=album'),
  ),
  NewsWidget(
    authorsName: Text('Автор', style: theme.textTheme.titleMedium?.copyWith(color: Colors.black),),
    avatar: CircleAvatar(backgroundColor: Colors
        .primaries[Random().nextInt(Colors.primaries.length)],),
    text:
    '''В канун Нового года состоялась праздничная игра для учеников 5-8-х классов "Новогодний переполох"

❄Для ребят была проведена викторина, в которой они смогли проявить свои знания в сфере Нового года! В викторине было 3 раунда, в ходе которых ребята и угадали новогодние мультфильмы, и ответили на каверзные вопросы

🍿А также классы смогли показать свои творческие номера и поздравить всех с Новым годом! Были танцы, песни, сценки и хорошее настроение! В заключении к ребятам пришли Снегурочка и Дед Мороз, которые поздравили всех с наступающим Новым годом! И в 6-х классах Праздник завершился большим, шумным хороводом всех участников!🎉''',
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
        'https://sun9-10.userapi.com/impg/_ugo31PyeAVQdioCi8akX6TIyJXTqEmyAWPJlg/dH6NAWRGaVk.jpg?size=1600x900&quality=95&sign=fcaa3c2f8728fb115bf7efb9ea585b56&type=album'),
  ),
];