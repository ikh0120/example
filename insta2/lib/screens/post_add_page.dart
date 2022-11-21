//게시글 추가 페이지

import 'package:flutter/material.dart';
import 'package:insta2/screens/main_home.dart';

class PostAddPage extends StatefulWidget {
  const PostAddPage({super.key});

  @override
  State<PostAddPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<PostAddPage> {
  TextEditingController name = TextEditingController();

  Widget _profileinfo() {
    return Stack(
      children: [
        Image.asset(
          'images/post_picture.png',
          width: 400,
          height: 400,
        ),
      ],
    );
  }

  Widget _postinfo() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Text('내용', style: TextStyle(fontSize: 12)),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.3,
              0, MediaQuery.of(context).size.width * 0.3, 40),
          child: TextField(
            decoration: InputDecoration(
              labelText: '내용을 입력하세요.',
            ),
          ),
        ),
      ],
    );
  }

  Widget _addpicturebutton() {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        '사진 업로드',
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

  Widget _addpostbutton() {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        '게시글 업로드',
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
          '게시글 업로드',
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
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          _profileinfo(),
          _addpicturebutton(),
          _postinfo(),
          _addpostbutton(),
        ]),
      ),
    );
  }
}
