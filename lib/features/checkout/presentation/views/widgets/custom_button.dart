import 'package:flutter/material.dart';
import 'package:payment_gateway/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
    required this.title,
    this.isLoading = false,
  });
  final void Function()? onTap;
  final String title;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.green,
        ),
        child: Center(
          child:
              isLoading
                  ? CircularProgressIndicator()
                  : Text(
                    title,
                    style: Styles.style22,
                    textAlign: TextAlign.center,
                  ),
        ),
      ),
    );
  }
}
