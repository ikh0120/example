import 'package:flutter/material.dart';
import 'package:insta2/providerVar/providerVars.dart';
import 'package:insta2/screens/login_page.dart';
import 'package:insta2/screens/main_home.dart';
import 'package:insta2/scripts.dart';
import 'package:provider/provider.dart';

class login_gogo extends StatefulWidget {
  @override
  State<login_gogo> createState() => _login_gogoState();
}

class _login_gogoState extends State<login_gogo> {
  TextEditingController id = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    providerVariable provar = Provider.of<providerVariable>(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                0,
                100,
                0,
                100,
              ),
              child: Text(
                'Instagram',
                style: TextStyle(
                  fontSize: 64,
                  fontFamily: "Pacifico",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  checkPositive(MediaQuery.of(context).size.width * 0.5 - 200),
                  0,
                  checkPositive(MediaQuery.of(context).size.width * 0.5 - 200),
                  40),
              child: TextField(
                controller: id,
                decoration: InputDecoration(
                  labelText: '아이디',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  checkPositive(MediaQuery.of(context).size.width * 0.5 - 200),
                  0,
                  checkPositive(MediaQuery.of(context).size.width * 0.5 - 200),
                  40),
              child: TextField(
                controller: password,
                decoration: InputDecoration(
                  labelText: '비밀번호',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
                obscureText: true,
              ),
            ),
            Padding(padding: EdgeInsets.all(20)),
            ElevatedButton(
              onPressed: () {
                if (id.text == '${provar.id}' &&
                    password.text == '${provar.password}' &&
                    id.text != "") {
                  showWinToast('회원정보 일치O', context);
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (builder) => main_home()));
                } else {
                  showWinToast('회원정보 일치X', context);
                }
              },
              child: Text(
                '로그인',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey,
                minimumSize: Size(335, 47),
                onSurface: Colors.white,
              ),
            ),
            Padding(padding: EdgeInsets.all(20)),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (builder) => login_page()));
              },
              child: Text(
                '뒤로가기',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey,
                minimumSize: Size(335, 47),
                onSurface: Colors.white,
              ),
            ),
            Padding(padding: EdgeInsets.all(20)),
          ],
        ),
      ),
    );
  }
}
