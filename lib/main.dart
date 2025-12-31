import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/increment_provider.dart';
import 'package:provider_project/pageone.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => Incrementprovider(),
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Pageone());
  }
}
