import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    //final GlobalKey scaffoldkey;
    print("عرض النافذة: $width");
    return Scaffold(
      appBar: MediaQuery.sizeOf(context).width <= 800
          ? AppBar(leading: Icon(Icons.menu, color: Colors.blue))
          : null,
      backgroundColor: Color(0xffFAFAFA),
      body: HomeViewBody(),
    );
  }
}
