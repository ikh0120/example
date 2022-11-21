import 'package:flutter/material.dart';
import 'package:insta2/screens/login_page.dart';
import 'package:insta2/screens/my_page.dart';
import 'package:insta2/scripts.dart';
import 'package:insta2/widgets/instafeed.dart';

class main_home extends StatefulWidget {
  @override
  State<main_home> createState() => _main_homeState();
}

class _main_homeState extends State<main_home> {
  List<Widget> MainScrolView = new List<Widget>.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SingleChildScrollView(
            child: Container(
              height:
                  800 + checkPositive(MediaQuery.of(context).size.height - 800),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 100, 0),
                    child: Text(
                      'Instagram',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: "Pacifico",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (builder) => main_home()));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.home,
                            color: Colors.black,
                          ),
                          Padding(padding: EdgeInsets.all(3)),
                          Text(
                            '홈',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          Padding(padding: EdgeInsets.all(3)),
                          Text(
                            '검색',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.explore,
                            color: Colors.black,
                          ),
                          Padding(padding: EdgeInsets.all(3)),
                          Text(
                            '탐색',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.note,
                            color: Colors.black,
                          ),
                          Padding(padding: EdgeInsets.all(3)),
                          Text(
                            '메시지',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.notifications,
                            color: Colors.black,
                          ),
                          Padding(padding: EdgeInsets.all(3)),
                          Text(
                            '알림',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.create,
                            color: Colors.black,
                          ),
                          Padding(padding: EdgeInsets.all(3)),
                          Text(
                            '만들기',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (builder) => MyPage()));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.supervised_user_circle,
                            color: Colors.black,
                          ),
                          Padding(padding: EdgeInsets.all(3)),
                          Text(
                            '프로필',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (builder) => login_page()));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.backspace,
                            color: Colors.black,
                          ),
                          Padding(padding: EdgeInsets.all(3)),
                          Text(
                            '로그아웃',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 2,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 220, 220, 220),
            ),
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  if (MainScrolView.length == index) {
                    MainScrolView.add(Padding(padding: EdgeInsets.all(50)));
                    MainScrolView.add(instaFeed());
                  }
                  return MainScrolView[index];
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
