import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentWayesList extends StatefulWidget {
  const PaymentWayesList({super.key});

  @override
  State<PaymentWayesList> createState() => _PaymentWayesListState();
}

class _PaymentWayesListState extends State<PaymentWayesList> {
  final List<String> paymentMethodListItem = const [
    'assets/images/Card.svg',
    'assets/images/paypal.svg',
    'assets/images/SVGRepo_iconCarrier.svg',
  ];

  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: paymentMethodListItem.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  activeIndex = index;
                });
              },
              child: PaymentMethodItem(
                isActive: activeIndex == index,
                image: paymentMethodListItem[index],
              ),
            ),
          );
        },
      ),
    );
  }
}

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({super.key, required this.isActive, this.image});

  final bool isActive;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 600),
      width: 100,
      height: 60,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(color: isActive ? Colors.green : Color(0xffD9D9D9)),
        ),

        shadows: [
          BoxShadow(
            color: isActive ? Colors.green : Colors.white,
            spreadRadius: 0,
            offset: Offset(0, 0),
            blurRadius: 5,
          ),
        ],
      ),
      child: Center(child: SvgPicture.asset(image!)),
    );
  }
}
