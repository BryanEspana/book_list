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
    return Container(
      margin: const EdgeInsets.all(16),
      child: ListView.builder(
          itemCount: _books.length +2,
          itemBuilder: (context, index){
            if(index == 0){
              return const HeaderWidget();
            }
            if(index == 1){
              return const ListItemHeader();
            }
        return ListItemBook(_books[index -2]);
      }),
    );
  }

}
class HeaderWidget extends StatelessWidget{
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset("assets/images/libros.png"));
  }
  
}


class ListItemHeader extends StatelessWidget{
  const ListItemHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 20, bottom: 10, left: 5 ),
        child: const Text("Ultimos libros", style: TextStyle(fontSize: 20),));
  }

}

class ListItemBook extends StatelessWidget{

  final Book _book;
  const ListItemBook(this._book, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 190,
        child: InkWell(
          borderRadius: BorderRadius.circular(4),
          onTap: (){
            _openBookDetails(context, _book);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Image.asset(_book.coverUrl),
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(_book.title,
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontSize: 18),
                    ),
                    const SizedBox(height: 5,),
                    Text(_book.author,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2!),
                       const SizedBox(height: 15,),
                      Text(_book.description, maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyText2
                        ,),
                  ],),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _openBookDetails(BuildContext context, Book book) {
    // TODO navega a la pantalla del libro
  }

}

