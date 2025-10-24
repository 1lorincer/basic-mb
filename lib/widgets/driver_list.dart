import 'package:flutter/material.dart';
import 'package:start_flutter_application/design/dimensions.dart';
import 'package:start_flutter_application/design/images.dart';
import 'package:start_flutter_application/design/ui/accent_button.dart';
import 'package:start_flutter_application/design/utils/size_utils.dart';
import 'package:start_flutter_application/design/ui/selectable_item.dart';

class DriverList extends StatefulWidget {
  const DriverList({super.key});

  @override
  State<DriverList> createState() => _DriverListState();
}

class _DriverListState extends State<DriverList> {
  int? _selectedDriverIndex;

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
        final bool isSelected = _selectedDriverIndex == index;
        return SelectableItem(
          title: 'Petya',
          leftPadding: padding8,
          image: accountCircleImage,
          isSelected: isSelected,
          onTap: () {
            setState(() {
              _selectedDriverIndex = index;
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
