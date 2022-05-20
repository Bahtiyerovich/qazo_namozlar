import 'package:flutter/material.dart';
import 'package:qazonamozlar/core/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qazo Namozlar',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colors.green,
        ),
      ),
      onGenerateRoute: Routes.instantce.onGeneralRoute,
      initialRoute: '/homeview',
    );
  }
}
