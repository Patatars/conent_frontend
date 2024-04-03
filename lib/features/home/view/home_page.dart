import 'package:auto_route/auto_route.dart';
import 'package:connent_frontend/roter/router.dart';
import 'package:flutter/material.dart';


@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return AutoTabsRouter(
        routes: const [NewsRoute(), ProjectsRoute()],
        builder: (context, child) {
          final tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
            backgroundColor: theme.scaffoldBackgroundColor,
            body: child,
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: theme.secondaryHeaderColor,
              showUnselectedLabels: false,
              selectedItemColor: theme.primaryColor,
              unselectedItemColor: theme.hintColor,
              currentIndex: tabsRouter.activeIndex,
              onTap: tabsRouter.setActiveIndex,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.newspaper),
                  label: 'Новости',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.book),
                  label: 'Мои проекты',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Профиль',
                ),
              ],
            ),
          );
        });
  }
}
