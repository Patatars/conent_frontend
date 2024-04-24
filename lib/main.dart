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
        GoogleFonts.onest(fontWeight: FontWeight.w800, fontSize: 30, color: Colors.white);
    final textTheme = GoogleFonts.unboundedTextTheme().merge(TextTheme(
      titleSmall: titleText.copyWith(fontSize: 20),
      titleMedium: titleText.copyWith(fontSize: 25),
      titleLarge: titleText,
    ));
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Conent',
      theme: ThemeData(
        outlinedButtonTheme: OutlinedButtonThemeData(style: ButtonStyle(
            side: const MaterialStatePropertyAll(
                BorderSide(color: Colors.black, width: 3)),
            shape: MaterialStatePropertyAll(
              ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            textStyle: MaterialStatePropertyAll(
                textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold))),),
        listTileTheme: const ListTileThemeData(
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
          ),
          tileColor: Colors.white,
          style: ListTileStyle.list,

        ),
        textTheme: textTheme,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0086FF),
        ),
        primaryColor: const Color(0xFF0086FF),
        scaffoldBackgroundColor: const Color(0xFFB5C7D8),
        useMaterial3: true,
        dialogBackgroundColor: const Color(0xFFFFD1F0),
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
