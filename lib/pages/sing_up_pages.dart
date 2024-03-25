import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rich/pages/profile_page.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({super.key});

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  TextEditingController? name = TextEditingController();
  TextEditingController? surname = TextEditingController();
  TextEditingController? number = TextEditingController();
  TextEditingController? email  = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create you Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: name,
                decoration: const InputDecoration(
                    hintText: 'Text',
                    label: Text('name'),
                    border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: surname,
                decoration: const InputDecoration(
                    hintText: 'Text',
                    label: Text('surname'),
                    border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: number,
                decoration: const InputDecoration(
                    hintText: 'Text',
                    label: Text('number'),
                    border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: email,
                decoration: const InputDecoration(
                    hintText: 'Text',
                    label: Text('email'),
                    border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
                width: 150,
                height: 55,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage(
                                    nameProfile: name!.text,
                                    surnameProfile: surname!.text,
                                    numberProfile: number!.text,
                                    emailProfile: email!.text,
                                  )));
                    },
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    child: const Text(
                      'next',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w700),
                    )))
          ],
        ),
      ),
    );
  }
}
