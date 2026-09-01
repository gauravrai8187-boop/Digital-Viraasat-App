import 'package:flutter/material.dart';
import '../core/network/api_client.dart';
class HomeShell extends StatelessWidget {
  final ApiClient api;
  const HomeShell({super.key, required this.api});
  @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: Text('Digital Viraasat')), body: Center(child: Text('Vault Ready - Zero Knowledge')));
}
