import 'package:flutter/material.dart';
import 'package:flutter_application_3/app/components/app_home.dart';

class AppNew extends StatefulWidget {
  const AppNew({super.key});

  @override
  State<AppNew> createState() => _AppNewState();
}

class _AppNewState extends State<AppNew> {
  @override
  Widget build(BuildContext context) {
    return AppHome();
  }
}
