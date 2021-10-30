import 'package:flutter/material.dart';

class VisitCard extends StatelessWidget {
  const VisitCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 100.0,
            backgroundImage: AssetImage('assets/image/me.jpg'),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'AGBONAGBAN Ablamvi',
            style: TextStyle(
              // fontFamily: "Pacifico",
              fontSize: 25.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Entrepreneur et Développeur Web & Mobile | Full Stack',
            style: TextStyle(
              fontFamily: "Source Sans Pro",
              fontSize: 18.0,
              color: Colors.blue.shade100,
              letterSpacing: 2.4,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
            width: 150.0,
            child: Divider(
              color: Colors.blue.shade100,
            ),
          ),
          Vcard(Icons.phone, "+228 97413256"),
          Vcard(Icons.email, "lewenbach228@gmail.com"),
          Vcard(Icons.web, "https://lewenbach.devgenesis.org")
        ],
      )),
    );
  }

  // ignore: non_constant_identifier_names
  Card Vcard(
    IconData icon,
    String titre,
  ) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 25.0,
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.blue,
        ),
        title: Text(
          titre,
          // textAlign : TextAlign.center,
          style: TextStyle(
              fontSize: 16.0,
              color: Colors.blue.shade900,
              fontFamily: 'Source Sans Pro'),
        ),
      ),
    );
  }
}
