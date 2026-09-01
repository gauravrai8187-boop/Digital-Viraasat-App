import 'package:flutter/material.dart';
import '../core/network/api_client.dart';
import 'home_shell.dart';
class AuthScreen extends StatelessWidget {
  final ApiClient api;
  const AuthScreen({super.key, required this.api});
  @override Widget build(BuildContext context) => Scaffold(body: Center(child: ElevatedButton(onPressed: ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>HomeShell(api: api))), child: Text('Digital Viraasat - Enter'))));
}
