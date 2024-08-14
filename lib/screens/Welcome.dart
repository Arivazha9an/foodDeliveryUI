import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';
import 'package:food_delivery/screens/authscreens/signin.dart';
import 'package:food_delivery/screens/authscreens/signup.dart';
import 'package:food_delivery/widgets/custombutton.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomScreenState();
}

class _WelcomScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          backgroundBlendMode: BlendMode.overlay,
          color: Colors.black,
          image: DecorationImage(
            image: NetworkImage(food),
            fit: BoxFit.cover,
            // The blend mode you choose.

            opacity: 30,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 130,
            ),
            const Center(
              child: RippleAnimation(
                color: white,
                delay: Duration(milliseconds: 500),
                repeat: true,
                minRadius: 70,
                ripplesCount: 4,
                duration: Duration(milliseconds: 6 * 300),
                child: CircleAvatar(
                  minRadius: 65,
                  maxRadius: 65,
                  backgroundImage: NetworkImage(forkspoon),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Hello Foodish!',
              style: TextStyle(
                  fontSize: 30, color: white, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              ''' Food Delivery is the easiest way to 
get your favourite food deliverd to 
                  your door''',
              style: TextStyle(
                  fontSize: 16, color: white, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 120,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomTextButton(
                    title: 'Sign in',
                    width: 160,
                    background: red,
                    textColor: white,
                    fontSize: 17,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Signin()),
                      );
                    }),
                CustomTextButton(
                    title: 'Sign up',
                    width: 160,
                    background: white,
                    textColor: red,
                    fontSize: 17,
                    onTap: () {
                       Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignUp()),
                      );
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
