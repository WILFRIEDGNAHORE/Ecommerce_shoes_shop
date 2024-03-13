import 'package:e_bookapp/common/colors_extension.dart';
import 'package:e_bookapp/common_widget/cart_item_row.dart';
import 'package:e_bookapp/common_widget/round_button.dart';
import 'package:e_bookapp/views/main_tabiew/main_tabiew.dart';
import 'package:e_bookapp/views/my_cart/checkout_view.dart';
import 'package:flutter/material.dart';

class MyCartView extends StatefulWidget {
  const MyCartView({super.key});

  @override
  State<MyCartView> createState() => _MyCartViewState();
}

class _MyCartViewState extends State<MyCartView> {
  List cartArr = [
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
          "My Cart",
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
            padding: const EdgeInsets.all(20.0),
            itemCount: cartArr.length,
            separatorBuilder: (context, index) => const Divider(
              color: Colors.black26,
              height: 1,
            ),
            itemBuilder: (context, index) {
              var pObj = cartArr[index] as Map? ?? {};
              return CartItemRow(
                pObj: pObj,
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MaterialButton(
                  onPressed: () {
                    showCheckout();
                  },
                  height: 60,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19)),
                  minWidth: double.maxFinite,
                  elevation: 0.1,
                  color: TColor.primary,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Go to Checkout",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 8),
                        child: Text(
                          "\$10.96",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void showCheckout() {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isDismissible: false,
        
        context: context,
        builder: (context) {
          return const CheckoutView();
        });
  }
}
