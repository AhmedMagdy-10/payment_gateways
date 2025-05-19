import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:payment_gateway/features/checkout/presentation/views/success_payment_process.dart';
import 'package:payment_gateway/features/checkout/presentation/views/widgets/custom_button.dart';
import 'package:payment_gateway/features/checkout/presentation/views/widgets/custom_card.dart';
import 'package:payment_gateway/features/checkout/presentation/views/widgets/payment_method_item_list.dart';

class PaymentDetailsBody extends StatefulWidget {
  const PaymentDetailsBody({super.key});

  @override
  State<PaymentDetailsBody> createState() => _PaymentDetailsBodyState();
}

class _PaymentDetailsBodyState extends State<PaymentDetailsBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: PaymentWayesList()),

        SliverToBoxAdapter(child: CustomCreditCard(formKey: formKey)),

        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
              child: CustomButton(
                title: 'Pay',
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SuccessPaymentProcess(),
                      ),
                    );
                    log('saved');
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                  }
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
