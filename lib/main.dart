import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/controller/controller.dart';
import 'package:provider_statemanagement/views/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MyController(),
        ),
        ChangeNotifierProvider(
          create: (context) => ColorProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
