import 'package:flutter/material.dart';

class Movie extends StatelessWidget {
  const Movie({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO 추후에 상영중인 영화 api 응답값 넣기.
    List<Container> list = [
      Container(
        height: 100,
        color: Colors.green,
        child: const Text('영화 1'),
      ),
      Container(
        height: 100,
        color: Colors.purple,
        child: const Text('영화 2'),
      ),
      Container(
        height: 100,
        color: Colors.deepPurple,
        child: const Text('영화 3'),
      ),
      Container(
        height: 100,
        color: Colors.amber,
        child: const Text('영화 4'),
      ),
      Container(
        height: 100,
        color: Colors.transparent,
        child: const Text('영화 5'),
      ),
      Container(
        height: 100,
        color: Colors.teal,
        child: const Text('영화 6'),
      ),
      Container(
        height: 100,
        color: Colors.lightBlueAccent,
        child: const Text('영화 7'),
      ),
      Container(
        height: 100,
        color: Colors.blueGrey,
        child: const Text('영화 8'),
      ),
      Container(
        height: 100,
        color: Colors.blueAccent,
        child: const Text('영화 9'),
      ),
      Container(
        height: 100,
        color: Colors.grey,
        child: const Text('영화 10'),
      ),
      Container(
        height: 100,
        color: Colors.green,
        child: const Text('영화 11'),
      ),
      Container(
        height: 100,
        color: Colors.pink,
        child: const Text('영화 12'),
      ),
    ];

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for (var item in list) item,
        ],
      ),
    );
  }
}
