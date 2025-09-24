
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/models/wellness_center.dart';
import 'package:myapp/widgets/center_card.dart';

void main() {
  testWidgets('CenterCard displays wellness center information', (WidgetTester tester) async {
    // Create a mock WellnessCenter
    const wellnessCenter = WellnessCenter(
      name: 'Test Center',
      location: 'Test Location',
      image: 'https://picsum.photos/seed/test-center/400/300',
    );

    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: CenterCard(center: wellnessCenter),
        ),
      ),
    );

    // Verify that the center's name and location are displayed.
    expect(find.text('Test Center'), findsOneWidget);
    expect(find.text('Test Location'), findsOneWidget);
  });
}
