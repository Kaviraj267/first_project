
import 'package:firebase_core/firebase_core.dart';
import 'package:first_project/home.dart';
import 'package:first_project/register.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyB11Hu3VOGLaegRcHmdLcEa91vUkBUUNCc",
      appId:"1:1014308296554:android:90ddeda7d7ce868edeb713" ,
      messagingSenderId:"auth-7310c.appspot.com" ,
      projectId: "auth-7310c" ,
    ),
  );
  runApp(const MaterialApp(
    home: Musk(),
    debugShowCheckedModeBanner: false,
  ));
}

class Musk extends StatelessWidget {
  const Musk({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset('assets/photos/first_img.jpg', height: 300),
          const SizedBox(
            height: 20,
          ),
          const Text("Let's begin",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Never a better time than now to start",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const register()),
                );
              },
              style: ButtonStyle(
                foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                backgroundColor:
                    WidgetStateProperty.all<Color>(Colors.orangeAccent),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                )),
              ),
              child: const Text(
                'Log In',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Home()),
              );
            },
            child: const Text(
              'skip',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.blue,
              ),
            ),
          ),
        ]),
      ),
    ));
  }
}
