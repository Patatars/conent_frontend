import 'package:flutter/material.dart';

class DoneWidget extends StatelessWidget {
  const DoneWidget({super.key, required this.imgPath, required this.infoText, this.buttonText = 'Понятно'});

  final String imgPath;
  final String infoText;
  final String buttonText;

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
              Image.asset(
                imgPath,
                fit: BoxFit.fill,
                height: 250,
              ),
              Text(
                infoText,
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(buttonText))
            ],
          ),
        ));
  }
}