import 'package:flutter/material.dart';
import 'package:listview_movie/Movie.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<Movie>? movie = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Movie cars = new Movie('assets/cars.jpg', 'Cars', '2006', '1 jam 57 menit', 'Adventure, Animation', '8.2 / 10');
    Movie up = new Movie('assets/up.jpg', 'Up', '2009', '1 jam 36 menit', 'Adventure, Animation', '8.3 / 10');
    Movie ratatouille = new Movie('assets/ratatouille.jpg', 'Ratatouille', '2007', '1 jam 51 menit', 'Adventure, Animation, Comedy', '8.1 / 10');
    Movie monster = new Movie('assets/monster.jpg', 'Monster, Inc', '2001', '94 menit', 'Adventure, Animation, Comedy', '8.0 / 10');
    Movie dragon = new Movie('assets/httyd.jpeg', 'How To Train Your Dragon', '	2010', '1 jam 38 menit', 'Action, Adventure, Animation', '8.1 / 10');
    Movie brave = new Movie('assets/brave.jpg', 'Brave', '2012', '1 jam 33 menit', 'Fantasy, Adventure, Animation', '8.5 / 10');
    Movie incredibles = new Movie('assets/incredible.jpg', 'The Incredibles', '	2004', '1 jam 55 menit', 'Comedy, Adventure, Animation', '7.9 / 10');
    Movie bolt = new Movie('assets/bolt.jpg', 'Bolt', '2008', '1 jam 36 menit', 'Action, Sci-Fi, Adventure, Animation', '7.8 / 10');
    Movie nemo = new Movie('assets/nemo.jpg', 'Finding Nemo', '2003', '1 jam 40 menit', 'Adventure, Comedy, Animation', '8.2 / 10');
    Movie insideOut = new Movie('assets/insideout.jpg', 'Inside Out', '2015', '1 jam 35 menit', 'Family, Comedy, Animation', '8.1 / 10');
    Movie astroBoy = new Movie('assets/astroboy.jpg', 'Astro Boy', '2009', '1 jam 34 menit', 'Family, Sci-fi, Animation', '7.7 / 10');
    Movie tangled = new Movie('assets/tangled.jpg', 'Tangled', '2010', '1 jam 40 menit', 'Family, Adventure, Animation', '7.9 / 10');
    movie?.add(cars);
    movie?.add(up);
    movie?.add(ratatouille);
    movie?.add(monster);
    movie?.add(dragon);
    movie?.add(brave);
    movie?.add(incredibles);
    movie?.add(bolt);
    movie?.add(nemo);
    movie?.add(insideOut);
    movie?.add(astroBoy);
    movie?.add(tangled);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Movie')),
      body: Center(
        child: Container(
          child: ListView.builder(
            padding: EdgeInsets.only(),
            itemCount: movie?.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.blue, width: 2),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.only(top: 19, bottom: 19, left: 30),
                    leading: Container(
                      width: 90,
                      height: 210,
                      child: Image.asset(
                        movie![index].gambar,
                        fit: BoxFit.cover,// Mengatur agar gambar sesuai dengan lebar dan tinggi yang diatur
                      ),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5,),
                        Text(
                          movie![index].judul,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text('Rilis : ' + movie![index].rilis,),
                        Text('Durasi : ' + movie![index].durasi),
                        Text('Genre : ' + movie![index].genre),
                        Text('Rating : ' + movie![index].rating),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
