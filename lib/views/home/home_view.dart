import 'package:e_bookapp/common/colors_extension.dart';
import 'package:e_bookapp/common_widget/line_textfield.dart';
import 'package:e_bookapp/common_widget/product_cell.dart';
import 'package:e_bookapp/common_widget/round_button.dart';
import 'package:e_bookapp/common_widget/section_view.dart';
import 'package:e_bookapp/views/home/product_detail_view.dart';
import 'package:e_bookapp/views/login/sign_in_view.dart';
import 'package:e_bookapp/views/main_tabiew/main_tabiew.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController txtSearch = TextEditingController();

  List exclusOfferArr = [
    {
      "name": "Nike Dunk Low",
      "icon":"assets/images/chaussure-dunk-low-pour-ado-8P95zK_prev_ui.png",
      "description": "Chaussure pour ado",
      "nbreEtoile": "4",
      "price": "\$280",
      "reducePrice": "\$200",

    },
    {
      "name": "Nike Air Max Plus Utility",
      "icon":"assets/images/chaussure-air-max-plus-utility-pour-HkwSWp_prev_ui.png",
      "description": "Chaussure pour homme",
      "nbreEtoile": "4",
      "price": "\$280",
      "reducePrice": "\$200",

    },
    {
      "name": "Organic Bananas",
      "icon":"assets/images/Thé pour femme Yogi Tea.png",
      "description": "Organic Bananas",
      "nbreEtoile": "4",
      "price": "\$280",
      "reducePrice": "\$200",

    },
    
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/logo.png",
                        width: 130,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/location.png",
                        width: 15,
                        height: 15,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Koumassi, Abidjan",
                        style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
              height: 15,
              ),
              Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 52,
                decoration: BoxDecoration(
                    color: const Color(0xffF2F3F2),
                    borderRadius: BorderRadius.circular(15)),
                alignment: Alignment.center,
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 16),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Image.asset(
                          "assets/images/search.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "Rechercher dans le magasin",
                      hintStyle: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      )),
                ),
              ),
              ),
              const SizedBox(
              height: 15,
              ),
              Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.maxFinite,
                height: 115,
                decoration: BoxDecoration(
                  color: const Color(0xffF2F3F2),
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "assets/images/Black-Friday_banner.jpg",
                    fit: BoxFit.cover,
                    width: MediaQuery.sizeOf(context).width,
                  ),
                ),
              ),
              ),
              SectionView(
                title: "Offres Exclusives",
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                onPressed: () {},
              ),

              SizedBox(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  itemCount: exclusOfferArr.length,
                  itemBuilder: ( context,  index) {
                    var pObj = exclusOfferArr[index] as Map? ?? {};

                    return ProductCell(pObj: pObj,
                    onCart: (){},
                     onPressed: () { 
                      Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetail()));
                     },);
                  },
                ),
              ),

              SectionView(
                title: "Offres Exclusives",
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                onPressed: () {},
              ),

              SizedBox(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  itemCount: exclusOfferArr.length,
                  itemBuilder: ( context,  index) {
                    var pObj = exclusOfferArr[index] as Map? ?? {};

                    return ProductCell(pObj: pObj,
                    onCart: () {
                      
                    },
                    onPressed: () {

                      Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetail()));
                     },);
                  },
                ),
              )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
