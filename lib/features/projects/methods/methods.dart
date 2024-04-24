import 'package:flutter/material.dart';

import '../projects.dart';

void openAddProjectDialog(BuildContext context) {
  final theme = Theme.of(context);
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: theme.dialogBackgroundColor,
      builder: (context) {
        return const AddProjectPage();
      });
}
