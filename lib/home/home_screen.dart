import 'package:flutter/material.dart';
import '../model/book.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);

  final List<Book> _books = const[
    Book(
        1,
        "Ready Player One",
        "Ernest Cline.",
        "La novela cibernetica que ha inspirado la gran producción de Warner Bros, a medio camino entre Avatar y Matrix. Estamos en el año 2044 y, como el resto de la humanidad, Wade Watts  prefiere mil veces el videojuego de OASIS al cada vez más sombrío mundo real. ",
        "assets/images/readyPlayerOne.jpg"
    ),
    Book(
        2,
        "Ready Player Two",
        "Ernest Cline",
        "La secuela deReady Player One, el best seller mundial que Steven Spielberg adaptó al cine. Esta historia trata sobre ti y sobre la influencia que han tenido los videojuegos en tu vida - Trevor Noah",
        "assets/images/readyPlayerTWo.jpg"
    )
  ];


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _books.length,
        itemBuilder: (context, index){
      return Row(
        children: [
          Image.asset(_books[index].coverUrl),
          Text(_books[index].title)
        ],
      );
    });
  }

}
