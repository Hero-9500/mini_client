import 'package:flutter_test/flutter_test.dart';
import 'package:test_utils/test_utils.dart';
import 'package:tide_di/tide_di.dart';

import '../../util/data.dart';

/// Usage: backend responds with {value}
Future<void> backendRespondsWith(
  WidgetTester tester,
  String scenarioName,
) async {
  const path = 'v1/public/characters';
  final interceptor = diContainer<FeatureTestInterceptor>();

  switch (scenarioName) {
    case 'list':
      interceptor.mockRequest(path, listOfCharacters);
    case 'error':
      interceptor.mockFailure(path, error);
    default:
      throw ArgumentError('Invalid scenario name: $scenarioName');
  }

  await tester.pumpAndSettle();
}
