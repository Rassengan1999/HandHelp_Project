import 'package:flutter/material.dart';
import 'Profile.dart';
import 'package:first_app/Screens/Home.dart';

class Register extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //resizeToAvoidBottomInset: false
        body: SafeArea(
          child: Center(
            child: Container(
              color: Color(0xFF1B1E69),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 50),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        'assert/img.png',
                        height: 65,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Helping Hand",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Container(
                            width: 330,
                            height: 625,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          Column(
                            children: [
                              Text("Get Started",
                                  style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  )),
                              Text(
                                "by creating a free account",
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 300,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Color(0xFFF3F3F3),
                                    borderRadius: BorderRadius.circular(10)),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Full name",
                                      // set color
                                      suffixIcon: Icon(Icons.person),
                                      border: InputBorder.none,
                                      prefix: SizedBox(
                                        width: 20,
                                      )),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 300,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Color(0xFFF3F3F3),
                                    borderRadius: BorderRadius.circular(10)),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Valid email",
                                      // set color
                                      suffixIcon: Icon(Icons.email),
                                      border: InputBorder.none,
                                      prefix: SizedBox(
                                        width: 20,
                                      )),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 300,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Color(0xFFF3F3F3),
                                    borderRadius: BorderRadius.circular(10)),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Phone number",
                                      // set color
                                      suffixIcon: Icon(Icons.phone_android),
                                      border: InputBorder.none,
                                      prefix: SizedBox(
                                        width: 20,
                                      )),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 300,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Color(0xFFF3F3F3),
                                    borderRadius: BorderRadius.circular(10)),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Strong Password",
                                      // set color
                                      suffixIcon: Icon(Icons.lock),
                                      border: InputBorder.none,
                                      prefix: SizedBox(
                                        width: 20,
                                      )),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                 Navigator.push(context, 
                                 MaterialPageRoute(builder: (context) => Profile()),
                                 );
                                },
                                style: ElevatedButton.styleFrom(
                                    minimumSize: Size(300, 50),
                                    backgroundColor: Color(0xFF1B1E69),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(10))),
                                child: Text(
                                  'Register',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'or register with',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => HomePage()),
                                    );
                                  },

                                  style: ElevatedButton.styleFrom(
                                    minimumSize: Size(300, 50),
                                    backgroundColor: Color(0xFFF3F3F3),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset(
                                        'assert/gg.png',
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      const Text(
                                        'Continue with Google',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: ElevatedButton(
                                  onPressed: () {
                                    print('Button is cliked');
                                  },

                                  style: ElevatedButton.styleFrom(
                                    minimumSize: Size(300, 50),
                                    backgroundColor: Color(0xFFF3F3F3),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset(
                                        'assert/fb.png',
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      const Text(
                                        'Continue with Facebook',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  
}