import 'package:flutter/material.dart';
import 'package:start_flutter_application/design/colors.dart';
import 'package:start_flutter_application/design/dimensions.dart';
import 'package:start_flutter_application/design/styles.dart';

class AccentButton extends StatelessWidget {
  final String title;
  final Function() onTap;

  const AccentButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        padding: const EdgeInsets.only(left: padding16, right: padding16),
        fixedSize: const Size(200, 40),
        maximumSize: const Size.fromHeight(height40),
        minimumSize: const Size(width200, height40),
        elevation: elevation0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius20),
        ),
      ),
      child: Text(title, maxLines: 1, style: accentButtonTextStyle),
    );
  }
}
