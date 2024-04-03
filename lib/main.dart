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
    return MaterialApp.router(
      title: 'Conent',
      theme: ThemeData(
        textTheme: GoogleFonts.golosTextTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF004789)),
        scaffoldBackgroundColor: Colors.grey.shade400,
        useMaterial3: true,
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
