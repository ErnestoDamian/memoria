import 'package:flutter/material.dart';
import 'package:memoria/router/app_routes.dart';
import 'package:memoria/services/services.dart';
import 'package:memoria/themes/app_theme.dart';
import 'package:provider/provider.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => BuzosServices())],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Memoria',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      theme: Apptheme.principalTheme
    );
  }
}
