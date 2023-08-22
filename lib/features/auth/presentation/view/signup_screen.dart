import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lawha/core/styles.dart';

class SignupScreen extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  SignupScreen({super.key});

  String? mail;
  String? pass;
  static final GlobalKey<FormState> _form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _form,
        child: ListView(children: [
          SizedBox(
            height: 10.h,
          ),
          Image.asset(
            "assets/images/law.png",
            height: 115.h,
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 580.h,
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
                    '!سجل معنا',
                    style: Styles.textStyle30,
                  ),
                  GestureDetector(
                      onTap: () {
                        GoRouter.of(context).pop();
                      },
                      child: RichText(
                        text: const TextSpan(text: ' لديك حساب ؟', children: [
                          TextSpan(
                            text: "سجل الدخول من هنا",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          )
                        ]),
                      )),
                  SizedBox(
                    height: 15.h,
                  ),
                  const Align(
                      alignment: Alignment.bottomRight, child: Text('الإسم')),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter your name';
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
                        hintText: 'mohamed elmeshtawy'),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const Align(
                      alignment: Alignment.bottomRight,
                      child: Text('البريد الالكترونى')),
                  TextFormField(
                    onSaved: (value) {
                      mail = value!;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter your email';
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
                        hintText: 'mohamed@gmail.com'),
                  ),
                  SizedBox(
                    height: 20.h,
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
                      }
                      return null;
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
                    height: 18.h,
                  ),
                  SizedBox(
                      width: 150.w,
                      child: RawMaterialButton(
                        fillColor: const Color.fromARGB(255, 43, 74, 177),
                        onPressed: () {
                          _form.currentState!.save();
                          if (_form.currentState!.validate()) {
                            GoRouter.of(context).pop();
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
                  Column(
                    children: [
                      const Text('بالمتابعه انت توافق على',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      GestureDetector(
                          child: const Text(' شروط الاستخدام و سياسه الخصوصية',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue))),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
