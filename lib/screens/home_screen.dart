import 'package:flutter/material.dart';
import 'package:start_flutter_application/design/colors.dart';
import 'package:start_flutter_application/design/dimensions.dart';
import 'package:start_flutter_application/design/images.dart';
import 'package:start_flutter_application/widgets/vehicle_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: surfaceColor,
        title: Text(
          'Dispatcher Application',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: primaryColor,
            fontSize: fontSize16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(color: backgroundColor, child: const VehicleList()),
    );
  }
}
