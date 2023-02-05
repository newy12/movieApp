import 'package:flutter/material.dart';
import 'package:flutter_project/landing/landing.dart';
import 'package:flutter_project/widgets/community.dart';
import 'package:flutter_project/widgets/home.dart';
import 'package:flutter_project/widgets/movie.dart';
import 'package:flutter_project/widgets/mypage.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: Landing(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
// 탭을 이동할 때 쓸 변수!
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const Movie(),
    const Community(),
    const MyPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffc2185b),
        title: Text(
          _selectedIndex == 0
              ? '홈'
              : _selectedIndex == 1
                  ? '상영중인영화'
                  : _selectedIndex == 2
                      ? '커뮤니티'
                      : _selectedIndex == 3
                          ? '마이페이지'
                          : '비고', //d
        ),
      ),
      body: SafeArea(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label: '상영중인영화',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: '커뮤니티',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: '마이페이지',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        // 아랫줄을 쓰지 않아도 탭이 4개 미만인 경우 기본으로 설정된다.
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xffc2185b),
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
      ),
    );
  }
}
