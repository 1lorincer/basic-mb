import 'package:flutter/material.dart';
import 'package:start_flutter_application/design/colors.dart';
import 'package:start_flutter_application/design/ui/navbar_element.dart';
import 'package:start_flutter_application/widgets/driver_list.dart';

class DriverScreen extends StatelessWidget {
  const DriverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavbarElement(
        title: 'Selected Driver',
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Container(color: backgroundColor, child: DriverList()),
    );
  }
}
