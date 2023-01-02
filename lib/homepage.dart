import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/most_popular.dart';
import 'package:flutter_auth_ui/screens/search_screen.dart';
import 'package:flutter_auth_ui/travel_blog.dart';
import 'package:flutter_auth_ui/policies.dart';
import 'package:flutter_auth_ui/logout.dart';
import 'package:flutter_auth_ui/screens/login_screen.dart';
import 'package:flutter_auth_ui/screens/signup_screen.dart';
import 'package:flutter_auth_ui/widgets/activities.dart';
class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/arkaplan.jpg"),
            fit: BoxFit.cover,
            opacity: 0.7,
          )
      ),
      child: Material(
        color: Colors.transparent,
        child: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 65, horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "TripAtivisor'a",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "Hoşgeldiniz!",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 35,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(height: 12,),
                  Text(
                    "TripAtivisor Atakan Berk Yılmaz tarafından geliştirilen bir uygulamadır.",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 16,
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: 30),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) =>HomePage(),
                      ));
                    },
                    child: Ink(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black54,
                        size: 20,
                      ),
                    ),
                  ),
                ],

              )
          ),
        ),
      ),
    );
  }
}





class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Trip Ativisor',
          style: TextStyle(color: Color(0xffffffff)),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      drawer: DrawerCodeOnly(),
      body: ListView(
        children: [
          Padding(padding: const EdgeInsets.all(18)),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  'Yerler',
                  style: TextStyle(
                    height: 2,
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    color: Colors.lightBlue
                  ),
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => new SearchScreen()));
                },
                child: Icon(Icons.search, color: Colors.white),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor: Colors.lightBlue
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Yeni Yerler',
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Container(height: 250, child: TravelBlog()),
          Padding(
            padding: const EdgeInsets.only(left: 17, bottom: 17, right: 17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popüler Yerler',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Container(height: 270, child: MostPopular()),
          Padding(
            padding: const EdgeInsets.all(17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Aktiviteler',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Container(
            height: 250,
            child: ActivitiesBlog(),
          )
        ],
      ),
    );
  }
}

class DrawerCodeOnly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.lightBlue,
            ),
            child: Icon(
              Icons.person_pin,
              color: Colors.white,
              size: 70,
              textDirection: TextDirection.ltr,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
            ),
            title: const Text('Ana Sayfa'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new HomePage()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.person,
            ),
            title: const Text('Kayıt Ol'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => signup()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.person,
            ),
            title: const Text('Giriş Yap'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => Login()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.person,
            ),
            title: const Text('Çıkış Yap'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => Logout()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.info_rounded,
            ),
            title: const Text('Hakkında'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new information()));
            },
          ),
        ],
      ),
    );
  }
}
