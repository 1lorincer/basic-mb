import 'package:flutter/material.dart';
import 'package:start_flutter_application/design/colors.dart';
import 'package:start_flutter_application/design/dimensions.dart';
import 'package:start_flutter_application/widgets/vehicle_item.dart';

class VehicleList extends StatelessWidget {
  const VehicleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[_list(), _updatedButton()]);
  }

  Widget _list() {
    return ListView.separated(
      padding: const EdgeInsets.only(
        left: padding16,
        right: padding16,
        top: padding16,
      ),
      itemBuilder: (BuildContext ctx, int index) {
        return const VehicleItem();
      },
      separatorBuilder: (BuildContext ctx, int index) {
        return SizedBox(height: height8);
      },
      itemCount: 15,
    );
  }

  Widget _updatedButton() {
    return Container();
  }
}
