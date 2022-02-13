import 'package:flutter/material.dart';
import 'package:flutter_siakad_university/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: new BoxDecoration(
                    color: Colors.blue[900],
                    boxShadow: [
                      new BoxShadow(blurRadius: 5.0, color: Colors.grey)
                    ],
                    borderRadius: new BorderRadius.only(
                      bottomLeft: const Radius.circular(40.0),
                      bottomRight: const Radius.circular(40.0),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                    child: Image(
                      image: AssetImage("assets/Kampus.jpg"),
                      fit: BoxFit.fill,
                      color: Colors.grey.withOpacity(0.35),
                      colorBlendMode: BlendMode.modulate,
                      //color: Colors.blue.withOpacity(),
                      //opacity: 0.8,
                    ),
                  ),
                ),
                Align(
                  child: Column(children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.1,
                          bottom: 0),
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.width * 0.3,
                      decoration: new BoxDecoration(
                        //color: Colors.white,
                        boxShadow: [
                          new BoxShadow(blurRadius: 100.0, color: Colors.white)
                        ],
                        borderRadius: new BorderRadius.circular(20.0),
                      ),
                      child: Image(image: AssetImage("assets/Logo.png")),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Column(children: [
                        Text(
                          "UNIVERSITAS SATRIA MANDALA",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Rowdies",
                              fontSize: 20),
                        ),
                        Text(
                          "Jl. Pejuang Raya No.17 Kota Bandung",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "SourceSerifLight",
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        )
                      ]),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.5,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            new BoxShadow(blurRadius: 5.0, color: Colors.grey)
                          ],
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Selamat Datang",
                              style: TextStyle(
                                  color: Colors.blue[900],
                                  fontFamily: "Rowdies",
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                            Container(
                                margin: EdgeInsets.all(15),
                                child: Text(
                                  "Silakan login menggunakan akun terdaftar terlebih dahulu untuk dapat mengakses portal kampus",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: "SourceSerifLight",
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[700]),
                                )),
                            SizedBox(height: 20),
                            ButtonTheme(
                              minWidth: MediaQuery.of(context).size.width * 0.7,
                              height: MediaQuery.of(context).size.height * 0.07,
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return HomePage();
                                  }));
                                },
                                color: Colors.redAccent,
                                child: Text(
                                  "Masuk Akun",
                                  style: TextStyle(
                                      color: Colors.white,
                                      //fontFamily: "Rowdies",
                                      fontSize: 20),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ButtonTheme(
                              minWidth: MediaQuery.of(context).size.width * 0.7,
                              height: MediaQuery.of(context).size.height * 0.07,
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return HomePage();
                                  }));
                                },
                                color: Colors.white,
                                child: Text(
                                  "Daftar Akun",
                                  style: TextStyle(
                                      color: Colors.redAccent,
                                      //fontFamily: "Rowdies",
                                      fontSize: 20),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                      color: Colors.redAccent, width: 2),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(child: Text("Atau Masuk Dengan :")),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.13,
                                  height:
                                      MediaQuery.of(context).size.width * 0.13,
                                  decoration: new BoxDecoration(
                                    color: Colors.blue[800],
                                    boxShadow: [
                                      new BoxShadow(
                                          blurRadius: 5.0, color: Colors.grey)
                                    ],
                                    borderRadius:
                                        new BorderRadius.circular(10.0),
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.facebook_outlined),
                                    color: Colors.white,
                                    iconSize: 35,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.13,
                                    height: MediaQuery.of(context).size.width *
                                        0.13,
                                    decoration: new BoxDecoration(
                                      color: Colors.lightBlueAccent,
                                      boxShadow: [
                                        new BoxShadow(
                                            blurRadius: 5.0, color: Colors.grey)
                                      ],
                                      borderRadius:
                                          new BorderRadius.circular(10.0),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "t",
                                      style: TextStyle(
                                          fontFamily: "Rowdies",
                                          fontSize: 30,
                                          color: Colors.white),
                                    ))),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.13,
                                    height: MediaQuery.of(context).size.width *
                                        0.13,
                                    decoration: new BoxDecoration(
                                      color: Colors.redAccent,
                                      boxShadow: [
                                        new BoxShadow(
                                            blurRadius: 5.0, color: Colors.grey)
                                      ],
                                      borderRadius:
                                          new BorderRadius.circular(10.0),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "G",
                                      style: TextStyle(
                                          fontFamily: "Rowdies",
                                          fontSize: 30,
                                          color: Colors.white),
                                    ))),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.13,
                                  height:
                                      MediaQuery.of(context).size.width * 0.13,
                                  decoration: new BoxDecoration(
                                    color: Colors.grey,
                                    boxShadow: [
                                      new BoxShadow(
                                          blurRadius: 5.0, color: Colors.grey)
                                    ],
                                    borderRadius:
                                        new BorderRadius.circular(10.0),
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.smartphone_rounded),
                                    color: Colors.white,
                                    iconSize: 35,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                    Container(
                      margin: EdgeInsets.all(40),
                      child: Text(
                        "Keluar",
                        style: TextStyle(
                            color: Colors.red[400],
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
