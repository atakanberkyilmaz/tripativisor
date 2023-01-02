import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import '../firebase_options.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp(
    home: SearchScreen(),
  ));
}

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreen();
}

class _SearchScreen extends State<SearchScreen> {
  String name = "";
  List<Map<String, dynamic>> data = [
    {
      'name': 'Atakule',
      'image':
      'https://upload.wikimedia.org/wikipedia/commons/1/15/Ankara_asv2021-10_img16_Atakule.jpg',
      'location': 'Ankara'
    },
    {
      'name': 'Eğirdir',
      'image':
      'https://upload.wikimedia.org/wikipedia/commons/f/fc/EGİRDİR_GÖLÜ.jpg',
      'location': 'Isparta'
    },
    {
      'name': 'Yeşil Türbe',
      'image':
      'https://upload.wikimedia.org/wikipedia/commons/2/26/Turkey-1353_%282216628788%29.jpg',
      'location': 'Bursa'
    },
    {
      'name': 'TBMM',
      'image':
      'https://upload.wikimedia.org/wikipedia/commons/2/2d/TBMM%2C_August_2022.jpg',
      'location': 'Ankara'
    },
    {
      'name': 'Vialand',
      'image':
      'https://upload.wikimedia.org/wikipedia/commons/9/94/Vialand_Theme_Park%2C_İstanbul_p3.jpg',
      'location': 'İstanbul'
    },
    {
      'name': 'Kapadokya',
      'image':
      'https://upload.wikimedia.org/wikipedia/commons/d/d2/Cappadociasunrise.jpg',
      'location': 'Nevşehir'
    },
    {
      'name': 'Nemrut Dağı',
      'image':
      'https://upload.wikimedia.org/wikipedia/commons/1/14/Nemrut_mountain_and_blue_sky.jpg',
      'location': 'Adıyaman'
    },
    {
      'name': 'Mogan Gölü',
      'image':
      'https://upload.wikimedia.org/wikipedia/commons/f/f7/Ozero_Mogan.jpeg',
      'location': 'Ankara'
    },
    {
      'name': 'Cumhuriyet Parkı',
      'image':
      'https://pbs.twimg.com/media/EXUBoMdXYAApZHd?format=jpg&name=large',
      'location': 'Ankara'
    },
    {
      'name': 'Kızılay',
      'image':
      'https://upload.wikimedia.org/wikipedia/commons/5/5e/Madenci_Heykeli%2C_Olgunlar.jpg',
      'location': 'Ankara'
    },
    {
      'name': 'Anıtkabir',
      'image':
      'https://upload.wikimedia.org/wikipedia/commons/c/ca/Ataturk%27s_Mausoleum_%286225341313%29.jpg',
      'location': 'Ankara'
    },
    {
      'name': 'Etnografya Müzesi',
      'image':
      'https://upload.wikimedia.org/wikipedia/commons/d/d4/Ankara_asv2021-10_img62_Ethnography_Museum.jpg',
      'location': 'Ankara'
    }
  ];

  addData() async {
    for (var element in data) {
      FirebaseFirestore.instance.collection('sehirler').add(element);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Card(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search), hintText: 'Search...'),
                onChanged: (val) {
                  setState(() {
                    name = val;
                  });
                },
              ),
            )),
        body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('sehirler').snapshots(),
          builder: (context, snapshots) {
            return (snapshots.connectionState == ConnectionState.waiting)
                ? Center(
              child: CircularProgressIndicator(),
            )
                : ListView.builder(
                itemCount: snapshots.data!.docs.length,
                itemBuilder: (context, index) {
                  var data = snapshots.data!.docs[index].data()
                  as Map<String, dynamic>;

                  if (name.isEmpty) {
                    return ListTile(
                      title: Text(
                        data['name'],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        data['location'],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(data['image']),
                      ),
                    );
                  }
                  if (data['name']
                      .toString()
                      .toLowerCase()
                      .startsWith(name.toLowerCase())) {
                    return ListTile(
                      title: Text(
                        data['name'],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        data['location'],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(data['image']),
                      ),
                    );
                  }
                  return Container();
                });
          },
        ));
  }
}