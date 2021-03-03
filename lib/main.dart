import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.black87,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Homepage extends StatelessWidget {
  get kPrimaryColor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.orangeAccent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            SvgPicture.asset('assets/digilogo.svg',
                width: 80, height: 80, fit: BoxFit.contain),
            SizedBox(height: 1),
            Text.rich(
              TextSpan(
                text: 'DIGI LOCKER',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  fontFamily: ('assets/Roboto-Regular.ttf'),
                  color: Color(0xffffffff),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text('SIGN IN',
                style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'assets/Roboto-Regular.ttf',
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            TextField(
              autofocus: true,
              obscureText: false,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.person, size: 22),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                hintText: "Username",
                hintStyle: TextStyle(decoration: TextDecoration.none),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              autofocus: true,
              obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.lock, size: 22),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                hintText: "Password",
                hintStyle: TextStyle(decoration: TextDecoration.none),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  //     disabledColor: Colors.red,
                  // disabledTextColor: Colors.black,
                  padding: const EdgeInsets.all(10),

                  textColor: Colors.black,
                  color: Colors.white,
                  onPressed: () {},
                  child: Text('LOGIN'),
                ),
              ],
            ),
            SizedBox(height: 10),
            new InkWell(
              onTap: () {
                Navigator.pushNamed(context, "YourRoute");
              },
              child: new Padding(
                padding: new EdgeInsets.all(10.0),
                child: new Text('Forgot Password?',
                    style: TextStyle(
                        color: Colors.black87,
                        fontFamily: 'assets/Roboto-Regular.ttf',
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(color: Colors.black),
            SizedBox(height: 10),
            Text('Or SignIn With',
                style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'assets/Roboto-Regular.ttf',
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            Row(
              children: [],
            ),
            SizedBox(
              height: 300,
              child: GridView.count(
                crossAxisCount: 4,
                childAspectRatio: 1.591,
                physics: NeverScrollableScrollPhysics(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  row() {}
}
