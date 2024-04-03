import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DayEventWidget extends StatelessWidget {
  const DayEventWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16).copyWith(top: 50),
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40), color: Colors.black),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          borderRadius: BorderRadius.circular(16)),
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          'Предзащита проектов',
                          style: GoogleFonts.oswald(
                              color: Colors.white, fontSize: 25),
                        ),
                      )),
                ],
              ),
            )));
  }
}
