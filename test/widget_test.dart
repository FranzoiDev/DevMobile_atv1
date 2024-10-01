import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:atv_1/app.dart';

void main() {
  testWidgets('Testa se o título da AppBar é "Cripto Moedas"', (WidgetTester tester) async {
    // Inicializa o aplicativo.
    await tester.pumpWidget(const MeuApp());

    // Verifica se o título correto aparece na AppBar.
    expect(find.text('Cripto Moedas'), findsOneWidget);
  });

  testWidgets('Testa se há 5 cards de moedas na tela', (WidgetTester tester) async {
    // Inicializa o aplicativo.
    await tester.pumpWidget(const MeuApp());

    // Verifica se há 5 widgets Card na tela.
    expect(find.byType(Card), findsNWidgets(5));
  });

  testWidgets('Verifica se a moeda Bitcoin aparece na lista', (WidgetTester tester) async {
    // Inicializa o aplicativo.
    await tester.pumpWidget(const MeuApp());

    // Verifica se o texto "Bitcoin" está presente na tela.
    expect(find.text('Bitcoin'), findsOneWidget);
  });
}
