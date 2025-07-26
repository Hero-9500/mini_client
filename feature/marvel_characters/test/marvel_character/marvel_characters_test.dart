// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: directives_ordering

import 'package:flutter_test/flutter_test.dart';
import 'package:tide_di/tide_di.dart';

import 'step/i_am_on_the_marvel_characters_page.dart';
import 'step/backend_responds_with.dart';
import 'step/i_see_a_list_of_marvel_characters.dart';
import 'step/i_see_an_error_message.dart';
import 'package:test_utils/src/test_container.dart';

void main() {
  setUpAll(() async {
    await initializeDIContainer([TestContainer()]);
  });

  group('''Marvel Characters''', () {
    Future<void> bddSetUp(WidgetTester tester) async {
      await iAmOnTheMarvelCharactersPage(tester);
    }

    testWidgets(
        '''The Marvel characters flow should display a list of Marvel characters''',
        (tester) async {
      await bddSetUp(tester);
      await backendRespondsWith(tester, 'list');
      await iSeeAListOfMarvelCharacters(tester);
    });

    testWidgets(
        '''The Marvel characters flow should display an error message when the backend fails''',
        (tester) async {
      await bddSetUp(tester);
      await backendRespondsWith(tester, 'error');
      await iSeeAnErrorMessage(tester);
    });
  });
}
