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

// class Items{
//   final String title;
//   final Icon icon;
// }

// Items({required this.title})
class MyCustomForm extends StatelessWidget {
  MyCustomForm({super.key});

  final List<dynamic> items = [
    {
      'title': 'فعال سازی و دریافت رمز عبور',
      'leading_icon': Icons.mobile_friendly_rounded,
      'trailing_icon': Icons.contact_support_rounded,
    },
    {
      'title': 'رمز عبور را فراموش کردم',
      'leading_icon': Icons.key_rounded,
      'trailing_icon': Icons.contact_support_rounded,
    },
    {
      'title': 'افتتاح حساب می کنم',
      'leading_icon': Icons.account_balance_rounded,
      'trailing_icon': Icons.contact_support_rounded,
    },
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
                padding: const EdgeInsets.only(top: 35.0, bottom: 25.0),
                width: 100,
                child: Image.asset('images/ttbank.png'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
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
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
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
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                      ),
                      builder: (BuildContext context) {
                        return Container(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          // color: Colors.teal[900],
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 1, 34, 34),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                            ),
                          ),
                          height: 190.0,
                          // color: const Color(0XFF0b4061),
                          child: ListView.builder(
                              itemCount: items.length,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: ListTile(
                                        textColor: Colors.white70,
                                        title: Text(
                                          items[index]['title'],
                                        ),
                                        leading: Icon(
                                          items[index]['leading_icon'],
                                          color: Colors.white,
                                        ),
                                        trailing: Icon(
                                          items[index]['trailing_icon'],
                                          size: 26.0,
                                          color: const Color.fromARGB(
                                              255, 173, 237, 243),
                                        ),
                                      ),
                                    ),
                                    const Divider(
                                      height: 4,
                                      thickness: 0.4,
                                      indent: 10,
                                      endIndent: 10,
                                      color: Colors.white,
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
