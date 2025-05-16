import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_gateway/core/utils/styles.dart';
import 'package:payment_gateway/features/checkout/presentation/views/widgets/my_card_body.dart';

class MyCardView extends StatelessWidget {
  const MyCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Center(
          child: SvgPicture.asset('assets/images/Arrow 1.svg', height: 20),
        ),
        centerTitle: true,
        title: Text('My Card', style: Styles.style25),
      ),
      body: MyCardBody(),
    );
  }
}
