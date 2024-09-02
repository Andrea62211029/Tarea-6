import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_counter_provider/providers/counter_provider.dart';
import 'package:flutter_counter_provider/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
        // mas providers...
      ],
      child: MaterialApp(
        title: 'Counter Provider',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
