import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_gateway/core/utils/styles.dart';

AppBar customAppBar({String? title}) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: Center(
      child: SvgPicture.asset('assets/images/Arrow 1.svg', height: 20),
    ),
    centerTitle: true,
    title: Text(title ?? '', style: Styles.style25),
  );
}
