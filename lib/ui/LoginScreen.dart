import 'package:enpak_training_new/ui/HomeScreen.dart';
import 'package:enpak_training_new/ui/OtpScreen.dart';
import 'package:enpak_training_new/utils/Utils.dart';
import 'package:enpak_training_new/utils/AppColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../api/LoginProvider.dart';
import '../extentions/TextFields.dart';
import '../extentions/Texts.dart';

class Loginscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Loginscreenstate();
}

class Loginscreenstate extends State<Loginscreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    emailController.addListener(() {
      print('Text changed: ${emailController.text}');
    });
    passwordController.addListener(() {
      print('Text changed: ${passwordController.text}');
    });
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            "assets/images/ic_login_bg.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
          SafeArea(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 16)),
                Center(
                  child: Image.asset(
                    "assets/images/login_logo.png",
                    height: 76,
                    width: 60,
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Container(
                      height: 350,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(20.0),
                          right: Radius.circular(20.0),
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 20)),
                          CustomText(
                            text: 'Login',
                            fontSize: 18,
                            color: Colors.black,
                            fontFamily: 'plus_jakarata_sans_regular',
                            onClick: () {},
                          ),
                          CustomTextField(
                            hint: 'Username, Email',
                            controller: emailController,
                          ),
                          PasswordField(
                            hint: 'Enter your password',
                            controller: passwordController,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 16),
                            child: Row(
                              children: [
                                Spacer(),
                                CustomText(
                                  text: 'Forgot Password?',
                                  fontSize: 16,
                                  color: Color(-9150937),
                                  fontFamily: 'plus_jakarata_sans_regular',
                                  onClick: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Otpscreen(),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          Consumer<LoginProvider>(
                            builder: (context, loginProvider, child) {
                              return RoundButtonText(
                                text: 'Login',
                                color: Appcolors.white,
                                backgroundColor: Appcolors.brownbuttoncolor,
                                fontSize: 18,
                                fontFamily: 'plus_jakarata_sans_regular',
                                onClick: () async {
                                  final email = emailController.text;
                                  final password = passwordController.text;

                                  await loginProvider.login(email, password);

                                  if (!loginProvider.isLoading) {
                                    // Navigate to HomeScreen if login is successful
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => HomeScreen(),
                                      ),
                                    );
                                  } else {
                                    // Show error message if login failed
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text('Login failed'),
                                      ),
                                    );
                                  }
                                },
                              );
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 16),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomText(
                                    text: 'Don’t have an account?',
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontFamily: 'plus_jakarata_sans_regular',
                                    onClick: () {},
                                  ),
                                  CustomText(
                                    text: ' Create Now',
                                    fontSize: 16,
                                    color: Utils().hexToColor(Appcolors.brownbuttoncolor),
                                    fontFamily: 'plus_jakarata_sans_regular',
                                    onClick: () {},
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
