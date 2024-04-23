import 'package:connent_frontend/ui/ui.dart';
import 'package:flutter/material.dart';

class RegisterForEventPage extends StatefulWidget {
  const RegisterForEventPage({super.key});

  @override
  State<RegisterForEventPage> createState() => _RegisterForEventPageState();
}

class _RegisterForEventPageState extends State<RegisterForEventPage> {
  bool isR = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return isR
        ? AnimatedPadding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 25)
                .add(EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom)),
            duration: const Duration(milliseconds: 150),
            curve: Curves.easeOut,
            child: SizedBox(
              height: 400,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Записаться на\n"название мероприятия"',
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleLarge
                        ?.copyWith(color: Colors.black),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ProjectTextField(
                        onEditingComplete: () {},
                        textColor: Colors.black,
                        hint: 'ФИО',
                      ),
                      ProjectTextField(
                        onEditingComplete: () {},
                        textColor: Colors.black,
                        hint: 'Телефон',
                      ),
                      ProjectTextField(
                        onEditingComplete: () {},
                        textColor: Colors.black,
                        hint: 'Доп инфа',
                      ),
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isR = false;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(theme.primaryColor),
                      ),
                      child: const Text(
                        'Отправить заявку',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                ],
              ),
            ),
          )
        : Padding(
            padding: EdgeInsets.all(8),
            child: SizedBox(
              height: 400,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.network('https://cdn.discordapp.com/attachments/552804831421530132/1232417137038201002/bb527a719190d513.png?ex=66296166&is=66280fe6&hm=197a1f17c3d6b6e46af6e29c1800b67bf33bbc810888366e6ecb902c0c77c603&', fit: BoxFit.fill, height: 250,),
                  Text('Заявка отправлена, ждите ответа в сообщениях.', textAlign: TextAlign.center,),
                  ElevatedButton(onPressed: () => Navigator.of(context).pop(), child: Text('Понятно'))
                ],
              ),
            ));
  }
}
