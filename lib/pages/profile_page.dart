import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key,
   required this.nameProfile,
   required this.surnameProfile,
   required this.numberProfile,
   required this.emailProfile});

  String nameProfile;
  String surnameProfile;
  String numberProfile;
  String emailProfile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'тапшырма-4 ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: Color.fromARGB(255, 12, 192, 165),
              backgroundImage: AssetImage('assets/image/images (2).jpeg'),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              nameProfile,
              style: const TextStyle(
                  color: Colors.white, fontSize: 40, fontFamily: "Yellowtail"),
            ),
             Text( surnameProfile,
                style: const TextStyle(color: Colors.white, fontSize: 20)),
            const Divider(
              indent: 120,
              endIndent: 120,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 55,
                color: Colors.white,
                child:  Row(
                  children: [
                    const Icon(
                      Icons.phone,
                      size: 30,
                      color: Colors.teal,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                     numberProfile,
                      style: const TextStyle(fontSize: 20, color: Colors.teal),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 55,
                color: Colors.white,
                child:  Row(
                  children: [
                    const Icon(
                      Icons.email,
                      size: 30,
                      color: Colors.teal,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      emailProfile,
                      style: const TextStyle(fontSize: 20, color: Colors.teal),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
