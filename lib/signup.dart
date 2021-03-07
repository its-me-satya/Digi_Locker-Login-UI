import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0xff5F5F5F),
  ));
  runApp(Home());
}

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digi Locker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignUp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0xffFF974B),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                IconButton(
                  icon: Icon(
                    Icons.keyboard_arrow_left,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 1,
            ),
            SvgPicture.asset('assets/digilogo.svg',
                width: 60, height: 60, fit: BoxFit.contain),
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
            Text('SIGN UP',
                style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'assets/Roboto-Regular.ttf',
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            TextField(
              autofocus: false,
              obscureText: false,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.person, size: 22),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent, width: 0),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent, width: 0),
                  borderRadius: BorderRadius.circular(15),
                ),
                hintText: "Firstname",
              ),
            ),
            SizedBox(height: 20),
            TextField(
              autofocus: false,
              obscureText: false,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.person, size: 22),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent, width: 0),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent, width: 0),
                  borderRadius: BorderRadius.circular(15),
                ),
                hintText: "Secondname",
              ),
            ),
            SizedBox(height: 20),
            TextField(
              autofocus: false,
              obscureText: false,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.person, size: 22),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent, width: 0),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent, width: 0),
                  borderRadius: BorderRadius.circular(15),
                ),
                hintText: "Email Id",
              ),
            ),
            SizedBox(height: 20),
            TextField(
              autofocus: false,
              obscureText: false,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.person, size: 22),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent, width: 0),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent, width: 0),
                  borderRadius: BorderRadius.circular(15),
                ),
                hintText: "Username",
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
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent, width: 0),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent, width: 0),
                  borderRadius: BorderRadius.circular(15),
                ),
                hintText: "Set Password",
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
                  child: Text(
                    'SUBMIT',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text('Made With ♥')
          ],
        ),
      ),
    );
  }
}
