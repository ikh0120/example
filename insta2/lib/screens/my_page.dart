//본인 프로필

import 'package:flutter/material.dart';
import 'package:insta2/screens/main_home.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  Widget _follower(String title, int value) {
    return Column(
      children: [
        Text(
          value.toString(),
          style: TextStyle(fontSize: 50, color: Colors.black),
        ),
        Text(
          title,
          style: TextStyle(fontSize: 30, color: Colors.black),
        )
      ],
    );
  }

  Widget _information() {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Stack(
                children: [
                  Image.asset(
                    'images/Biyu.png',
                    width: 400,
                    height: 400,
                  ),
                  Image.asset(
                    'images/frame.png',
                    width: 400,
                    height: 400,
                  ),
                ],
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _follower('게시글', 12),
                    _follower('팔로잉', 13),
                    _follower('팔로워', 15),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Text(
            '안녕하세요 이것은 한줄소개입니다. 일단 길게 적어보겠습니다.',
            style: TextStyle(fontSize: 20, color: Colors.black),
          )
        ],
      ),
    );
  }

  Widget _tapview() {
    return GridView.builder(
        padding: EdgeInsets.all(15),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 100,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
        ),
        itemBuilder: (BuildContext context, int inedx) {
          return Container(
            color: Colors.grey,
          );
        });
  }

  Widget _compilebutton() {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        '프로필 편집',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.grey,
        minimumSize: Size(MediaQuery.of(context).size.width * 0.98, 48),
        onSurface: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          '@ddd_uk87',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (builder) => main_home()));
              },
              icon: Icon(Icons.home),
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          _information(),
          _compilebutton(),
          _tapview(),
        ]),
      ),
    );
  }
}
