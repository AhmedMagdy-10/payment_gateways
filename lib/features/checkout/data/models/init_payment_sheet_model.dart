class InitPaymentSheetModel {
  final String clientSecret;
  final String customerId;
  final String ephemeralKey;

  InitPaymentSheetModel({
    required this.clientSecret,
    required this.customerId,
    required this.ephemeralKey,
  });
}
