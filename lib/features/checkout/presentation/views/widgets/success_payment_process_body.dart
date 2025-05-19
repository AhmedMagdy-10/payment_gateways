import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_gateway/core/utils/styles.dart';
import 'package:payment_gateway/features/checkout/presentation/views/widgets/order_info_item.dart';

class SuccessPaymentProcessBody extends StatelessWidget {
  const SuccessPaymentProcessBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ThankYouCard(),

          Positioned(
            left: -20,
            bottom: MediaQuery.sizeOf(context).height * 0.2,

            child: CircleAvatar(backgroundColor: Colors.white),
          ),
          Positioned(
            right: -20,
            bottom: MediaQuery.sizeOf(context).height * 0.2,
            child: CircleAvatar(backgroundColor: Colors.white),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: -50,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xffEDEDED),
              child: CircleAvatar(
                backgroundColor: Color(0xff34A853),
                radius: 40,
                child: Icon(Icons.check, size: 35, color: Colors.white),
              ),
            ),
          ),

          Positioned(
            left: 0,
            right: 0,
            bottom: MediaQuery.sizeOf(context).height * 0.2 + 20,
            child: DottedLine(
              direction: Axis.horizontal,

              lineLength: MediaQuery.sizeOf(context).width - 90,
              lineThickness: 2,
              dashLength: 4.0,
              dashColor: Color(0xffB8B8B8),
              dashRadius: 0.0,
              dashGapLength: 6,
              dashGapColor: Colors.transparent,
              dashGapRadius: 0.0,
            ),
          ),
        ],
      ),
    );
  }
}

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: Color(0xffEDEDED)),
      child: Padding(
        padding: const EdgeInsets.only(top: 50 + 16, left: 22, right: 22),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Thank you!', style: Styles.style25),
            Text('Your transaction was successful', style: Styles.style20),
            SizedBox(height: 42),
            OrderInfoWidget(
              title: 'Date',

              price: '01/24/2025',
              stylePrice: Styles.style18SemiBold,
            ),
            SizedBox(height: 20),
            OrderInfoWidget(
              title: 'Time',

              price: '6:16 PM',
              stylePrice: Styles.style18SemiBold,
            ),
            SizedBox(height: 20),
            OrderInfoWidget(
              title: 'To',

              price: 'Bebo',
              stylePrice: Styles.style18SemiBold,
            ),
            SizedBox(height: 15),
            Divider(height: 15, thickness: 2, color: Color(0xffC7C7C7)),
            SizedBox(height: 20),
            OrderInfoWidget(
              title: 'Total',

              price: r'$50.6',
              style: Styles.style24,
              stylePrice: Styles.style24,
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16, left: 23),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/images/logo.svg'),
                    SizedBox(width: 23),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text('Credit Card'), Text('Mastercard **78')],
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(FontAwesomeIcons.barcode, size: 60),

                Container(
                  width: 115,
                  height: 60,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(color: Color(0xff34A853)),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'PAID',
                      style: Styles.style24.copyWith(color: Color(0xff34A853)),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: ((MediaQuery.sizeOf(context).height * 0.2 + 20) / 3),
            ),
          ],
        ),
      ),
    );
  }
}
