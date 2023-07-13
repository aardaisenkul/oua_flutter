import 'package:flutter/material.dart';
import 'package:high_paw/di/locator.dart';
import 'package:high_paw/presentation/pages/home_page.dart';
import 'presentation/pages/history_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Adoption App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // textTheme: GoogleFonts.poppinsTextTheme.call(),
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => const HomeScreen(),
        '/history': (ctx) => const HistoryPage(),
      },
    );
  }
}
