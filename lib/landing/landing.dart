import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project/main.dart';
import 'package:get/route_manager.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Get.offAll(const MyStatefulWidget());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            child: Container(
              color: const Color(0xffc2185b),
              child: const Center(
                child: Text('영화 랜딩페이지'),
              ),
            ),
          ),
          const CircularProgressIndicator(
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
