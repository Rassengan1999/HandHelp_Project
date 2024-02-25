import 'package:first_app/Screens/Profile.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(110.0),
          child: SafeArea(
            child: Stack(children: [
              AppBar(
                backgroundColor: Color(0xFF1B1E69),
                actions: <Widget>[
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Profile()),
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
              Center(
                child: Text(
                  "Edit profile",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              )
            ]),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: CircleAvatar(
                    radius: 60, // Bán kính của hình tròn
                    backgroundImage: AssetImage('assert/avt2.jpg'), // Ảnh avatar
                  ),

                  padding: EdgeInsets.all(6),
                  // Khoảng cách giữa ảnh và đường viền
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, // Thiết lập hình dạng hình tròn
                    border: Border.all(
                      color: Colors.blue, // Màu của đường viền
                      width: 4, // Độ dày của đường viền
                    ),
                  ),
                ),
                //lanh

                Text(
                  "My profile",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1B1E69),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(""),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color(0xFFF3F3F3),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                          decoration: InputDecoration(
                        //label: Text("Label"),
                        hintText: "Name",
                        // set color
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      )),
                    ),
                  ],
                ),
                // SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(""),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color(0xFFF3F3F3),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                          decoration: InputDecoration(
                        //label: Text("Label"),
                        hintText: "Phone Number",
                        // set color
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      )),
                    ),
                  ],
                ),
                //SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(""),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color(0xFFF3F3F3),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                          decoration: InputDecoration(
                        //label: Text("Label"),
                        hintText: "Email",
                        // set color
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      )),
                    ),
                  ],
                ),
                //SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(""),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color(0xFFF3F3F3),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                          decoration: InputDecoration(
                        //label: Text("Label"),
                        hintText: "Address",
                        // set color
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      )),
                    ),
                  ],
                ),
                //SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(""),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color(0xFFF3F3F3),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                          decoration: InputDecoration(
                        //label: Text("Label"),
                        hintText: "Citizen identification card",
                        // set color
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditProfile()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(200, 50),
                          backgroundColor: Color(0xFF1B1E69),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              width: 55,
                            ),
                            Text(
                              'Save',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            )
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
