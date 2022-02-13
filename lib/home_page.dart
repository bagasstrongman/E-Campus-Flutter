import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  int _currentIndex = 0;

  late CarouselSlider carouselSlider;

  List imageList = [
    'assets/Banners1.jpg',
    'assets/Banners2.jpg',
    'assets/Banners3.jpg',
    'assets/Banners4.jpg',
    'assets/Banners5.jpg',
    'assets/Banners6.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue[50],
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.08),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.blue[900],
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Row(
            //crossAxisAlignment: CrossAxisAlignment.s,
            children: [
              Image(
                image: AssetImage("assets/avatar.png"),
                width: 45,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sultan Mafia",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Mahasiswa",
                    style: TextStyle(
                        fontFamily: "SourceSerifLight",
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[350]),
                  ),
                ],
              )
            ],
          ),
          actions: [
            Container(
                margin: EdgeInsets.all(10),
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.notifications_active)))
          ],
        ),
      ),
      body: ListView(children: [
        Stack(children: [
          Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.05,
            decoration: new BoxDecoration(
              color: Colors.blue[900],
              boxShadow: [new BoxShadow(blurRadius: 5.0)],
              borderRadius: new BorderRadius.vertical(
                  bottom: new Radius.elliptical(
                      MediaQuery.of(context).size.width, 300.0)),
            ),
          ),
          Align(
            child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: new BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    new BoxShadow(blurRadius: 5.0, color: Colors.grey)
                  ],
                  borderRadius: new BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: MediaQuery.of(context).size.width * 0.1,
                            height: MediaQuery.of(context).size.width * 0.1,
                            decoration: new BoxDecoration(
                              color: Colors.blue[50],
                              //boxShadow: [new BoxShadow(blurRadius: 0.0)],
                              borderRadius: new BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.account_balance_wallet_rounded),
                              color: Colors.blue,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "  Tagihan Kuliah ",
                                style: TextStyle(
                                    //fontFamily: "SourceSeriflight",
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.grey[500]),
                              ),
                              Text(
                                "  Rp.200.000 ",
                                style: TextStyle(
                                    fontFamily: "Rowdies",
                                    fontWeight: FontWeight.w200,
                                    color: Colors.red[300]),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: MediaQuery.of(context).size.width * 0.1,
                            height: MediaQuery.of(context).size.width * 0.1,
                            decoration: new BoxDecoration(
                              color: Colors.blue[50],
                              //boxShadow: [new BoxShadow(blurRadius: 0.0)],
                              borderRadius: new BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.analytics_rounded),
                              color: Colors.blue,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "  SKS Sekarang ",
                                style: TextStyle(
                                    //fontFamily: "SourceSeriflight",
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.grey[500]),
                              ),
                              Row(children: [
                                Text(
                                  "  155 ",
                                  style: TextStyle(
                                      fontFamily: "Rowdies",
                                      fontWeight: FontWeight.w200,
                                      color: Colors.blue),
                                ),
                                Text(
                                  "/ 172 ",
                                  style: TextStyle(
                                      fontFamily: "Rowdies",
                                      fontWeight: FontWeight.w200,
                                      color: Colors.grey),
                                ),
                              ]),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
          Container(
            //alignment: Alignment.centerRight,
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.width * 0.2,
              //right: 20
            ),
            padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.width * 0.6,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.width * 0.15,
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          //boxShadow: [new BoxShadow(blurRadius: 0.0)],
                          borderRadius: new BorderRadius.circular(15),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.account_circle_rounded),
                          iconSize: 35,
                          color: Colors.blue[900],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Profil",
                        style: TextStyle(
                            fontFamily: "Rowdies",
                            fontWeight: FontWeight.w200,
                            color: Colors.grey),
                      )
                    ]),
                    Column(children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.width * 0.15,
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          //boxShadow: [new BoxShadow(blurRadius: 0.0)],
                          borderRadius: new BorderRadius.circular(15),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.badge_rounded),
                          iconSize: 30,
                          color: Colors.blue[900],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "KRS",
                        style: TextStyle(
                            fontFamily: "Rowdies",
                            fontWeight: FontWeight.w200,
                            color: Colors.grey),
                      )
                    ]),
                    Column(children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.width * 0.15,
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          //boxShadow: [new BoxShadow(blurRadius: 0.0)],
                          borderRadius: new BorderRadius.circular(15),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.assignment),
                          iconSize: 30,
                          color: Colors.blue[900],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Nilai",
                        style: TextStyle(
                            fontFamily: "Rowdies",
                            fontWeight: FontWeight.w200,
                            color: Colors.grey),
                      )
                    ]),
                    Column(children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.width * 0.15,
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          //boxShadow: [new BoxShadow(blurRadius: 0.0)],
                          borderRadius: new BorderRadius.circular(15),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.text_snippet_rounded),
                          iconSize: 30,
                          color: Colors.blue[900],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Jadwal",
                        style: TextStyle(
                            fontFamily: "Rowdies",
                            fontWeight: FontWeight.w200,
                            color: Colors.grey),
                      )
                    ]),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                        //mainAxisAlignment: MainAxisAlignment,
                        children: [
                          Container(
                            //margin: EdgeInsets.al,
                            width: MediaQuery.of(context).size.width * 0.15,
                            height: MediaQuery.of(context).size.width * 0.15,
                            decoration: new BoxDecoration(
                              color: Colors.blue[100],
                              //boxShadow: [new BoxShadow(blurRadius: 0.0)],
                              borderRadius: new BorderRadius.circular(15),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.account_balance_wallet_rounded),
                              iconSize: 35,
                              color: Colors.blue[900],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Bayar",
                            style: TextStyle(
                                fontFamily: "Rowdies",
                                fontWeight: FontWeight.w200,
                                color: Colors.grey),
                          )
                        ]),
                    Column(children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.width * 0.15,
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          //boxShadow: [new BoxShadow(blurRadius: 0.0)],
                          borderRadius: new BorderRadius.circular(15),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.feed_rounded),
                          iconSize: 30,
                          color: Colors.blue[900],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Tagihan",
                        style: TextStyle(
                            fontFamily: "Rowdies",
                            fontWeight: FontWeight.w200,
                            color: Colors.grey),
                      )
                    ]),
                    Column(children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.width * 0.15,
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          //boxShadow: [new BoxShadow(blurRadius: 0.0)],
                          borderRadius: new BorderRadius.circular(15),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.task_rounded),
                          iconSize: 30,
                          color: Colors.blue[900],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Kegiatan",
                        style: TextStyle(
                            fontFamily: "Rowdies",
                            fontWeight: FontWeight.w200,
                            color: Colors.grey),
                      )
                    ]),
                    Column(children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.width * 0.15,
                        decoration: new BoxDecoration(
                          color: Colors.blue[100],
                          //boxShadow: [new BoxShadow(blurRadius: 0.0)],
                          borderRadius: new BorderRadius.circular(15),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.menu_rounded),
                          iconSize: 30,
                          color: Colors.blue[900],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Lain-lain",
                        style: TextStyle(
                            fontFamily: "Rowdies",
                            fontWeight: FontWeight.w200,
                            color: Colors.grey),
                      )
                    ]),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.width * 0.75,
              //right: 20
            ),
            padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.width * 0.6,
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Informasi & Berita",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Lainnya",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      )
                    ])
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.width * 0.8,
              //right: 20
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: 200.0,
                    initialPage: 0,
                    autoPlay: true,
                    reverse: false,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    scrollDirection: Axis.horizontal,
                    autoPlayInterval: Duration(seconds: 5),
                    autoPlayAnimationDuration: Duration(milliseconds: 2000),
                    onPageChanged: (index, reason) => _currentIndex = index,
                    // pauseAutoPlayOnTouch: Duration(seconds: 10),
                    // scrollDirection: Axis.horizontal,
                  ),
                  items: imageList
                      .map(
                        (item) => Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            //shadowColor: Colors.grey,
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                              child: Image.asset(
                                item,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.width * 1.25,
              //right: 20
            ),
            padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.width * 0.6,
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Biodata Mahasiswa",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ])
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.width * 1.38,
              left: MediaQuery.of(context).size.width * 0.05,
              right: MediaQuery.of(context).size.width * 0.05,
              //right: 20
            ),
            padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.181,
            decoration: new BoxDecoration(
              color: Colors.white,
              boxShadow: [new BoxShadow(blurRadius: 5.0, color: Colors.grey)],
              borderRadius: new BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage("assets/avatar.png"),
                        width: 60,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            //width: MediaQuery.of(context).size.width * 0.1,
                            child: Text(
                              " Sultan Mafia",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.blue[900],
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            //crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                " 109800200",
                                style: TextStyle(
                                    fontFamily: "SourceSerifLight",
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              ),
                              SizedBox(
                                width: 80,
                              ),
                              Text(
                                " Sistem Informasi",
                                style: TextStyle(
                                    fontFamily: "Rowdies",
                                    fontSize: 13,
                                    //fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ]),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.red[400],
                    elevation: 0,
                    splashColor: Colors.amber,
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.white,
                          //width: MediaQuery.of(context).size.width*0.1
                        )),
                    child: Text(
                      "Lengkapi Profile",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.width * 1.75,
              //right: 20
            ),
            padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Kartu Rencana Studi",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ]),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width * 0.04,
                          //left: MediaQuery.of(context).size.width * 0.05,
                          //right: MediaQuery.of(context).size.width * 0.05,
                          //right: 20
                        ),
                        padding: EdgeInsets.all(20),
                        width: MediaQuery.of(context).size.width * 1,
                        height: MediaQuery.of(context).size.height * 0.23,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            new BoxShadow(blurRadius: 5.0, color: Colors.grey)
                          ],
                          borderRadius: new BorderRadius.circular(20),
                        ),
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Row(
                                
                                children: [
                                  Text(
                                    "Indeks Kumulatif : ",
                                    style: TextStyle(
                                        color: Colors.grey[600],
                                        fontWeight: FontWeight.bold
                                        ),
                                  ),
                                  Text(
                                    "3.9",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ]),
                                 IconButton(onPressed: (){}, icon: Icon(Icons.chevron_right_rounded, size: 20,), color: Colors.grey,)
                            ]),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [Padding(
                              padding: EdgeInsets.only(
                                top: 0
                              ),
                              child: new LinearPercentIndicator(
                                width: MediaQuery.of(context).size.width * 0.8,
                                lineHeight: 20.0,
                                percent: 0.9,
                                center: Text(
                                  "3.9 / 4.0",
                                  style: new TextStyle(
                                      fontSize: 14.0, color: Colors.white),
                                ),
                                barRadius: Radius.circular(20),
                                linearStrokeCap: LinearStrokeCap.roundAll,
                                backgroundColor: Colors.grey,
                                progressColor: Colors.amber[800],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "SKS yang diambil : ",
                                  style: TextStyle(
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.bold
                                      ),
                                ),
                                Text(
                                  "155 SKS",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ]),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 15
                              ),
                              child: new LinearPercentIndicator(
                                width: MediaQuery.of(context).size.width * 0.8,
                                lineHeight: 20.0,
                                percent: 0.8,
                                center: Text(
                                  "155 / 169",
                                  style: new TextStyle(
                                      fontSize: 14.0, color: Colors.white),
                                ),
                                barRadius: Radius.circular(20),
                                linearStrokeCap: LinearStrokeCap.roundAll,
                                backgroundColor: Colors.grey,
                                progressColor: Colors.green,
                              ),
                            ),
                            ]),
                          
                        ]),

                        /*new CircularPercentIndicator(
                          radius: 60.0,
                          lineWidth: 5.0,
                          percent: 1.0,
                          center: new Text("100%"),
                          progressColor: Colors.green,
                        ),*/
                      ),
                    ])
              ],
            ),
          ),
        ]),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_rounded,
              size: 30,
            ),
            title: Text(
              'Beranda',
              style: TextStyle(),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_rounded,
              size: 30,
            ),
            title: Text('Cari'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list_alt_rounded,
              size: 30,
            ),
            title: Text('Kelas'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_outlined,
              size: 30,
            ),
            title: Text('Chat'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              size: 30,
            ),
            title: Text('Profil'),
          ),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}
