import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:appcrudfirestore/screens/lojas.dart';
//import 'package:appchocolateria/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyCOg_Cc7koxwiajfuZf6KDg0a8DPYRFrOA",
        authDomain: "bdfirestore-2d6e3.firebaseapp.com",
        projectId: "bdfirestore-2d6e3",
        storageBucket: "bdfirestore-2d6e3.appspot.com",
        messagingSenderId: "1010603729352",
        appId: "1:1010603729352:web:e3071c2546237b704f60fd"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo Menu Drawer - Hamburguer',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const UserAccountsDrawerHeader(
                accountEmail: Text("anastyles@gmail.com"),
                accountName: Text("Ana Styles"),
                currentAccountPicture: CircleAvatar(
                  child: Text("AS"),
                ),
              ),
              ListTile(
                leading: Icon(Icons.login),
                title: Text("Minha Área"),

                onTap: () { 

                /*  Navigator.push( 

                    context, 

                    MaterialPageRoute( 

                      builder: (context) => Login(), 

                    ), 

                  ); */

                }, 
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text("Lojas"),
                onTap: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder:(context) => Lojas()),
                  );

                  //Navegar para outra página
                },
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("Contato"),
                onTap: () {
                  Navigator.pop(context);

                  //Navegar para outra página
                },
              ),
              ListTile(
                leading: Icon(Icons.person_pin),
                title: Text("Perfil"),
                onTap: () {
                  Navigator.pop(context);

                  //Navegar para outra página
                },
              ),
            ],
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://foodiesfamily.com/wp-content/uploads/2022/01/Aura-Chocolate-1024x683.jpg.webp'))),
        ));
  }
}
