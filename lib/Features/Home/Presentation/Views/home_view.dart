import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Core/Utils/app_styles.dart';
import 'package:responsive_dash_board/Core/Widgets/custom_drawer.dart';
import 'package:responsive_dash_board/Features/Home/Presentation/Views/Widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    
    final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
    
    return Scaffold(
      drawer: Container(
        color: Colors.white,
        width: MediaQuery.sizeOf(context).width * 0.6,
        child: CustomDrawer(),
      ),
      key: scaffoldkey,
      appBar: MediaQuery.sizeOf(context).width <= 900
          ? AppBar(
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Text(
                    "Dashboared",
                    style: AppStyles.styleSemiBold20(
                      context,
                    ).copyWith(color: Colors.blue),
                  ),
                ),
              ],
              shadowColor: Colors.grey.withOpacity(0.5),
              backgroundColor: Colors.white,
              leading: GestureDetector(
                onTap: () {
                  scaffoldkey.currentState!.openDrawer();
                },
                child: Icon(Icons.menu, color: Colors.blue, size: 25),
              ),
            )
          : null,
      backgroundColor: Color(0xffFAFAFA),
      body: HomeViewBody(),
    );
  }
}
