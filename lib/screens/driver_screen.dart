import 'package:flutter/material.dart';
import 'package:start_flutter_application/design/colors.dart';
import 'package:start_flutter_application/design/dimensions.dart';
import 'package:start_flutter_application/design/images.dart';
import 'package:start_flutter_application/design/styles.dart';
import 'package:start_flutter_application/widgets/driver_list.dart';

class DriverScreen extends StatelessWidget {
  const DriverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: surfaceColor,
        elevation: elevation0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: arrowBackKiparoImage,
        ),
        title: Text(
          'Select driver',
          textAlign: TextAlign.center,
          style: primaryTextStyle,
        ),
      ),
      body: Container(color: backgroundColor, child: DriverList()),
    );
  }
}
