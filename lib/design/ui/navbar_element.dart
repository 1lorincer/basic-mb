import 'package:flutter/material.dart';
import 'package:start_flutter_application/design/colors.dart';
import 'package:start_flutter_application/design/dimensions.dart';
import 'package:start_flutter_application/design/images.dart';
import 'package:start_flutter_application/design/styles.dart';

class NavbarElement extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Function() onPressed;

  const NavbarElement({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: surfaceColor,
      elevation: elevation0,
      centerTitle: true,
      leading: IconButton(onPressed: onPressed, icon: arrowBackKiparoImage),
      title: Text(title, textAlign: TextAlign.center, style: primaryTextStyle),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
