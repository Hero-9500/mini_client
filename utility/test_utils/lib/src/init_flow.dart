import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> initFlow(
  WidgetTester tester,
  Widget Function() flowBuilder,
) async {
  final app = MaterialApp(home: flowBuilder());
  await tester.pumpWidget(app);
}
