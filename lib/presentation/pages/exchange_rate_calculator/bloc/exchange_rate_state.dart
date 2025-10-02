import 'package:equatable/equatable.dart';

abstract class ExchangeRateState extends Equatable {
  @override
  List<Object> get props => [];
}

final class ExchangeRateInitial extends ExchangeRateState {}

final class ExchangeRateLoading extends ExchangeRateState {}

final class ExchangeRateFetched extends ExchangeRateState {
  final double exchangeRate;

  ExchangeRateFetched(this.exchangeRate);
}
