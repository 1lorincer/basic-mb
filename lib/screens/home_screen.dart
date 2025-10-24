import 'package:flutter/material.dart';
import 'package:start_flutter_application/design/colors.dart';
import 'package:start_flutter_application/design/dimensions.dart';
import 'package:start_flutter_application/design/images.dart';
import 'package:start_flutter_application/design/styles.dart';
import 'package:start_flutter_application/design/ui/navbar_element.dart';
import 'package:start_flutter_application/widgets/vehicle_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavbarElement(
        title: 'Dispatcher Application',
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Container(color: backgroundColor, child: const VehicleList()),
    );
  }
}
