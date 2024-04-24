import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EventCardPublicPage extends StatelessWidget {
  const EventCardPublicPage(
      {super.key,
      required this.name,
      required this.date,
      required this.description});

  final String name;
  final String date;
  final String description;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final children = [
      Center(
          child: Text(
        name,
        style: theme.textTheme.titleSmall?.copyWith(color: Colors.black),
      )),
      Text('Дата мероприятия: $date'),

      SizedBox(
        height: 200,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
            height: 180,
            width: 180,
            decoration: BoxDecoration(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                borderRadius: BorderRadius.circular(16)),
          ),
          separatorBuilder: (context, index) => const SizedBox(
            width: 15,
          ),
          itemCount: 5,
        ),
      ),
      Text('Описание: $description'),
      const Column(children: [
        ListTile(title: Text('Пользователь'), subtitle: Text("Отлично!"), leading: CircleAvatar(child: Icon(Icons.account_circle),),),
        ListTile(title: Text('Пользователь'), subtitle: Text("Здорово!"), leading: CircleAvatar(child: Icon(Icons.account_circle),),),
        ListTile(title: Text('Пользователь'), subtitle: Text("Не очень."), leading: CircleAvatar(child: Icon(Icons.account_circle),),),
        ListTile(title: Text('Пользователь'), subtitle: Text("Хорошо"), leading: CircleAvatar(child: Icon(Icons.account_circle),),),
        ListTile(title: Text('Пользователь'), subtitle: Text("Нормально."), leading: CircleAvatar(child: Icon(Icons.account_circle),),),
      ],),
      SizedBox()
    ];
    return Dialog(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        width: 1000,
        height: 900,
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return const SizedBox(height: 20);
          },
          itemBuilder: (BuildContext context, int index) => children[index],
          itemCount: children.length,
        ),
      ),
    );
  }
}
