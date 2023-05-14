import 'package:flutter/material.dart';
import 'package:persian_fonts/persian_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});

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
                padding: const EdgeInsets.only(top: 50.0, bottom: 35.0),
                width: 100,
                child: Image.asset('images/ttbank.png'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                      label: Text(
                    'نام کاربری *',
                    style: PersianFonts.Vazir,
                  )),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    label: Text(
                      'رمز عبور *',
                      style: PersianFonts.Vazir,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25.0),
                child: Text(
                  'فراموشی رمز عبور',
                  style: PersianFonts.Yekan,
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 40.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    backgroundColor: const Color.fromARGB(255, 37, 128, 128),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 15.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.mobile_friendly_rounded),
                      Text(
                        'ورود',
                        style: PersianFonts.Vazir,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 70.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const [
                        Icon(
                          Icons.location_on,
                          color: Color(0xFF3ec6c2),
                        ),
                        Text(
                          'شعبات نزدیک به من',
                          style: PersianFonts.Vazir,
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(
                          Icons.account_balance_rounded,
                          color: Color(0xFF3ec6c2),
                        ),
                        Text(
                          'افتتاح حساب',
                          style: PersianFonts.Vazir,
                        ),
                      ],
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
