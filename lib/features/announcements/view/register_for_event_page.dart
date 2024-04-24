import 'package:connent_frontend/ui/ui.dart';
import 'package:flutter/material.dart';

class RegisterForEventPage extends StatefulWidget {
  const RegisterForEventPage({super.key});

  @override
  State<RegisterForEventPage> createState() => _RegisterForEventPageState();
}


class _RegisterForEventPageState extends State<RegisterForEventPage> {
  late Widget currentPage;
  @override
  void initState() {
    super.initState();
    currentPage = Register(onPressed: () {
      setState(() {
        currentPage = const RegisterDone();
      });
    },);
  }

  @override
  Widget build(BuildContext context) {
    return currentPage;
  }
}

class RegisterDone extends StatelessWidget {
  const RegisterDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8),
        child: SizedBox(
          height: 400,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network('https://cdn.discordapp.com/attachments/552804831421530132/1232417137038201002/bb527a719190d513.png?ex=662a0a26&is=6628b8a6&hm=f6167977df4ff293179e013a9b1c5c0df2628266a25ed9c3eec991131f8f4840&', fit: BoxFit.fill, height: 250,),
              Text('Заявка отправлена, ждите ответа в сообщениях.', textAlign: TextAlign.center,),
              ElevatedButton(onPressed: () => Navigator.of(context).pop(), child: Text('Понятно'))
            ],
          ),
        ));
  }
}


class Register extends StatelessWidget {
  const Register({super.key, required this.onPressed});
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedPadding(
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
                onPressed: onPressed,
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
    );
  }
}

