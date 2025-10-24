import 'package:flutter/material.dart';
import 'package:start_flutter_application/design/colors.dart';
import 'package:start_flutter_application/design/dimensions.dart';
import 'package:start_flutter_application/design/ui/accent_button.dart';
import 'package:start_flutter_application/design/utils/size_utils.dart';

class DriverList extends StatelessWidget {
  const DriverList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[_list(context)]);
  }

  Widget _list(BuildContext context) {

    return ListView.separated(
      padding: EdgeInsets.only(
        left: padding16,
        bottom: getListBottomPadding(context),
        right: padding16,
        top: padding16,
      ),
      itemBuilder: (ctx, index) =>
          Container(color: surfaceColor, height: height64),
      separatorBuilder: (ctx, index) => SizedBox(height: height8),
      itemCount: 10,
    );
  }

  Widget _saveButton() {
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
