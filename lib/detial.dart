import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/model/travel.dart';
import 'package:flutter_auth_ui/insert.dart';

class DetailPage extends StatelessWidget {
  final Travel travel;
  DetailPage({required this.travel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Container(
                width: 560.0,
                height: 500.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(0.0),
                    bottomRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(0.0),
                    bottomRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                  ),
                  child: Image.asset(
                    travel.url,
                    color: null,
                    fit: BoxFit.cover,
                    colorBlendMode: BlendMode.dstATop,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 15, right: 15, left: 15),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.arrow_back_ios_new,
                          size: 30, color: Color(0xffffffff)))),
              Positioned(
                left: 24.0,
                top: 310.0,
                child: Container(
                  width: 230,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(38, 0, 0, 0),
                        offset: Offset(2.0, 4.0),
                        blurRadius: 14.0,
                      )
                    ],
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Container(
                        color: Color(0xffffffff),
                      )),
                ),
              ),
              Positioned(
                left: 44.0,
                top: 320.0,
                child: Text(
                  travel.name,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              Positioned(
                left: 440.0,
                top: 450.0,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.share, color: Colors.white),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),
                    foregroundColor: Color(0xff0c3358),
                    backgroundColor: Colors.blue,
                  ),
                ),
              ),
              Positioned(
                left: 44.0,
                top: 364.0,
                child: Text(
                  travel.location,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    color: Colors.lightBlue,
                  ),
                ),
              ),
              Positioned(
                left: 44.0,
                top: 394.0,
                child: Text(
                  travel.price,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    color: Color(0xff5bb7ec),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 25,
            color: Color(0x00ffffff),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              bottom: 40,
            ),
            child: Text(
              'Bilgi ',
              style: TextStyle(
                fontSize: 23.0,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Text(
              travel.overview,
              style: TextStyle(
                fontSize: 18.0,
                // fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                color: Color(0xff0c3358),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Text(
              'Seyahat Programı',
              style: TextStyle(
                fontSize: 23.0,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Text(
              travel.itenary,
              style: TextStyle(
                fontSize: 18.0,
                // fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                color: Color(0xff0c3358),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: FloatingActionButton.extended(
              label: Text('Rezervasyon yap'),
              backgroundColor: Colors.lightBlue,
              icon: Icon(
                // <-- Icon
                Icons.arrow_forward_ios,
                size: 20.0,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => new InsertData(),
                    settings: RouteSettings(arguments: travel),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
