import 'package:dartz/dartz.dart';
import 'package:payment_gateway/core/errors/failure.dart';
import 'package:payment_gateway/features/checkout/data/models/payment_intent_input_model.dart';

abstract class PaymentRepo {
  Future<Either<Failure, void>> makePayment({
    required PaymentIntentInputModel paymentIntentInputModel,
  });
}
