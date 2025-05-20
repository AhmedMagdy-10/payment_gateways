import 'package:flutter/material.dart';
import 'package:payment_gateway/core/utils/styles.dart';
import 'package:payment_gateway/features/checkout/presentation/views/card_details.dart';
import 'package:payment_gateway/features/checkout/presentation/views/widgets/custom_button.dart';
import 'package:payment_gateway/features/checkout/presentation/views/widgets/order_info_item.dart';
import 'package:payment_gateway/features/checkout/presentation/views/widgets/payment_method_item_list.dart';

class MyCardBody extends StatelessWidget {
  const MyCardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),

      child: Column(
        children: [
          SizedBox(height: 20),
          Image.asset('assets/images/Group 6.png'),
          SizedBox(height: 25),

          OrderInfoWidget(title: 'Order Subtotal', price: r'$255'),
          SizedBox(height: 3),
          OrderInfoWidget(title: 'Discount', price: r'$0'),
          SizedBox(height: 3),
          OrderInfoWidget(title: 'Shipping', price: r'$50'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Divider(height: 30, thickness: 2, color: Color(0xffC7C7C7)),
          ),

          OrderInfoWidget(title: 'Total', price: r'$80', style: Styles.style24),
          SizedBox(height: 16),
          CustomButton(
            title: 'Complete Payment',
            onTap: () {
              //      Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => PaymentDetails()
              //   ),
              // );
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return PaymentMethodbottomSheet();
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class PaymentMethodbottomSheet extends StatelessWidget {
  const PaymentMethodbottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Select pay Method', style: Styles.style20),
          Divider(height: 15, thickness: 2, color: Color(0xffC7C7C7)),

          SizedBox(height: 20),
          PaymentWayesList(),
          SizedBox(height: 30),
          CustomButton(title: 'Continue'),
        ],
      ),
    );
  }
}
