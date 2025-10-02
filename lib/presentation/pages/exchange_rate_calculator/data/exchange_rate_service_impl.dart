import 'dart:convert';

import 'package:el_dorado/core/api.dart';
import 'package:el_dorado/presentation/pages/exchange_rate_calculator/domain/exchange_rate_service.dart';

import 'package:http/http.dart' as http;

class ExchangeRateServiceImpl implements ExchangeRateService {
  @override
  Future<double> getExchangeRate({
    required String fiatCurrency,
    required String cryptoCurrency,
    required double amount,
    required bool fiatToCrypto,
  }) async {
    final endpoint = 'orderbook/public/recommendations';

    // TODO is it efficient to create a new client for each request?
    final httpClient = http.Client();

    final response = await httpClient.get(
      Uri.https(baseUrl, endpoint, {
        'type': fiatToCrypto ? 0 : 1,
        'cryptoCurrencyId': cryptoCurrency,
        'fiatCurrencyId': fiatCurrency,
        'amount': amount,
        'amountCurrencyId': fiatToCrypto ? fiatCurrency : cryptoCurrency,
      }),
    );
    if (response.statusCode == 200) {
      final body = json.decode(response.body);
      return body['data']['byPrice']['fiatToCryptoExchangeRate'] as double;
    }
    throw Exception('error fetching posts');
  }
}
