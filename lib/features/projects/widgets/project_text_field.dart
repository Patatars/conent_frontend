import 'package:flutter/material.dart';

class ProjectTextField extends StatelessWidget {
  const ProjectTextField({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: TextField(
          showCursor: false,
          cursorColor: Colors.white,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintStyle: TextStyle(color: Colors.grey),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
          ),
        ));
  }
}
