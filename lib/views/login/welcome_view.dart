import 'package:e_bookapp/common_widget/round_button.dart';
import 'package:e_bookapp/views/login/sign_in_view.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset("assets/images/welcome.jpg", width: media.width ,height: media.height,fit: BoxFit.cover,),
          Container(
            width: media.width,
            height: media.height,
            color: Colors.black.withOpacity(0.5),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                    " Bienvenue à\n    SHOOZZ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w600),
                  ),

                  Text(
                    "votre boutique de Snackers préféré",
                    style: TextStyle(
                        color: const Color(0xffFCFCFC).withOpacity(0.7),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),

                  const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RoundButton(
                  title: "Get Started",
                  onPressed: () {
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SignInView()));
                    
                  },
                ),
              ),
              const SizedBox(
                height: 46,
              ),

            ],
          )
        ],
      ),
    );
  }
}