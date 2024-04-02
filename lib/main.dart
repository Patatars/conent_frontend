import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme:
            ColorScheme.fromSeed(seedColor: Colors.deepPurple.shade900),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              backgroundColor: Colors.cyan.shade100,
              expandedHeight: 350,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  titlePadding: const EdgeInsets.only(top: 0),
                  collapseMode: CollapseMode.pin,
                  centerTitle: true,
                  title: const Text('Новости',
                      style: TextStyle(
                        color: Colors.black,
                      )),
                  background: Column(children: [
                    Padding(
                        padding: const EdgeInsets.all(16).copyWith(top: 50),
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.black),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 30),
                                      child: Text(
                                        '04\n04',
                                        style: GoogleFonts.agbalumo(
                                          color: Colors.white,
                                          fontSize: 50,
                                        ),
                                      )),
                                  Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white24,
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      child: Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text(
                                          'Предзащита проектов',
                                          style: GoogleFonts.oswald(
                                              color: Colors.white,
                                              fontSize: 25),
                                        ),
                                      )),
                                ],
                              ),
                            ))),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            minimumSize: const Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16))),
                        onPressed: () {},
                        child: const Text(
                          'Анонсы',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    )
                  ]))),
          SliverList.builder(
            itemBuilder: (context, index) => Padding(padding: const EdgeInsets.symmetric(vertical: 5), child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(16)),
                child: Column(

                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network('https://sun9-73.userapi.com/impg/-u3yw1hanqsEz471EVWhkwfDvhOKR9zGbQeodA/tyKnqXDo9tE.jpg?size=538x807&quality=95&sign=f35124468f654cfcfbf6b4d9918e9394&c_uniq_tag=GR2C_V8OX13hg7DRyOxYeWOKWZCons3LuWycdedXeKo&type=album',
                      ),
                    ),
                    const SizedBox(height: 20,),

                    const Text('''🏫В Центре образования «Кудрово» успешно завершился муниципальный этап региональной олимпиады школьников по политехнической олимпиаде. Это ежегодное соревнование стало отличной возможностью для старшеклассников проявить свои знания и навыки в четырех общеобразовательных предметах - математика, физика, информатика и химия.

🏫Санкт-Петербургский политехнический университет Петра Великого, организатор этого знакового события, является одним из передовых образовательных учреждений России. Его отличная репутация и престижный статус делают учебу в этом университете мечтой для многих школьников. Участие в политехнической олимпиаде становится уникальной возможностью погрузиться в атмосферу вуза, оценить его потенциал и уровень образования.

🏆Наши герои – ПРИЗЕРЫ олимпиады, ученики 10 и 11 классов, Кривцов Дмитрий (класс 10.1) и Воробьев Антон (класс 11.1), достойно проявили себя и заняли почетные призовые места! 
Успех ребят в олимпиаде является примером для всех учащихся, показывая, что труд и усердие не остаются незамеченными. Их усердие, умение справляться со сложными заданиями и стремление к знаниям помогли им обогнать более 40 участников. Мы гордимся нашими яркими и талантливыми учениками!

🌠От лица коллектива школы выражаем благодарность учителю, подготовившему наших призеров, Ирине Валерьевне Копыловой. Ее профессионализм, терпение и поддержка помогли ребятам добиться выдающихся результатов. Желаем побед и новых профессиональных достижений в трудной и благородной работе!

Не ограничивайтесь одним успехом - участвуйте в олимпиадах, развивайтесь и стремитесь к новым вершинам! Станьте вдохновением для других школьников, чтобы они тоже стали участниками мероприятий такого масштаба, как Политехническая олимпиада.

🌠Поздравляем еще раз наших победителей и благодарим всех участников, учителей и организаторов олимпиады за яркое мероприятие и возможность проявить себя. 

Пожелаем всем участникам дальнейших успехов, новых побед и вдохновения в учебе и научных исследованиях!'''),
                  ],
                ))),
            itemCount: 50,
          ),
        ],
      ),
    );
  }
}
