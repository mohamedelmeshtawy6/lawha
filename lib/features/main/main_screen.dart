import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).size.height);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/law.png',
                  height: 70,
                ),
                const Column(
                  children: [Text('مرحبا',style: TextStyle(color: Colors.black)), Text('م.محمد',style: TextStyle(color: Colors.black),)],
                )
              ],
            ),
            Container(
              width: double.infinity,
              height: 160,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 212, 212, 212),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/d.jpg",
                        height: 80,
                      ),
                      const Text(
                        'لوحه خاصه',
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 212, 212, 212)),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/b.jpeg",
                        height: 80,
                      ),
                      const Text('لوحه تجاريه',
                          style: TextStyle(color: Colors.blue))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 212, 212, 212),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/c.jpeg",
                        height: 80,
                      ),
                      const Text('لوحه دبلوماسية',
                          style: TextStyle(color: Colors.blue))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 212, 212, 212),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/a.jpeg",
                        height: 80,
                      ),
                      const Text('لوحه الاجره',
                          style: TextStyle(color: Colors.blue))
                    ],
                  ),
                ),
              ]),
            ),
            const SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child:  Align(alignment: Alignment.centerRight,
                child: Text('احــدث اللوحــات', style: TextStyle(
                                color: Color.fromARGB(255, 174, 40, 201),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
              ),
            ),
            Expanded(
              child: Column(
               
                          children: [
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 223, 221, 221),
              ),
              height: 315,

              child: Column(children: [
                Image.asset(
                  'assets/images/c.jpeg',
                  height:150.h ,
                 
                ),
                Row(
                 
                  children: [
                    RawMaterialButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      onPressed: () {},
                      fillColor: Colors.green,
                      child: const Text(
                       '  150 ريال ' ,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    
                    Spacer(),
                    const Text('المدينة المنوره',style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),),

                            Image.asset('assets/images/icon.png',height: 20,)
                      
                  ],
                ),
                const Text('لــــوحه للبيع ارقام مميزه',style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),),
              ]),
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:  Color.fromARGB(255, 223, 221, 221)
              ),
              height: 315,

              child: Column(children: [
                Image.asset(
                  'assets/images/d.jpg',
                  height:150.h ,
                 
                ),
                Row(
                 
                  children: [
                    RawMaterialButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      onPressed: () {},
                      fillColor: Colors.green,
                      child: const Text(
                       '  150 ريال ' ,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    
                    Spacer(),
                    const Text('المدينة المنوره',style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),),

                            Image.asset('assets/images/icon.png',height: 20,)
                      
                  ],
                ),
                const Text('لـــــوحه مــمــيــزه',style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),),
              ]),
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 223, 221, 221),
              ),
              height: 315,

              child: Column(children: [
                Image.asset(
                  'assets/images/a.jpeg',
                  height:150.h ,
                 
                ),
                Row(
                 
                  children: [
                    RawMaterialButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      onPressed: () {},
                      fillColor: Colors.green,
                      child: const Text(
                       '  150 ريال ' ,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    
                    Spacer(),
                    const Text('المدينة المنوره',style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),),

                            Image.asset('assets/images/icon.png',height: 20,)
                      
                  ],
                ),
                const Text('لـــــوحه مــمــيــزه',style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),),
              ]),
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 223, 221, 221),
              ),
              height: 315,

              child: Column(children: [
                Image.asset(
                  'assets/images/b.jpeg',
                  height:150.h ,
                 
                ),
                Row(
                 
                  children: [
                    RawMaterialButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      onPressed: () {},
                      fillColor: Colors.green,
                      child: const Text(
                       '  150 ريال ' ,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    
                    Spacer(),
                    const Text('المدينة المنوره',style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),),

                            Image.asset('assets/images/icon.png',height: 20,)
                      
                  ],
                ),
                const Text('لـــــوحه مــمــيــزه',style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),),
              ]),
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 223, 221, 221),
              ),
              height: 315,

              child: Column(children: [
                Image.asset(
                  'assets/images/a.jpeg',
                  height:150.h ,
                 
                ),
                Row(
                 
                  children: [
                    RawMaterialButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      onPressed: () {},
                      fillColor: Colors.green,
                      child: const Text(
                       '  150 ريال ' ,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    
                    Spacer(),
                    const Text('المدينة المنوره',style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),),

                            Image.asset('assets/images/icon.png',height: 20,)
                      
                  ],
                ),
                const Text('لـــــوحه مــمــيــزه',style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),),
              ]),
              )
                          ],
                        ),
            )
          ],
        ),
      ),
    );
  }
}








/**/