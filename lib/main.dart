import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/home_view.dart';

void main() {

  runApp(DevicePreview(
    enabled: true,
    builder: (BuildContext context) { return AdminDashboard();},)
  );
}

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Admin Dashboard',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: SafeArea(child: HomeView()),
    );
  }
}
