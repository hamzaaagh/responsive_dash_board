import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/home_view.dart';

void main() {
  runApp(AdminDashboard());
}

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Admin Dashboard',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: SafeArea(child: HomeView()),
    );
  }
}
