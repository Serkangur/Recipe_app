import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/ui/root_page.dart';
import 'package:plant_app/ui/screens/widgets/custom_textfield.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/signin.png'),
            const Text(
              'Sign In ',
              style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomTextfield(
                obsecureText: false,
                hintText: 'Enter Emaail',
                icon: Icons.alternate_email),
            const CustomTextfield(
                obsecureText: true,
                hintText: 'Enter Password',
                icon: Icons.lock),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: const RootPage(),
                        type: PageTransitionType.bottomToTop));
              },
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                  color: Constants.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: const Center(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: const RootPage(),
                        type: PageTransitionType.bottomToTop));
              },
              child: Center(
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                    text: 'Forgot Password?',
                    style: TextStyle(
                      color: Constants.blackColor,
                    ),
                  ),
                  TextSpan(
                    text: 'Reset Here',
                    style: TextStyle(
                      color: Constants.primaryColor,
                    ),
                  ),
                ])),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Expanded(child: Divider()),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('QR'),
                ),
                Expanded(child: Divider()),
              ],
            ),
            Container(
              width: size.width,
              decoration: BoxDecoration(
                border: Border.all(color: Constants.primaryColor),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            )
          ],
        ),
      ),
    );
  }
}
