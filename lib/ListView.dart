import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),

      body: new ListView(
        children: <Widget>[
          ListMovie(gambar: 'assets/cars.jpg', judul: 'Cars',),
          ListMovie(gambar: 'assets/cars.jpg', judul: 'Cars',),
          ListMovie(gambar: 'assets/cars.jpg', judul: 'Cars',),
          ListMovie(gambar: 'assets/cars.jpg', judul: 'Cars',),
          ListMovie(gambar: 'assets/cars.jpg', judul: 'Cars',),
          ListMovie(gambar: 'assets/cars.jpg', judul: 'Cars',),
          ListMovie(gambar: 'assets/cars.jpg', judul: 'Cars',),
          ListMovie(gambar: 'assets/cars.jpg', judul: 'Cars',),
          ListMovie(gambar: 'assets/cars.jpg', judul: 'Cars',),
          ListMovie(gambar: 'assets/cars.jpg', judul: 'Cars',),
          ListMovie(gambar: 'assets/cars.jpg', judul: 'Cars',),
          ListMovie(gambar: 'assets/cars.jpg', judul: 'Cars',),
        ],
      ),
    );
  }
}

class ListMovie extends StatelessWidget {

  ListMovie({required this.gambar, required this.judul});

  final String gambar;
  final String judul;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(7),
      child: Center(
        child: Card(
          elevation: 2,
          child: Row(
            children: <Widget>[
              Image(image: AssetImage(gambar), width: 100),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(judul, style: TextStyle(fontSize: 20)),
                  Text('Ini adalah list film'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

