import 'package:e_bookapp/common/colors_extension.dart';
import 'package:e_bookapp/common_widget/cart_item_row.dart';
import 'package:e_bookapp/common_widget/favorites_row.dart';
import 'package:e_bookapp/common_widget/round_button.dart';
import 'package:e_bookapp/views/main_tabiew/main_tabiew.dart';
import 'package:flutter/material.dart';

class FavoritesView extends StatefulWidget {
  const FavoritesView({super.key});

  @override
  State<FavoritesView> createState() => _FavoritesViewState();
}

class _FavoritesViewState extends State<FavoritesView> {

  List listArr = [
    {
      "name": "Nike Dunk Low",
      "icon": "assets/images/chaussure-dunk-low-pour-ado-8P95zK_prev_ui.png",
      "sous_titre": "Chaussure pour ado",
      "nbreEtoile": "4",
      "qty": "1",
      "price": "\$280",
      "reducePrice": "\$200",
    },
    {
      "name": "Nike Air Max Plus Utility",
      "icon":
          "assets/images/chaussure-air-max-plus-utility-pour-HkwSWp_prev_ui.png",
      "sous_titre": "Chaussure pour homme",
      "nbreEtoile": "4",
      "qty": "1",
      "price": "\$280",
      "reducePrice": "\$200",
    },
    {
      "name": "Nike Air Max Plus Utility",
      "icon":
          "assets/images/chaussure-air-max-plus-utility-pour-HkwSWp_prev_ui.png",
      "sous_titre": "Chaussure pour homme",
      "nbreEtoile": "4",
      "qty": "1",
      "price": "\$280",
      "reducePrice": "\$200",
    },
    {
      "name": "Nike Air Max Plus Utility",
      "icon":
          "assets/images/chaussure-air-max-plus-utility-pour-HkwSWp_prev_ui.png",
      "sous_titre": "Chaussure pour homme",
      "nbreEtoile": "4",
      "qty": "1",
      "price": "\$280",
      "reducePrice": "\$200",
    },
    {
      "name": "Nike Air Max Plus Utility",
      "icon":
          "assets/images/chaussure-air-max-plus-utility-pour-HkwSWp_prev_ui.png",
      "sous_titre": "Chaussure pour homme",
      "nbreEtoile": "4",
      "qty": "1",
      "price": "\$280",
      "reducePrice": "\$200",
    },
    {
      "name": "Nike Air Max Plus Utility",
      "icon":
          "assets/images/chaussure-air-max-plus-utility-pour-HkwSWp_prev_ui.png",
      "sous_titre": "Chaussure pour homme",
      "nbreEtoile": "4",
      "qty": "1",
      "price": "\$280",
      "reducePrice": "\$200",
    },
  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
                          onPressed: () {
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainTabView()));
                          },
                          icon: Image.asset(
                            "assets/images/back.png",
                            width: 20,
                            height: 20,
                          )),
        backgroundColor: Colors.white,
        elevation: 0.5,
        centerTitle: true,
        title: Text(
          "Favorites",
          style: TextStyle(
              color: TColor.primaryText,
              fontSize: 20,
              fontWeight: FontWeight.w700),
        ),
      ),
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              itemCount: listArr.length,
              separatorBuilder: (context, index) => const Divider(
                    color: Colors.black26,
                    height: 1,
                  ),
              itemBuilder: (context, index) {
                var pObj = listArr[index] as Map? ??{};
                return FavoriteRow(
                  pObj: pObj, onPressed: () {  },
                  
                );
              }),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                RoundButton(title: "Add All To Cart", onPressed: (){

                })
              ],
            ),
          )
        ],
      ),
    );
  }
}
