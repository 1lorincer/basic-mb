import 'package:flutter/material.dart';
import 'package:start_flutter_application/design/colors.dart';
import 'package:start_flutter_application/design/dimensions.dart';
import 'package:start_flutter_application/design/images.dart';

class VehicleItem extends StatelessWidget {
  const VehicleItem({super.key});

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
        onTap: () {},
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
    return Container();
  }

  Widget _state() {
    return Container();
  }
}
