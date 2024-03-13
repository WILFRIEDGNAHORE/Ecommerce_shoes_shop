import 'package:e_bookapp/common/colors_extension.dart';
import 'package:e_bookapp/common_widget/round_button.dart';
import 'package:e_bookapp/views/main_tabiew/main_tabiew.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  List<String> items = [
    "35",
    "40",
    "42",
    "43",
    "38",
  ];

  int current = 0;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  decoration:
                      BoxDecoration(color: TColor.placeholder.withOpacity(0.1)),
                  width: double.infinity,
                  height: 300,
                  alignment: Alignment.center,
                  child: Image.asset(
                      "assets/images/chaussure-dunk-low-pour-ado-8P95zK_prev_ui.png"),
                ),
                SafeArea(
                  child: AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
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
                      actions: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.share)),
                      ]),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: media.width,
                    height: 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Text("4.5"),
                            Icon(
                              Icons.star_rate,
                              color: Colors.amber,
                              size: 20,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Nike Dunk Low",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Container(
                              width: 150,
                              height: 30,
                              child: Row(
                                children: [
                                  const Text(
                                    "\$280.00",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "\$200.00",
                                    style: TextStyle(
                                        color: TColor.placeholder,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          "Nike Dunk Low",
                          style: TextStyle(
                              color: Colors.black26,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.black26,
                    height: 2,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Size",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        width: media.width,
                        height: 70,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 60,
                              width: media.width,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: items.length,
                                  itemBuilder: (ctx, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          current = index;
                                        });
                                      },
                                      child: AnimatedContainer(
                                        duration: const Duration(milliseconds: 300),
                                        margin: const EdgeInsets.all(10),
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: current == index
                                                ? Colors.blue
                                                : TColor.placeholder
                                                    .withOpacity(0.2)),
                                        child: Center(
                                          child: Text(
                                            items[index],
                                            style: TextStyle(
                                                color: current == index
                                                    ? Colors.white
                                                    : Colors.black),
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),

                  
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Product Detail",
                    style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  const Text(
                    "zertapappal;xsdfghjkqs,sx x,zazioazoopzopzapozozoododkdkdkdkdkodkokd,,qs,qssqkkqsksqksqkkqskqsklqslqslsqllqslqslqskqskkqsksqkkx,,x,kx,k,ksq,kqs,kqs,kqskqsk,kskaiazizaizajiazjijiazqjjskqkskqlslsqlqllqslqsllqslqslqlqsllqsl",
                    style: TextStyle(
                      color: Colors.black26,
                      fontSize: 15,
                    ),
                  ),

                  Row(
                    children: [

                      InkWell(
                        onTap: (){},
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset("assets/images/subtack.png", width: 20, height: 20,),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: TColor.primary.withOpacity(0.5),
                                width: 1),
                                borderRadius: BorderRadius.circular(15)),
                        width: 45,
                        height: 45,
                        
                        alignment: Alignment.center,
                        child: const Text(
                          "1",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: (){},
                          child: const Icon(Icons.add, size: 40, color: Colors.blue,)
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        "\$4.99",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  
                  RoundButton(
                    title: "Add To cart",
                    onPressed: () {},
                  ),
                  
                ],
              ),
            ),

            // SizedBox(
            //   height: media.width * 0.03,
            // ),
            // Text(
            //   "Enter your emails and password",
            //   style: TextStyle(
            //       color: TColor.secondaryText,
            //       fontSize: 16,
            //       fontWeight: FontWeight.w500),
            // ),
            // SizedBox(
            //   height: media.width * 0.05,
            // ),
          ],
        ),
      ),
    );
  }
}
