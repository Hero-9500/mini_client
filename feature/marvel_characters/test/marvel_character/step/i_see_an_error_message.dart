import 'package:flutter_test/flutter_test.dart';

/// Usage: I see an error message
Future<void> iSeeAnErrorMessage(WidgetTester tester) async {
  expect(find.text('3-D Men'), findsNothing);
}
