import 'package:e_bookapp/common/colors_extension.dart';
import 'package:e_bookapp/common_widget/line_textfield.dart';
import 'package:e_bookapp/common_widget/round_button.dart';
import 'package:e_bookapp/views/login/sign_in_view.dart';
import 'package:e_bookapp/views/main_tabiew/main_tabiew.dart';
import 'package:flutter/material.dart';

class LogInView extends StatefulWidget {
  const LogInView({super.key});

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        Container(
          color: Colors.white,
          child: Image.asset(
            "assets/images/bottom_bg.png",
            width: media.width,
            height: media.height,
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Image.asset(
                  "assets/images/back.png",
                  width: 20,
                  height: 20,
                )),
          ),
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
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
                      height: media.width * 0.10,
                    ),
                    Text(
                      "Loging",
                      style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 26,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: media.width * 0.03,
                    ),
                    Text(
                      "Enter your emails and password",
                      style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: media.width * 0.1,
                    ),
                    LineTextField(
                        title: "Email",
                        placeholder: "Entrez votre Email",
                        keyboardType: TextInputType.emailAddress,
                        controller: txtEmail),
                    SizedBox(
                      height: media.width * 0.07,
                    ),
                    LineTextField(
                      title: "Mot de passe",
                      placeholder: "Entrez votre mot de passe",
                      controller: txtPassword,
                      obscureText: !isShow,
                      right: IconButton(
                          onPressed: () {
                            setState(() {
                              isShow = !isShow;
                            });
                          },
                          icon: Icon(
                            !isShow ? Icons.visibility_off : Icons.visibility,
                            color: TColor.textTittle,
                          )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Mot de passe oublié ?",
                            style: TextStyle(
                                color: TColor.primaryText,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: media.width * 0.05,
                    ),
                    RoundButton(
                      title: "Connexion",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainTabView()));
                      },
                    ),
                    SizedBox(
                      height: media.width * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignInView()));
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Vous n'avez pas de compte ?",
                                style: TextStyle(
                                    color: TColor.primaryText,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Signup",
                                style: TextStyle(
                                    color: TColor.primary,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
