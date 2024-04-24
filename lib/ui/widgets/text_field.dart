import 'package:flutter/material.dart';

class ProjectTextField extends StatelessWidget {



  const ProjectTextField({
    super.key, this.onEditingComplete, this.suffixIcon, this.hint, this.textColor=Colors.white, this.hintOpacity=0.8, this.textFieldColor
  });

  final Function? onEditingComplete;
  final Widget? suffixIcon;
  final String? hint;
  final Color textColor;
  final double hintOpacity;
  final Color? textFieldColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          color: textFieldColor ?? theme.highlightColor.withOpacity(hintOpacity),
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextField(
          cursorColor: textColor,
          style: theme.textTheme.bodyLarge?.copyWith(color: textColor),
          textAlign: TextAlign.center,
          // controller: controller,
          decoration: InputDecoration(
            hintText: hint,
            suffixIcon: suffixIcon,
            hintStyle: TextStyle(color: theme.hintColor.withOpacity(hintOpacity)),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
