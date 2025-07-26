import 'package:flutter/material.dart';
import 'package:tide_design_system/tide_design_system.dart';
import 'package:mini_client/src/presentation/boot_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Mini client',
    theme: miniClientThemeData,
    home: const BootPage(),
  );
}
