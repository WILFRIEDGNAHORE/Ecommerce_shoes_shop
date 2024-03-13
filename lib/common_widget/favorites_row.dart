import 'package:e_bookapp/common/colors_extension.dart';
import 'package:flutter/material.dart';

class FavoriteRow extends StatelessWidget {
  final Map pObj;
  final VoidCallback onPressed;

  const FavoriteRow(
      {super.key,
      required this.pObj,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Image.asset(pObj["icon"],
                width: 80,
                height: 65,
                fit: BoxFit.contain,),
                const SizedBox(
                  width: 15,
                ),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        pObj["name"],
                        style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),

                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        pObj["sous_titre"],
                        style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),

                  ],) ,
                ),
                const SizedBox(
                  width: 8,
                ),

                Text(
                  pObj["price"],
                  style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                
                const SizedBox(
                  width: 15,
                ),
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
