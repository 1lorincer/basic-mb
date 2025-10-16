import 'package:flutter/material.dart';
import 'package:start_flutter_application/design/dimensions.dart';
import 'package:start_flutter_application/design/ui/accent_button.dart';
import 'package:start_flutter_application/widgets/vehicle_item.dart';

class VehicleList extends StatelessWidget {
  const VehicleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _list(context),
        Align(alignment: Alignment.bottomCenter, child: _updatedButton()),
      ],
    );
  }

  Widget _list(BuildContext context) {
    final safeBottomPadding = MediaQuery.of(context).padding.bottom;
    final bottomPadding = (safeBottomPadding + height8) * 2 + height40;
    return ListView.separated(
      padding: EdgeInsets.only(
        left: padding16,
        bottom: bottomPadding,
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
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          bottom: padding8,
          left: padding16,
          right: padding16,
        ),
        child: AccentButton(title: 'Update', onTap: () {}),
      ),
    );
  }
}
