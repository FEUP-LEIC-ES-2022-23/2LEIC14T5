import 'package:filter_it/app_pages/home_page.dart';
import 'package:filter_it/app_pages/search_page.dart';
import 'package:filter_it/app_pages/favorites_page.dart';
import 'package:filter_it/app_pages/help_page.dart';
import 'package:filter_it/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/testing.dart';
import 'package:http/http.dart' as http;

void main() {
  group('Navigation Drawer Tests', () {

    testWidgets('Tapping on "Home Page" opens HomePage',(WidgetTester tester) async {
      await tester.pumpWidget(const App());

      final drawerIcon = find.byIcon(Icons.menu);
      expect(drawerIcon, findsOneWidget);
      await tester.tap(drawerIcon);
      await tester.pumpAndSettle();

      final homeItem = find.byKey(const Key('home_key'));
      expect(homeItem, findsOneWidget);
      await tester.tap(homeItem);
      await tester.pumpAndSettle();

      expect(find.byType(HomePage), findsOneWidget);
    });

    testWidgets('Tapping on "Search Page" opens SearchPage', (WidgetTester tester) async {

      final drawerIcon = find.byIcon(Icons.menu);
      expect(drawerIcon, findsOneWidget);
      await tester.tap(drawerIcon);
      await tester.pumpAndSettle();

      final searchItem = find.byKey(const Key('search_key'));
      expect(searchItem, findsOneWidget);
      await tester.tap(searchItem);
      await tester.pumpAndSettle();

      expect(find.byType(SearchPage), findsOneWidget);
    });

    testWidgets('Tapping on "Favorites" opens FavoritePage',(WidgetTester tester) async {
      await tester.pumpWidget(const App());

      final drawerIcon = find.byIcon(Icons.menu);
      expect(drawerIcon, findsOneWidget);
      await tester.tap(drawerIcon);
      await tester.pumpAndSettle();

      final favoritesItem = find.byKey(const Key('favorites_key'));
      expect(favoritesItem, findsOneWidget);
      await tester.tap(favoritesItem);
      await tester.pumpAndSettle();

      expect(find.byType(FavoritesPage), findsOneWidget);
    });

    testWidgets('Tapping on "Help Page" opens HelpPage',(WidgetTester tester) async {
      await tester.pumpWidget(const App());

      final drawerIcon = find.byIcon(Icons.menu);
      expect(drawerIcon, findsOneWidget);
      await tester.tap(drawerIcon);
      await tester.pumpAndSettle();

      final helpItem = find.byKey(const Key('help_key'));
      expect(helpItem, findsOneWidget);
      await tester.tap(helpItem);
      await tester.pumpAndSettle();

      expect(find.byType(HelpPage), findsOneWidget);
    });
  });
}