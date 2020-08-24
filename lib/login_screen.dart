import 'package:flutter/material.dart';

//clas untuk ditamppilkan di main.dart
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //membuat tampilan input nomor telepon dengan method Widget
  Widget _buildPhone() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, //content dimulai dari kiri
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft, //dimulai dari kiri
          height: 60.0, //mengatur tinggi content
          margin:
              EdgeInsets.only(top: 100.0), //membuat margin hanya bagian atas
          child: TextField(
            keyboardType: TextInputType.phone, //memunculkan keyboard angka
            style: TextStyle(color: Colors.white), //membuat text berwarna putih
            decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.white), //membuat border dengan warna putih
                ), //mengatur border ketika loading awal
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.cyan),
                ), //mengatur border ketika menginputkan
                contentPadding: EdgeInsets.only(
                    top: 14.0), //membuat padding hanya bagian atas sebesar 14px
                prefixIcon: Icon(
                  Icons.person_outline,
                  color: Colors.white,
                ), //membuat icon person denngan outline berwarna putih
                hintText: 'Nomor Ponsel', //membuat text dalam textfield
                hintStyle: TextStyle(
                  color: Colors.white,
                ) //membuat warna text pada textfield
                ),
          ),
        )
      ],
    );
  }

  Widget _btnSigin() {
    //function untuk tombol "SIGN IN"
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: OutlineButton(
        onPressed: () => print(
            'Login Button Pressed'), // mencetak string pada debug console jika tombol "SIGN IN" ditekan
        padding: EdgeInsets.all(15.0), // mengatur padding tombol "SIGN IN"
        borderSide:
            BorderSide(color: Colors.white), // mewarnai border tombol "SIGN IN"
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ), //mengatur button sigin agar berbentuk seperti ditampilan
        child: Text(
          'SIGN IN',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ), //mengatur style text
        ), //membuat text
      ),
    );
  }

  Widget _buildLine() {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '---------------------------------- ATAU ----------------------------------',
            style: TextStyle(
              color: Colors
                  .white, //memberi warna putih pada tulisan dan garis "ATAU"
            ),
          )
        ],
      ),
    );
  }

  Widget _buildJoin() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () => print('Login Button Pressed'),
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.cyanAccent,
        child: Text(
          //mengatur button "JOIN NOW"
          'JOIN NOW',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.normal,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  Widget _buildHelp() {
    //mengatur tampilan "butuh bantuan?"
    return Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Icon(
              //mengatur icon chat dibawah
              Icons.chat,
              color: Colors.cyanAccent,
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
            Text(
              //mengatur tulisan "BUTUH BANTUAN?"
              ' Butuh bantuan?',
              style: TextStyle(
                color: Colors.cyanAccent,
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
                fontFamily: 'OpenSans',
              ),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.purple[800],
            ),
          ),
          Container(
            //mengatur secara keseluruhan tampilan
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.fromLTRB(45, 170, 45, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'OVO', //menampilkan tulisan "OVO"
                    style: TextStyle(
                      color:
                          Colors.white, //memberi warna putih pada tulisan "OVO"
                      fontFamily: 'OpenSans', //mengatur jenis tulisan "OVO"
                      fontSize: 48.0, //mengatur ukuran text
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  _buildPhone(), //memanggil widget _buildPhone()
                  _btnSigin(),
                  _buildLine(),
                  _buildJoin(),
                  _buildHelp(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
