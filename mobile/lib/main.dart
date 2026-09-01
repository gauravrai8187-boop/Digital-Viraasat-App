// PIECE-22 — Digital Viraasat owner mobile app entry.
import 'package:flutter/material.dart';
import 'core/network/api_client.dart';
import 'ui/theme.dart';
import 'ui/auth_screen.dart';
import 'ui/home_shell.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const DigitalViraasatApp());
}
class DigitalViraasatApp extends StatelessWidget {
  const DigitalViraasatApp({super.key});
  @override
  Widget build(BuildContext context) {
    const apiBase = String.fromEnvironment('API_BASE', defaultValue: 'https://api.digitalviraasat.in/api/v1');
    final api = ApiClient(apiBase);
    return MaterialApp(
      title: 'Digital Viraasat',
      debugShowCheckedModeBanner: false,
      theme: buildAppTheme(),
      home: AuthScreen(api: api),
      routes: {
        '/home': (_) => HomeShell(api: api),
      },
    );
  }
}
