import 'package:flutter/material.dart';
import 'package:persian_fonts/persian_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: PersianFonts.vazirTextTheme,
        // primarySwatch: Colors.lightBlue,
      ),
      home: Scaffold(
        body: MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  MyCustomForm({super.key});

  final List<String> items = [
    'فعال سازی و دریافت رمز عبور',
    'رمز عبور را فراموش کردم',
    'افتتاح حساب می کنم'
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            "images/background7.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 30.0, bottom: 20.0),
                width: 100,
                child: Image.asset('images/ttbank.png'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    label: Center(
                      child: Text(
                        'نام کاربری',
                        // style: PersianFonts.Vazir,
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    label: Center(
                      child: Text(
                        'رمز عبور',
                        // style: PersianFonts.Vazir,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 30.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    backgroundColor: const Color.fromARGB(255, 10, 80, 80),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 15.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.mobile_friendly_rounded),
                      Text(
                        'ورود',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Column(
                  children: const [
                    Icon(
                      Icons.fingerprint_rounded,
                      color: Colors.red,
                      size: 50,
                    ),
                    Text(
                      'ورود با اثر انگشت',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          padding: const EdgeInsets.all(12.0),
                          height: 200.0,
                          decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(30)),
                          ),
                          child: ListView.builder(
                              itemCount: items.length,
                              itemBuilder: (context, index) {
                                return Column(
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ListTile(
                                      title: Center(
                                        child: Text(
                                          items[index],
                                        ),
                                      ),
                                    ),
                                    const Divider(
                                      height: 10,
                                      thickness: 1,
                                      // indent: ,
                                      // endIndent: 0,
                                      color: Color(0xFF54c5d0),
                                    ),
                                  ],
                                );
                              }),
                        );
                      },
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'افتتاح حساب',
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text('/'),
                      ),
                      Text(
                        'فراموشی رمز',
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text('/'),
                      ),
                      Text(
                        'فعالسازی',
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 170.0,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                margin: const EdgeInsets.only(top: 20.0),
                decoration: BoxDecoration(
                  color: const Color(0xFF54c5d0),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'شعبات نزدیک به من',
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                    Icon(
                      Icons.location_on,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Page Transition',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('First Page'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: const Text('Go to Modal'),
//           onPressed: () {
//             showModalBottomSheet(
//               context: context,
//               builder: (BuildContext context) {
//                 return SizedBox(
//                   height: 300.0,
//                   child: ElevatedButton(
//                     child: const Text('close'),
//                     onPressed: () {
//                       Navigator.pop(context);
//                     },
//                   ),
//                 );
//               },
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
