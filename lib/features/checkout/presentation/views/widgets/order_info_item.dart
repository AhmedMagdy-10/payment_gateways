import 'package:flutter/material.dart';
import 'package:payment_gateway/core/utils/styles.dart';

class OrderInfoWidget extends StatelessWidget {
  const OrderInfoWidget({
    super.key,
    required this.title,
    required this.price,
    this.style,
    this.stylePrice,
  });

  final String title, price;
  final TextStyle? style;
  final TextStyle? stylePrice;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: style ?? Styles.style18),
        Spacer(),
        Text(price, style: stylePrice ?? Styles.style18),
      ],
    );
  }
}
