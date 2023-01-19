import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_test/thirdScreen.dart';


class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

Widget buildEmail(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget> [
      Text(
        '',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerRight,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0,2)
            ),
          ],
        ),
        height: 60,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.black87,
          ),

          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              Icons.person,
              color: Color(0xffe4eaef),
            ),

            hintText: 'Name',
            helperStyle: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget buildPassword(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget> [
      Text(
        '',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerRight,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0,2)
            ),
          ],
        ),
        height: 60,
        child: TextField(
          obscureText: true,
          style: TextStyle(
            color: Colors.black87,
          ),

          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              Icons.email,
              color: Color(0xffe4eaef),
            ),

            hintText: 'Palindrome',
            helperStyle: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget buildCheckBtn() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5,
      onPressed: () => print('Check'),
      padding: EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      color: Colors.blue,
      child: Text(
        'CHECK',
        style: TextStyle(
          color: Color(0xffe4eaef),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Widget buildNextBtn(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 5),
    width: double.infinity,

    child: RaisedButton(
      elevation: 5,
      onPressed: () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder:(context){
              return ThirdScreen();
            },));
      },
      padding: EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      color: Colors.blue,
      child: Text(
        'NEXT',
        style: TextStyle(
          color: Color(0xffe4eaef),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

class _SecondScreenState extends State<SecondScreen> {
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
            child: Stack(
              children: <Widget> [
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFFFFFFF),
                        Color(0xFFFFFFFF),
                        Color(0xFFFFFFFF),
                        Color(0xFFFFFFFF),
                      ],
                    ),
                  ),
                  child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 120,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                        SizedBox(height: 50),
                        buildNextBtn(context),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
