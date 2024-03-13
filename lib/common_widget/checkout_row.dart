import 'package:e_bookapp/common/colors_extension.dart';
import 'package:flutter/material.dart';

class CheckoutRow extends StatelessWidget {
  final String title;
  final String value;
  final VoidCallback onPressed;

  const CheckoutRow({super.key, required this.title, required this.value, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        InkWell(
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
          
                
                Text(
                  value,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
          
                const SizedBox(width: 15,),
                Image.asset(
                      "assets/images/next.png",
                      height: 15,
                      color: TColor.primaryText,
                    ),
              ],
            ),
          ),
        ),
        const Divider(
          color: Colors.black26,
          height: 1,
        ),
      ],
    );
  }
}
