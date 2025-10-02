abstract class ExchangeRateService {
  Future<double> getExchangeRate({
    required String fiatCurrency,
    required String cryptoCurrency,
    required double amount,
    required bool fiatToCrypto,
  });
}
