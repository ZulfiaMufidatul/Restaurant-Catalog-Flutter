// ignore_for_file: unnecessary_import

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_catalogue/main.dart';
import 'package:restaurant_catalogue/view/restaurant_list_screen.dart';

class Home extends StatelessWidget {
  const Home ({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(
          color: Color.fromARGB(255, 127, 153, 213),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.only(bottom: 50),
           child: Text('Restaurant Catalog', style: TextStyle(fontSize: 30, color: Colors.black),),),
           Padding(padding: EdgeInsets.all(15),
           child: ClipRRect(borderRadius: BorderRadius.circular(15),
            child: Image(image: AssetImage('assets/image/gambar.jpg'))          
           ),
           ),
          Padding(padding: EdgeInsets.all(15),
            child : Text("Restaurant catalog adalah sebuah platform yang menyediakan informasi mengenai tempat-tempat restaurant diwilayah Surakarta untuk memudahkan pengguna dalam mencari referensi makanan dan juga tempat nongkrong yang berkualitas dan juga happening lengkap dan juga mudah digunakan. ", textAlign: TextAlign.justify,)
          ),
          SizedBox(
            width: 300,
            height: 100,
            child: Padding(padding: EdgeInsets.only(top: 50),
            child: ClipRRect(borderRadius: BorderRadius.circular(5),
              child: ElevatedButton(onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BottomNav()),
                );
              }, child: Text('Lanjutkan', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),),
            ),
          )
          ),
          
        ],
      ),)),
    
      
    );
  }
}