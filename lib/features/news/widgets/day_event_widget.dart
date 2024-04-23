import 'package:flutter/material.dart';

class DayEventWidget extends StatelessWidget {
  const DayEventWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
        padding: const EdgeInsets.all(16).copyWith(top: 50),
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40), color: Colors.black),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 30),
                      child: Text(
                        textAlign: TextAlign.center,
                        '27\n04',
                        style: theme.textTheme.titleLarge,
                      )),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(16)),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text(
                          softWrap: true,
                          'День науки',
                          style: theme.textTheme.titleMedium,
                        ),
                      )),
                ],
              ),
            )));
  }
}
