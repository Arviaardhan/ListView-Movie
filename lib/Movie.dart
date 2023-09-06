import 'dart:ffi';

class Movie{
  late String gambar;
  late String judul;
  late String rilis;
  late String durasi;
  late String genre;
  late double rating;

  Movie(String gambar, String judul, String rilis, String durasi, String genre, double rating){
    this.gambar = gambar;
    this.judul = judul;
    this.rilis = rilis;
    this.durasi = durasi;
    this.genre = genre;
    this.rating = rating;
  }
}