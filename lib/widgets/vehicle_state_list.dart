import 'package:flutter/material.dart';
import 'package:start_flutter_application/design/dimensions.dart';
import 'package:start_flutter_application/design/images.dart';
import 'package:start_flutter_application/design/ui/accent_button.dart';
import 'package:start_flutter_application/design/utils/size_utils.dart';
import 'package:start_flutter_application/design/ui/selectable_item.dart';

class VehicleStateList extends StatefulWidget {
  const VehicleStateList({super.key});

  @override
  State<VehicleStateList> createState() => _DriverListState();
}

class _DriverListState extends State<VehicleStateList> {
  int? _selectedStateIndex;

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[_list()]);
  }

  Widget _list() {
    return ListView.separated(
      padding: EdgeInsets.only(
        left: padding16,
        bottom: getListBottomPadding(context),
        right: padding16,
        top: padding16,
      ),
      itemBuilder: (ctx, index) {
        final bool isSelected = _selectedStateIndex == index;
        return SelectableItem(
          title: 'Pickup',
          leftPadding: padding16,
          image: statePickupImage,
          isSelected: isSelected,
          onTap: () {
            setState(() {
              _selectedStateIndex = index;
            });
          },
        );
      },
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
