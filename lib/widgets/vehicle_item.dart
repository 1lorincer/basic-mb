import 'package:flutter/material.dart';
import 'package:start_flutter_application/design/colors.dart';
import 'package:start_flutter_application/design/dimensions.dart';
import 'package:start_flutter_application/design/images.dart';
import 'package:start_flutter_application/design/styles.dart';

class VehicleItem extends StatelessWidget {
  final Function() onTap;
  final Function() onStateTap;

  const VehicleItem({super.key, required this.onTap, required this.onStateTap});

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
            children: <Widget>[vehicleMotorcycleImage, _title(), _state()],
          ),
        ),
      ),
    );
  }

  Widget _title() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: padding6, right: padding6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Bmw GS-7648',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: body2TextStyle,
            ),
            if (false)
              Text(
                'No driver',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: hint1TextStyle,
              )
            else
              RichText(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                text: const TextSpan(
                  style: TextStyle(fontSize: fontSize14),
                  children: <TextSpan>[
                    TextSpan(text: 'Driver: ', style: hint1TextStyle),
                    TextSpan(text: 'Paul', style: body2TextStyle),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _state() {
    return InkWell(
      onTap: () {
        onStateTap();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          statePickupImage,
          const Text('pickup', style: hint2TextStyle),
        ],
      ),
    );
  }
}
