import 'package:flutter/material.dart';
import 'package:restaurant_catalogue/model/model_profil.dart';

class DetailProfil1 extends StatefulWidget {
   final modelProfil model_profil;

  DetailProfil1({required this.model_profil});
  
  @override
  _DetailProfilScreen createState() => _DetailProfilScreen();
}

class _DetailProfilScreen extends State<DetailProfil1>{
  late bool _isFavorite;

  @override
  void initState() {
    super.initState();
    _isFavorite = false;
  }

  Color _checkBookMark() {
    if (!_isFavorite) {
      return Colors.white;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          widget.model_profil.profilName,
          style: TextStyle(fontSize: 20),
        ),
        
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: widget.model_profil.profilName,
            child: Material(
              color: Colors.black,
              child: Image.network(
                widget.model_profil.profilImage,
                height: 200,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
            child: Text(
              widget.model_profil.profilName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.person, 
                  size: 24.0,
                ),
                Padding(padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  widget.model_profil.profilNIM,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    fontSize: 18.0
                  ),
                ),)
               
             
               
                
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.email,
                  size: 24.0,
                ),
                Padding(padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  widget.model_profil.profilEmail,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    fontSize: 18.0
                  ),
                ),)
                
              ],
            ),
          ),

         
          Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
            child: Text(
              widget.model_profil.profilDescription,
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
