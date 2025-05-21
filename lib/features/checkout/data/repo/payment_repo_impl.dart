import 'package:dartz/dartz.dart';
import 'package:payment_gateway/core/errors/failure.dart';
import 'package:payment_gateway/core/utils/stripe_service.dart';
import 'package:payment_gateway/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:payment_gateway/features/checkout/data/repo/payment_repo.dart';

class PaymentRepoImpl extends PaymentRepo {
  StripeService stripeService = StripeService();
  @override
  Future<Either<Failure, void>> makePayment({
    required PaymentIntentInputModel paymentIntentInputModel,
  }) async {
    try {
      await stripeService.makePayment(
        paymentIntentInputModel: paymentIntentInputModel,
      );
      return right(null);
    } catch (e) {
      return left(ServerFailure(errMassage: e.toString()));
    }
  }
}
