import 'dart:async';
import 'package:first_app/Screens/EditProfile.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:first_app/Screens/Profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;
  late Animation<double> _radiusAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..forward();

    _rotationAnimation = Tween(begin: 0.0, end: 2 * 3.14159 * 2).animate(
        CurvedAnimation(parent: _controller, curve: Curves.bounceOut));

    _radiusAnimation = Tween(begin: 50.0, end: 450.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.bounceOut));

    _controller.addListener(() {
      setState(() {});
    });

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reset();
        _controller.forward();
      }
    });

    // Bắt đầu gọi hàm để cập nhật giao diện sau mỗi khoảng thời gian
    Timer.periodic(Duration(seconds: 1), (timer) {
      _controller.forward(); // Kích hoạt hiệu ứng
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: InkWell(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("ĐÃ GỬI THÔNG BÁO!")));
          },
          borderRadius: BorderRadius.circular(200),
          child: Container(
            width: 250,
            height: 250,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Transform.rotate(
                  angle: _rotationAnimation.value,
                  child: Container(
                    width: 225,
                    height: 225,
                    decoration: BoxDecoration(
                      color: Color(0xFFECECEC),
                      borderRadius: BorderRadius.circular(_radiusAnimation.value),
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: _rotationAnimation.value + 0.2,
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Color(0xFFA4C8F3),
                      borderRadius: BorderRadius.circular(_radiusAnimation.value),
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: _rotationAnimation.value + 0.4,
                  child: Container(
                    width: 175,
                    height: 175,
                    decoration: BoxDecoration(
                      color: Color(0xFF7DA9DE),
                      borderRadius: BorderRadius.circular(_radiusAnimation.value),
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: _rotationAnimation.value + 0.6,
                  child: Container(
                    width: 125,
                    height: 125,
                    decoration: BoxDecoration(
                      color: Color(0xFF465394),
                      borderRadius: BorderRadius.circular(_radiusAnimation.value),
                    ),
                  ),
                ),
                Container(
                  child: Image.asset(
                    'assert/bell.png',
                    fit: BoxFit.contain,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: GNav(
        gap: 5,
        backgroundColor: Color(0xFF1B1E69),
        color: Colors.white,
        activeColor: Color(0xFF1B1E69),
        tabBackgroundColor: Colors.white,
        tabBorderRadius: 8,
        tabMargin: EdgeInsets.all(10),
        padding: EdgeInsets.all(8),
        tabs: [
          GButton(
            icon: Icons.home,
            text: "Home",
          ),
          GButton(
            icon: Icons.add,
            text: "Add contact",
          ),
          GButton(
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Profile()),
              );
            },
            icon: Icons.person,
            text: "Profile",
          ),
        ],
      ),
    );
  }
}