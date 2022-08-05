import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);
  static const routeName = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String phoneNumber = '';
  final numbercontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.33,
                    child: Image.asset(
                      'assets/images/login.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Bringing Restaurants to you",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              const SizedBox(
                height: 30,
              ),
              Card(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Log In or Sign Up',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        child: IntlPhoneField(
                          decoration: const InputDecoration(
                            labelText: 'Enter Phone Number',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(),
                            ),
                          ),
                          initialCountryCode: 'NP',
                          onChanged: (phone) {
                            numbercontroller.text = phone.completeNumber;
                            // ignore: avoid_print
                            phoneNumber = phone.completeNumber;
                            print(phone.completeNumber);
                          },
                        )),
                    Container(
                      padding: const EdgeInsets.all(15),
                      width: double.infinity,
                      child: ElevatedButton(
                          // ignore: avoid_print
                          onPressed: () {
                            // submitNumber(phoneNumber, context)
                            //     .catchError((error) {
                            //   return showDialog(
                            //     context: context,
                            //     builder: (ctx) => AlertDialog(
                            //       title: const Text('An error occurred!'),
                            //       content: const Text('Something went wrong.'),
                            //       actions: <Widget>[
                            //         TextButton(
                            //           child: const Text('Okay'),
                            //           onPressed: () {
                            //             Navigator.of(ctx).pop();
                            //           },
                            //         )
                            //       ],
                            //     ),
                            //   );
                            // });
                          },
                          child: const Padding(
                              padding: EdgeInsets.all(15),
                              child: Text(
                                'Continue',
                                style: TextStyle(fontSize: 20),
                              ))),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
                elevation: 5,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('By continuing you woluld agree to our',
                  style: TextStyle(
                    color: Color(0xCDCDCDCD),
                  )),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('Term of service ',
                      style: TextStyle(
                          color: Color(0xCDCDCDCD),
                          decoration: TextDecoration.underline)),
                  Text('Privacy Policy',
                      style: TextStyle(
                          color: Color(0xCDCDCDCD),
                          decoration: TextDecoration.underline)),
                  Text('Contend Policy',
                      style: TextStyle(
                          color: Color(0xCDCDCDCD),
                          decoration: TextDecoration.underline)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
