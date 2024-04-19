import 'package:connent_frontend/router/router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'features/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final titleText =
        GoogleFonts.onest(fontWeight: FontWeight.w800, fontSize: 30);
    return MaterialApp.router(
      title: 'Conent',
      theme: ThemeData(

        listTileTheme: const ListTileThemeData(
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
          ),
          tileColor: Colors.white,
          style: ListTileStyle.list,

        ),
        textTheme: GoogleFonts.unboundedTextTheme().merge(TextTheme(
          titleMedium: titleText,
          titleSmall: titleText,
          titleLarge: titleText,
        )),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0086FF),
        ),
        primaryColor: const Color(0xFF0086FF),
        scaffoldBackgroundColor: const Color(0xFFB5C7D8),
        useMaterial3: true,
        dialogBackgroundColor: const Color(0xFFC4CBD5),
      ),
      routerConfig: _appRouter.config(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}
