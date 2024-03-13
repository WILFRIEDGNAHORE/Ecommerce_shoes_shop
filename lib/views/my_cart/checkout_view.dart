import 'package:e_bookapp/common/colors_extension.dart';
import 'package:e_bookapp/common_widget/checkout_row.dart';
import 'package:e_bookapp/common_widget/round_button.dart';
import 'package:flutter/material.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key});

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: 
         Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Checkout",
                    style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      "assets/images/close.png",
                      width: 15,
                      height: 15,
                      color: TColor.primaryText,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black26,
              height: 1,
            ),
            
            
              CheckoutRow(
                title: "Delivery",
                value:  "Select Method",
                onPressed: () {
                  
                },
              ),

              Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    children: [
                      Text(
                        "Payment ",
                        style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      const Spacer(),
                      Image.asset("assets/images/master.png", width: 30,),
                      const SizedBox(width: 15,),
                      Image.asset("assets/images/next.png",
                      height: 15,
                      color: TColor.primaryText,),
                     
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.black26,
                  height: 1,
                ),
              ],
            ),

            
            
            CheckoutRow(
              title: "Promo Code",
              value: "Pick discount",
              onPressed: () {
                
              },
            ),
            CheckoutRow(
              title: "Total Cost",
              value: "\$10.99",
              onPressed: () {
                
              },
            ),
            
            RoundButton(
                title: "Place Order",
                onPressed: () {
                  
                
                }),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      
    );
  }
}
