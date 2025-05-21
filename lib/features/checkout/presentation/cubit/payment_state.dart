abstract class PaymentState {}

class PaymentInitState extends PaymentState {}

class PaymentLoadingState extends PaymentState {}

class PaymentSuccessState extends PaymentState {}

class PaymentErrorState extends PaymentState {
  final String errMassage;

  PaymentErrorState({required this.errMassage});
}
