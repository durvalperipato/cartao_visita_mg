import 'package:business_card_mg/view/business_card.dart';
import 'package:fluro/fluro.dart';

import '../main.dart';

class FluroRoutes {
  static final FluroRouter router = FluroRouter();

  static void setupRouter() {
    router.define('/', handler: _homeHandler);
    router.define('/cartaomg/:id', handler: _cardHandler);
  }

  static final Handler _homeHandler = Handler(
      handlerFunc: (context, Map<String, dynamic> params) => const MyHomePage(
            title: 'Gerador de Cartão de Visitas MG',
          ));
  static final Handler _cardHandler =
      Handler(handlerFunc: (context, Map<String, dynamic> params) {
    return BusinessCard(
      link: params['id'].first,
    );
  });
}
