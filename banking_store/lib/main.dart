import 'package:banking_store/home_page/tabs/wallet/wallet_tab.dart';
import 'package:banking_store/home_page/tab_page.dart';
import 'package:banking_store/landing_page/landing_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: TabPage(),
    );
  }
}
