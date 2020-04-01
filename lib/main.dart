import 'package:flutter/material.dart';
import 'app.dart';
import './models/database_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseManager.initialize();
  runApp(Bingo());
}