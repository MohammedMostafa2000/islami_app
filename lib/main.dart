import 'package:flutter/material.dart';
import 'package:islami_app/islami_app.dart';
import 'package:islami_app/providers/most_recent_suras_provider.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ChangeNotifierProvider(
      create: (context) => MostRecentSurasProvider(),
      child: const IslamiApp(),
    ),
  );
}
