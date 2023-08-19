import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lawha/core/app_router.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5), () {
      GoRouter.of(context).pushReplacement(AppRouter.loginscreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 70.h,
          ),
          Image.asset(
            "assets/images/law.png",
            height: 120.h,
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 75.h,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            margin: const EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 212, 162, 162),
                borderRadius: BorderRadius.circular(20)),
            child: const Center(
                child: Column(
              children: [
                Text(
                  'the first application specialized in offers buying  ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                Text(
                  ' vicales plates',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )),
          ),
          SizedBox(
            height: 30.h,
          ),
          Image.asset(
            'assets/images/car1.png',
            height: 200.h,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 20.h,
          ),
          const Text(
            ' إشــــتــــرى الأن ',
            style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 207, 35, 23),
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.h,
          ),
          const CircularProgressIndicator(
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
