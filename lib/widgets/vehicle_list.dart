import 'package:flutter/material.dart';
import 'package:start_flutter_application/design/dialog/error_dialog.dart';
import 'package:start_flutter_application/design/dimensions.dart';
import 'package:start_flutter_application/design/ui/accent_button.dart';
import 'package:start_flutter_application/screens/driver_screen.dart';
import 'package:start_flutter_application/screens/vehicle_state/vehicle_state_screen.dart';
import 'package:start_flutter_application/widgets/vehicle_item.dart';

import '../design/utils/size_utils.dart';

class VehicleList extends StatelessWidget {
  const VehicleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _list(context),
        Align(
          alignment: Alignment.bottomCenter,
          child: _updatedButton(context),
        ),
      ],
    );
  }

  Widget _list(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.only(
        left: padding16,
        bottom: getListBottomPadding(context),
        right: padding16,
        top: padding16,
      ),
      itemBuilder: (BuildContext ctx, int index) {
        return VehicleItem(
          onTap: () async {
            await _showDriverPage(context);
          },
          onStateTap: () async {
            await _showVehicleStatePage(context);
          },
        );
      },
      separatorBuilder: (BuildContext ctx, int index) {
        return SizedBox(height: height8);
      },
      itemCount: 15,
    );
  }

  Widget _updatedButton(BuildContext ctx) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          bottom: padding8,
          left: padding16,
          right: padding16,
        ),
        child: AccentButton(
          title: 'Update',
          onTap: () {
            _showErrorDialog(ctx);
          },
        ),
      ),
    );
  }

  Future<void> _showDriverPage(BuildContext ctx) async {
    await Navigator.push(
      ctx,
      MaterialPageRoute(
        builder: (ctx) {
          return const DriverScreen();
        },
      ),
    );
  }

  void _showErrorDialog(BuildContext ctx) {
    showDialog(
      context: ctx,
      builder: (BuildContext ctx) {
        return const ErrorDialog(
          description: 'Server is unavailable. Please try again later.',
        );
      },
    );
  }

  Future<void> _showVehicleStatePage(BuildContext context) async {
    await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const VehicleStateScreen();
    }));
  }
}
