import 'package:flutter/material.dart';
import 'package:start_flutter_application/design/colors.dart';
import 'package:start_flutter_application/design/dimensions.dart';
import 'package:start_flutter_application/design/images.dart';
import 'package:start_flutter_application/design/styles.dart';

class DriverItem extends StatelessWidget {
  final String driverName;
  final bool isSelected;
  final Function() onTap;

  const DriverItem({
    super.key,
    required this.onTap,
    required this.driverName,
    required this.isSelected,
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
          padding: const EdgeInsets.only(left: padding8, right: padding16),
          child: Row(
            children: <Widget>[
              accountCircleImage,
              const SizedBox(width: width16),
              Expanded(
                child: Text(
                  driverName,
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
