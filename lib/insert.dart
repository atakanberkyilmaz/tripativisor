import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_auth_ui/book.dart';
import 'package:flutter_auth_ui/model/travel.dart';

class InsertData extends StatefulWidget {
  const InsertData({Key? key}) : super(key: key);

  @override
  State<InsertData> createState() => _InsertDataState();
}

class _InsertDataState extends State<InsertData> {
  // final Detail detail;
  final userNameController = TextEditingController();
  final userAgeController = TextEditingController();
  final userMembersController = TextEditingController();
  final userBookingController = TextEditingController();

  late DatabaseReference dbRef;

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('detaylar');
  }

  @override
  Widget build(BuildContext context) {
    final travel = ModalRoute.of(context)!.settings.arguments as Travel;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Rezervasyon Sayfası',
          style: TextStyle(color: Color(0xffffffff)),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Rezervasyonunuz için bilgilerinizi giriniz ',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              Text(""),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: userNameController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    labelText: 'Ad',
                    hintText: 'Adınızı girin',
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: userAgeController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    labelText: 'Yaş',
                    hintText: 'Yaşınızı girin',
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    labelText: travel.name,
                    enabled: false,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: userMembersController,
                  decoration: InputDecoration(
                    hintText: '4',
                    labelText: 'Kaç kişi',
                    suffixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: userBookingController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    labelText: 'Ziyaret Edilecek Tarih',
                    hintText: '20-12-22',
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              MaterialButton(
                onPressed: () {
                  Map<String, String> details = {
                    'Ad': userNameController.text,
                    'Soyad': userAgeController.text,
                    'Kişi Sayısı': userMembersController.text,
                    'Rezervasyon': userBookingController.text,
                    'Yer': travel.name,
                  };

                  dbRef.push().set(details);
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new BookPack()));
                },
                child: const Text('Rezervasyon'),
                color: Colors.lightBlue,
                textColor: Colors.white,
                minWidth: 300,
                height: 70,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
