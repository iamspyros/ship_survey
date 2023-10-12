import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ship_survey/Inspection.dart';
import 'package:survey_kit/survey_kit.dart';

void main() {
  group('InspectionPage widget test', () {
    testWidgets('Renders SurveyKit widget', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: InspectionPage(),
        ),
      );

      expect(find.byType(SurveyKit), findsOneWidget);
    });

    testWidgets('Completes survey', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: InspectionPage(),
        ),
      );

      // Tap the "Next" button to go to the next question
      await tester.tap(find.text('Next'));
      await tester.pump();

      // Tap the "Next" button to go to the next question
      await tester.tap(find.text('Next'));
      await tester.pump();

            // Tap the "Next" button to go to the next question
      await tester.tap(find.text('Next'));
      await tester.pump();

      // Verify that the survey is completed
      expect(find.text('Next'), findsOneWidget);
    });
  });
}