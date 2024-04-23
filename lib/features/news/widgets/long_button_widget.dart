import 'package:flutter/material.dart';

class LongButtonWidget extends StatelessWidget {
  const LongButtonWidget({
    super.key,
    this.height = 50,
    required this.onPressed,
  });

  final Function() onPressed;

  final double height;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: theme.primaryColor,
            minimumSize: Size(double.infinity, height),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16))),
        onPressed: onPressed,
        child: const Text(
          'Анонсы',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
