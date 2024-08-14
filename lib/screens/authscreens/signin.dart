import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery/constants.dart';
import 'package:food_delivery/screens/authscreens/signup.dart';
import 'package:food_delivery/screens/home/main_home2.dart';



import 'package:food_delivery/widgets/customappbar.dart';
import 'package:food_delivery/widgets/custombutton.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '',),
      body: Column(
        children: [
          const Center(
            child: Text(
              'welcome back',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
            ),
          ),
          const Text(
            '''Please enter Your Phone Number we send a 
          4-digit code to your number''',
            style: TextStyle(color: grey, fontSize: 15),
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 320,
            child: IntlPhoneField(
              flagsButtonPadding: const EdgeInsets.all(8),
              dropdownIconPosition: IconPosition.trailing,
              decoration: InputDecoration(
                counterText: '',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: red),
                  borderRadius: BorderRadius.circular(4),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: red),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              initialCountryCode: 'IN',
              onChanged: (phone) {
                print(phone.completeNumber);
              },
            ),
          ),
          SizedBox(
            height: 60,
          ),
          CustomTextButton(
              width: 320,
              title: 'Sign in',
              background: red,
              textColor: white,
              fontSize: 16,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainHome2()),
                );
              }),
          const SizedBox(
            height: 30,
          ),
          const Row(
            children: [
              Expanded(child: Divider()),
              Text(
                " Or Continue With ",
                style: TextStyle(color: grey),
              ),
              Expanded(child: Divider()),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  width: 130,
                  height: 54,
                  decoration: BoxDecoration(
                    color: white,
                    border: Border.all(color: black, width: 0.3),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.google,
                        size: 18,
                      ),
                      Center(
                        child: Text(
                          'Google',
                          style: TextStyle(
                            color: black,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 130,
                  height: 54,
                  decoration: BoxDecoration(
                    color: white,
                    border: Border.all(color: black, width: 0.3),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.facebook,
                        size: 18,
                      ),
                      Center(
                        child: Text(
                          'Facebook',
                          style: TextStyle(
                            color: black,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an Account ?", style: TextStyle(color: grey)),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUp()),
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: red, fontWeight: FontWeight.w500, fontSize: 15),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
