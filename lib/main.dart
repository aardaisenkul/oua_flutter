import 'package:flutter/material.dart';
import 'package:high_paw/di/locator.dart';
import 'package:high_paw/presentation/pages/home_page.dart';
import 'package:high_paw/src/welcomePage.dart';
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
        primarySwatch: Colors.orange,
        // textTheme: GoogleFonts.poppinsTextTheme.call(),
      ),
      initialRoute: '/welcome',
      routes: {
        '/': (ctx) => const HomeScreen(),
        '/welcome': (ctx) => WelcomePage(),
        '/history': (ctx) => const HistoryPage(),
      },
    );
  }
}
