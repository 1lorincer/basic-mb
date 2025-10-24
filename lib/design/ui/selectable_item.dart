import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:start_flutter_application/design/colors.dart';
import 'package:start_flutter_application/design/dimensions.dart';
import 'package:start_flutter_application/design/images.dart';
import 'package:start_flutter_application/design/styles.dart';

class SelectableItem extends StatelessWidget {
  final SvgPicture image;
  final double leftPadding;
  final String title;
  final bool isSelected;
  final Function() onTap;

  const SelectableItem({
    super.key,
    required this.onTap,
    required this.title,
    required this.isSelected,
    required this.image,
    required this.leftPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: surfaceColor,
      elevation: elevation006,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius8),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(radius8),
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.only(left: leftPadding, right: padding16),
          child: Row(
            children: <Widget>[
              image,
              const SizedBox(width: width16),
              Expanded(
                child: Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: body2TextStyle,
                ),
              ),
              const SizedBox(width: width16),
              if (isSelected) checkImage,
            ],
          ),
        ),
      ),
    );
  }
}
