import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ProjectsAddButton extends StatelessWidget {
  const ProjectsAddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final router = AutoRouter.of(context);
    return FloatingActionButton(
      onPressed: () {
        router.pushNamed('/addProject');
      },
      child: const Icon(Icons.add),
    );
  }
}
