import 'package:e_bookapp/common/colors_extension.dart';
import 'package:flutter/material.dart';

class CartItemRow extends StatelessWidget {
  final Map pObj;

  const CartItemRow({
    super.key,
    required this.pObj,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: EdgeInsets.symmetric(vertical: 10),
      color: Colors.white,
      width: 180,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  pObj["icon"],
                  width: 70,
                  height: 90,
                ),
                SizedBox(width: 15,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              pObj["name"],
                              style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.close,
                              size: 25,
                              color: TColor.secondaryText,
                            ),
                          )
                        ],
                      ),
                      Text(
                        pObj["sous_titre"],
                        style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Image.asset(
                                  "assets/images/subtack.png",
                                  width: 16,
                                  height: 16,
                                ),
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color:
                                          TColor.placeholder.withOpacity(0.5),
                                      width: 1),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                          Text(
                            pObj["qty"].toString(),
                            style: TextStyle(
                                color: TColor.primaryText,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Icon(
                                  Icons.add,
                                  color: Colors.blue,
                                  size: 16,
                                ),
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color:
                                          TColor.placeholder.withOpacity(0.5),
                                      width: 1),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "\$${pObj["price"]}",
                            style: TextStyle(
                                color: TColor.secondaryText,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
