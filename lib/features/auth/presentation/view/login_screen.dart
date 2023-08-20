import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lawha/core/app_router.dart';
import 'package:lawha/core/styles.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  String? mail;
  String? pass;
  static final GlobalKey<FormState> _form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _form,
        child: ListView(
          children: [
            SizedBox(
              height: 40.h,
            ),
            Image.asset(
              "assets/images/law.png",
              height: 120.h,
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              height: 500.h,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 23, 35, 61),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 60.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    const Text(
                      'تسجيل الدخول ',
                      style: Styles.textStyle30,
                    ),
                    const Text(' قم بتسجيل الدخول للمتابعه '),
                    SizedBox(
                      height: 30.h,
                    ),
                    const Align(
                        alignment: Alignment.bottomRight,
                        child: Text('البريد الالكترونى')),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please enter your email';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        mail = value!;
                      },
                      keyboardType: TextInputType.emailAddress,
                      style: Styles.textStyle14,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          fillColor: Colors.grey,
                          enabled: true,
                          filled: true,
                          hintText: 'mohamed@gmail.com'),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    const Align(
                        alignment: Alignment.bottomRight,
                        child: Text('الرقم السرى ')),
                    TextFormField(
                      onSaved: (value) {
                        pass = value!;
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please enter your password';
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      style: Styles.textStyle14,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          fillColor: Colors.grey,
                          enabled: true,
                          filled: true,
                          hintText: '*************'),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    SizedBox(
                        width: 150.w,
                        child: RawMaterialButton(
                          fillColor: const Color.fromARGB(255, 43, 74, 177),
                          onPressed: () {
                            _form.currentState!.save();
                            if (_form.currentState!.validate()) {
                              GoRouter.of(context).push(AppRouter.mainscreen);
                            }
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: const Text(
                            'تسجيل الدخول ',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        )),
                    GestureDetector(
                        child: const Text('هل نسيت كلمه السر ؟',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white))),
                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.signupscreen);
                      },
                      child: RichText(
                          text: const TextSpan(
                              text: ' ليس لديك حساب ؟ ',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              children: [
                            TextSpan(
                              text: "سجل",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            )
                          ])),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
