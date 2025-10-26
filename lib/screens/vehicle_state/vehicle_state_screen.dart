import 'package:flutter/material.dart';
import 'package:start_flutter_application/design/colors.dart';
import 'package:start_flutter_application/design/ui/navbar_element.dart';
import 'package:start_flutter_application/widgets/vehicle_state_list.dart';

class VehicleStateScreen extends StatelessWidget {
  const VehicleStateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavbarElement(
        title: 'Update vehicle state',
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Container(color: backgroundColor, child: VehicleStateList()),
    );
  }
}
