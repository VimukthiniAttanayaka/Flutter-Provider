import 'package:flutter/material.dart';
import 'package:my_app/pages/count_page.dart';
import 'package:my_app/pages/home_page.dart';
import 'package:my_app/pages/setting_page.dart';
import 'package:my_app/providers/count_provider.dart';
import 'package:my_app/providers/user_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
        ChangeNotifierProvider(create: (_) => CountProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
        routes: {
          '/home': (context) => const HomePage(),
          '/setting': (context) => const SettingPage(),
          '/count': (context) => const CountPage(),
        },
      ),
    );
  }
}
