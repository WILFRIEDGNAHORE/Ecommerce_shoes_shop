import 'package:e_bookapp/common/colors_extension.dart';
import 'package:flutter/material.dart';

class ProductCell extends StatelessWidget {
  final Map pObj;
  final VoidCallback onPressed;
  final VoidCallback onCart;

  const ProductCell({super.key, required this.pObj, required this.onPressed, required this.onCart});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                color: TColor.placeholder.withOpacity(0.5), width: 1),
            borderRadius: BorderRadius.circular(15)),
        width: 180,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4, left: 6),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                          borderRadius: BorderRadius.circular(5),),
                      width: 30,
                      height: 20,
                      child: Row(
                        children: [
                          Icon(
                            Icons.star_rate,
                            color: Colors.amber,
                            size: 15,
                          ),
                          Text(
                            pObj["nbreEtoile"],
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: TColor.placeholder.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(15)),
                    width: MediaQuery.sizeOf(context).width,
                    height: 120,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Image.asset(
                        pObj["icon"],
                        width: 100,
                        fit: BoxFit.contain,
                        height: 75,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Koumassi, Abidjan",
                style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 80,
                    height: 20,
                    child: Row(
                      children: [
                        Text(
                          pObj["reducePrice"],
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          pObj["price"],
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                  onTap: onCart,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: TColor.primary,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: Image.asset(
                      
                      "assets/images/shopping_cart.png",
                      color: Colors.white,
                      width: 15,
                      height: 15,
                    ),
                  ),
                )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
