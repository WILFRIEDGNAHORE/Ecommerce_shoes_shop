import 'package:e_bookapp/common/colors_extension.dart';
import 'package:e_bookapp/views/account/account_view.dart';
import 'package:e_bookapp/views/favourite/favourite_view.dart';
import 'package:e_bookapp/views/home/home_view.dart';
import 'package:e_bookapp/views/my_cart/my_cart_view.dart';
import 'package:flutter/material.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  int selectTab = 0;

  @override
  void initState() {
    // TODO: implement initState

    controller = TabController(length: 4, vsync: this);
    controller?.addListener(() {
      selectTab = controller?.index ?? 0;
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(controller: controller, children: [
        const HomeView(),
        
        MyCartView(),
        FavoritesView(),
        AccountView(),
      ]),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 3, offset: Offset(0, -2))
            ]),
        child: BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          child: TabBar(
              controller: controller,
              indicatorColor: Colors.transparent,
              indicatorWeight: 1,
              labelColor: TColor.primary,
              labelStyle: TextStyle(
                color: TColor.primary,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
              unselectedLabelColor: TColor.primaryText,
              unselectedLabelStyle: TextStyle(
                color: TColor.primaryText,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
              tabs: [
                Tab(
                  text: "Shop",
                  icon: Image.asset(
                    "assets/images/store_tab.png",
                    width: 25,
                    height: 25,
                    color: selectTab == 0 ? TColor.primary : TColor.primaryText,
                  ),
                ),
                
                Tab(
                  text: "Cart",
                  icon: Image.asset(
                    "assets/images/cart_tab.png",
                    width: 25,
                    height: 25,
                    color: selectTab == 1 ? TColor.primary : TColor.primaryText,
                  ),
                ),
                Tab(
                  text: "Favoris",
                  icon: Image.asset(
                    "assets/images/fav_tab.png",
                    width: 25,
                    height: 25,
                    color: selectTab == 2 ? TColor.primary : TColor.primaryText,
                  ),
                ),
                Tab(
                  text: "Compte",
                  icon: Image.asset(
                    "assets/images/account_tab.png",
                    width: 25,
                    height: 25,
                    color: selectTab == 3 ? TColor.primary : TColor.primaryText,
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
