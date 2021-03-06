import 'package:Nutral/forgotpassword.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Nutral/signup.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0xff5F5F5F),
  ));
  runApp(MyApp());
}

class SlideRightRoute extends PageRouteBuilder {
  final Widget page;
  SlideRightRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digi Locker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Homepage extends StatelessWidget {
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
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 50,
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(10),
                  textColor: Color(0xff000000),
                  color: Color(0xffffffff),
                  onPressed: () {
                    Navigator.push(
                      context,
                      SlideRightRoute(
                        page: SignUp(),
                      ),
                    );
                  },
                  child: Text('SIGN UP'),
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
            Text('SIGN IN',
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
                  child: Text(
                    'LOGIN',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  SlideRightRoute(
                    page: forgotpassword(),
                  ),
                );
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
            Text('Or',
                style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'assets/Roboto-Regular.ttf',
                    fontSize: 18,
                    fontWeight: FontWeight.normal)),
            SizedBox(
              height: 10,
            ),
            Column(
              children: <Widget>[
                FractionallySizedBox(
                  widthFactor: 0.6,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: const EdgeInsets.all(10),
                    textColor: Colors.white,
                    color: Color(0xff3B5998),
                    onPressed: () {},
                    child: Text('Sign in with Facebook',
                        style:
                            TextStyle(fontSize: 18, color: Color(0xffffffff))),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                FractionallySizedBox(
                  widthFactor: 0.6,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: const EdgeInsets.all(10),
                    textColor: Colors.black,
                    color: Color(0xffffffff),
                    onPressed: () {},
                    child: Text('Sign in with Google',
                        style:
                            TextStyle(fontSize: 18, color: Color(0xffD84B37))),
                  ),
                )
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
