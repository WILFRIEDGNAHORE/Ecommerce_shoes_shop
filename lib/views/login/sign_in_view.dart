import 'package:e_bookapp/common/colors_extension.dart';
import 'package:e_bookapp/common_widget/round_button.dart';
import 'package:e_bookapp/views/login/verification_view.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  TextEditingController txtMobile = TextEditingController();
  FlCountryCodePicker countryPicker = const FlCountryCodePicker();
  late CountryCode countryCode;

  @override
  void initState() {
    super.initState();
    countryCode = countryPicker.countryCodes
        .firstWhere((element) => element.name == "Côte d'Ivoire");
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/images/bottom_bg.png",
                    width: media.width,
                    height: media.height,
                    fit: BoxFit.cover,
                  )
                ],
              ),
              Image.asset(
                "assets/images/welcome.jpg",
                width: media.width,
              ),
              SingleChildScrollView(
                child: SafeArea(
                  child: Column(
                    children: [
                      SizedBox(
                        height: media.width * 0.90,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Faites vos courses\nà Eucalyptus",
                              style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            TextField(
                              controller: txtMobile,
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                  prefixIcon: GestureDetector(
                                    onTap: () async {
                                      final code = await countryPicker.showPicker(
                                          context: context);
                                      if (code != null) {
                                        countryCode = code;
                                      }
                                      if (mounted) {
                                        setState(() {});
                                      }
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(right: 8),
                                          width: 35,
                                          height: 35,
                                          child: countryCode.flagImage(),
                                        ),
                                        Text(
                                          "${countryCode.dialCode}",
                                          style: TextStyle(
                                              color: TColor.primaryText,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        )
                                      ],
                                    ),
                                  ),
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  hintText: "Numéro Mobile",
                                  hintStyle: TextStyle(
                                    color: TColor.placeholder,
                                    fontSize: 17,
                                  )),
                            ),
                            Container(
                              width: double.maxFinite,
                              height: 1,
                              color: const Color(0xffE2E2E2),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        "ou connectez-vous avec les réseaux sociaux",
                        style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: RoundIconButton(
                          title: "Continuer avec Google",
                          icon: "assets/images/google_logo.png",
                          bgColor: Color(0xff5383EC),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const VerificationView()));
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: RoundIconButton(
                          title: "Continuer avec Facebook",
                          icon: "assets/images/fb_logo.png",
                          bgColor: Color(0xff4A66AC),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
