import 'package:first_app/Screens/Register.dart';
import 'package:flutter/material.dart';
import 'package:first_app/Screens/EditProfile.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200.0), // Set the height here

          child: SafeArea(
            child: AppBar(
              backgroundColor: Color(0xFF1B1E69),
              actions: <Widget>[
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Register()),
                      );
                      // Xử lý khi người dùng nhấn vào hình ảnh
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: 350.0, top: 20),
                      child: Image.asset(
                        'assert/return.png',
                      ),
                    ))
              ],
            ),
          ),
        ),
        //resizeToAvoidBottomInset: false
        body: SafeArea(
          child: Center(
            child: Stack(
              children: [
                Container(
                // color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                      child: Text(
                        'Anh Vu',
                        style: TextStyle(
                            fontSize: 30,
                            color: Color(0xFF1B1E69),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      'example@gmail.com',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF1B1E69),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 300,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => EditProfile()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(300, 50),
                              backgroundColor: Color(0xFFF3F3F3),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.person),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Edit profile',
                                )
                              ],
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 300,
                      child: ElevatedButton(
                          onPressed: () {
                            print('button is clicked');
                          },
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(300, 50),
                              backgroundColor: Color(0xFFF3F3F3),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.notifications_active),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Nontification Setting',
                                )
                              ],
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 300,
                      child: ElevatedButton(
                          onPressed: () {
                            print('button is clicked');
                          },
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(300, 50),
                              backgroundColor: Color(0xFFF3F3F3),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.contact_support_outlined),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Support',
                                )
                              ],
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 300,
                      child: ElevatedButton(
                          onPressed: () {
                            print('button is clicked');
                          },
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(300, 50),
                              backgroundColor: Color(0xFFF3F3F3),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.settings),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Setting',
                                )
                              ],
                            ),
                          )),
                    ),
                    SizedBox(height: 20,),
                    Text("Log out",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1B1E69)
                      ),
                    )
                  ],
                ),
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
