import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_empty_state/smart_empty_state.dart';

void main() {
  testWidgets('should display no data state correctly', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: SmartEmptyState(type: EmptyStateType.noData)),
      ),
    );

    expect(find.text('No Data'), findsOneWidget);
    expect(find.text('There is no data to display.'), findsOneWidget);

    expect(find.byIcon(Icons.inbox_outlined), findsOneWidget);
  });
  testWidgets('should call onAction when retry button is pressed', (
    tester,
  ) async {
    var actionCalled = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SmartEmptyState(
            type: EmptyStateType.noInternet,
            onAction: () {
              actionCalled = true;
            },
          ),
        ),
      ),
    );

    expect(find.text('Retry'), findsOneWidget);

    await tester.tap(find.text('Retry'));
    await tester.pump();

    expect(actionCalled, isTrue);
  });
  testWidgets('should display custom empty state configuration', (
    tester,
  ) async {
    const config = EmptyStateConfig(
      icon: Icons.favorite,
      title: 'Nothing Here',
      message: 'Your favorites are empty.',
      actionText: 'Add Favorite',
    );

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: SmartEmptyState(type: EmptyStateType.noData, config: config),
        ),
      ),
    );

    expect(find.text('Nothing Here'), findsOneWidget);
    expect(find.text('Your favorites are empty.'), findsOneWidget);
    expect(find.text('Add Favorite'), findsOneWidget);
    expect(find.byIcon(Icons.favorite), findsOneWidget);
  });
  testWidgets('should apply custom theme correctly', (tester) async {
    const theme = SmartEmptyStateTheme(
      iconContainerSize: 120,
      iconSize: 60,
      horizontalPadding: 32,
      maxMessageWidth: 300,
    );

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: SmartEmptyState(type: EmptyStateType.noData, theme: theme),
        ),
      ),
    );

    final iconContainer = tester.widget<Container>(find.byType(Container));

    expect(iconContainer.constraints?.maxWidth, 120);
    expect(iconContainer.constraints?.maxHeight, 120);

    final icon = tester.widget<Icon>(find.byIcon(Icons.inbox_outlined));

    expect(icon.size, 60);
  });
}
