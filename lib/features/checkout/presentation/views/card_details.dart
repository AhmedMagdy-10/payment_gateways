import 'package:flutter/material.dart';
import 'package:payment_gateway/features/checkout/presentation/views/widgets/build_app_bar.dart';
import 'package:payment_gateway/features/checkout/presentation/views/widgets/payment_details_body.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'Payment Details'),
      body: PaymentDetailsBody(),
    );
  }
}
