import 'package:flutter/material.dart';
import 'package:start_flutter_application/widgets/user_profile.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(home: UserProfile());
  }
}
