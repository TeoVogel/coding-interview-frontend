import 'package:equatable/equatable.dart';

sealed class ExchangeRateEvent extends Equatable {
  @override
  List<Object> get props => [];
}

final class ExchangeRateRequested extends ExchangeRateEvent {}
