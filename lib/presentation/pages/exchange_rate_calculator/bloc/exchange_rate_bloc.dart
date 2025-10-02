import 'package:bloc/bloc.dart';
import 'package:el_dorado/presentation/pages/exchange_rate_calculator/bloc/exchange_rate_event.dart';
import 'package:el_dorado/presentation/pages/exchange_rate_calculator/bloc/exchange_rate_state.dart';
import 'package:el_dorado/presentation/pages/exchange_rate_calculator/domain/exchange_rate_service.dart';
import 'package:http/http.dart' as http;

class ExchangeRateBloc extends Bloc<ExchangeRateEvent, ExchangeRateState> {
  ExchangeRateBloc({required this.service}) : super(ExchangeRateInitial()) {
    on<ExchangeRateRequested>(_onExchangeRateRequested);
  }

  final ExchangeRateService service;

  Future<void> _onExchangeRateRequested(
    ExchangeRateRequested event,
    Emitter<ExchangeRateState> emit,
  ) async {
    try {
      final exchangeRate = await service.getExchangeRate(
        fiatCurrency: "USD",
        cryptoCurrency: "TATUM-TRON-USDT",
        amount: 25,
        fiatToCrypto: true,
      );

      emit(ExchangeRateFetched(exchangeRate));
    } catch (_) {
      // TODO create error state
      emit(ExchangeRateFetched(0));
    }
  }
}
