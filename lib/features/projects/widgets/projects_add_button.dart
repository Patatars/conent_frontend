import 'package:flutter/material.dart';

import '../methods/methods.dart';

class ProjectsAddButton extends StatelessWidget {
  const ProjectsAddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => openAddProjectDialog(context),
      child: const Icon(Icons.add),
    );
  }
}
