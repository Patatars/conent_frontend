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
    currentPage = Register(
      onPressed: () {
        setState(() {
          currentPage = const DoneWidget(imgPath: 'assets/application_sended.png', infoText: 'Заявка отправлена, ждите ответа в сообщениях.', );
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return currentPage;
  }
}


class Register extends StatelessWidget {
  const Register({super.key, required this.onPressed});

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedPadding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 25).add(
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom)),
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
              style: theme.textTheme.titleLarge?.copyWith(color: Colors.black),
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
                  backgroundColor: MaterialStatePropertyAll(theme.primaryColor),
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
