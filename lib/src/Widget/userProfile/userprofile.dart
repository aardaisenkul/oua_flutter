import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

//
class _ProfilState extends State<Profil> {
  void HayvanEkle() {}
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: ekranGenisligi / 30.0),
                      child: GestureDetector(
                        onTap: () {
                          // İcon'a tıklandığında yapılacak işlemler
                          print("ayarlar için");
                        },
                        child: Icon(Icons.settings),
                      ),
                    ),
                  ],
                ),
                Image.asset("images/Resim3.png"),
                SizedBox(height: 20),
                Text(
                  "${FirebaseAuth.instance.currentUser!.displayName}",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "${FirebaseAuth.instance.currentUser!.email}",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                // SizedBox(height: 20),
                // Text(
                //   'phone number: ${FirebaseAuth.instance.currentUser!.phoneNumber}',
                //   style: TextStyle(
                //     fontSize: 16,
                //     color: Colors.grey,
                //   ),
                // ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 75,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                  Color(0xfffbb448),
                                  Color(0xfff7892b)
                                ])),
                          ),
                        ),
                        Center(
                            child: Text(
                          "Hayvanlarım",
                          style: TextStyle(color: Colors.white),
                        )),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: ekranYuksekligi / 2.0),
                  child: Container(
                    width: 200,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                    Color(0xfffbb448),
                                    Color(0xfff7892b)
                                  ])),
                            ),
                          ),
                          Center(
                            child: TextButton(
                              onPressed: () {
                                print("tiklandi");
                              },
                              child: Text(
                                "Hayvan Ekle",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
