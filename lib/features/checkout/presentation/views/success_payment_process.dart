import 'package:flutter/material.dart';
import 'package:payment_gateway/features/checkout/presentation/views/widgets/build_app_bar.dart';
import 'package:payment_gateway/features/checkout/presentation/views/widgets/success_payment_process_body.dart';

class SuccessPaymentProcess extends StatelessWidget {
  const SuccessPaymentProcess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: Transform.translate(
        offset: Offset(0, -16),
        child: SuccessPaymentProcessBody(),
      ),
    );
  }
}
