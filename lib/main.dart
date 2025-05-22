import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_gateway/core/utils/api_keys.dart';
import 'package:payment_gateway/features/checkout/presentation/views/my_card_view.dart';

void main() {
  runApp(const MyApp());
  Stripe.publishableKey = ApiKeys.publishableKey;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyCardView());
  }
}
