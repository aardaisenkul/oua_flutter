import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:high_paw/src/auth_services.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final user = FirebaseAuth.instance.currentUser!;
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  //BURA GEÇİÇİ TEST İÇİN OLUŞTURDUM
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(254, 242, 244, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(209, 77, 114, 1.0),
        actions: [
          IconButton(
              onPressed: () {
                signUserOut();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AuthServices()));
              },
              icon: Icon(Icons.logout))
        ],
      ),
    );
  }
}
