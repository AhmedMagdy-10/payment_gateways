import 'package:flutter/material.dart';
import 'package:payment_gateway/features/checkout/presentation/views/widgets/build_app_bar.dart';

import 'package:payment_gateway/features/checkout/presentation/views/widgets/my_card_body.dart';

class MyCardView extends StatelessWidget {
  const MyCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: customAppBar(title: 'My Card'), body: MyCardBody());
  }
}
