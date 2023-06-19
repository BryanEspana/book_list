import 'package:flutter/material.dart';
import '../model/book.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);

  final List<Games> _Games = const[
    Games(
        1,
        "Red Dead Redemption 2",
        "Rockstar Games",
        "Ambientado en el viejo oeste, sumergete en la vida de Arthur Morgan como un forajido.",
        "assets/images/rdr2.jpg"
    ),
    Games(
        2,
        "Horizon Forbidden West",
        "Gerilla Games",
        "La secuela de Horizon Zero Down, acompaña a Aloy en una nueva aventura atravezando islas con nuevos personajes y nuevas criaturas",
        "assets/images/horizon2.jpg"
    )
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: ListView.builder(
          itemCount: _Games.length +2,
          itemBuilder: (context, index){
            if(index == 0){
              return const HeaderWidget();
            }
            if(index == 1){
              return const ListItemHeader();
            }
        return ListItemGames(_Games[index -2]);
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
        child: Image.asset("assets/images/fondo.jpg"));
  }
  
}


class ListItemHeader extends StatelessWidget{
  const ListItemHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 20, bottom: 10, left: 5 ),
        child: const Text("Ultimos Juegos", style: TextStyle(fontSize: 20),));
  }

}

class ListItemGames extends StatelessWidget{

  final Games _Games;
  const ListItemGames(this._Games, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 190,
        child: InkWell(
          borderRadius: BorderRadius.circular(4),
          onTap: (){
            _openGamesDetails(context, _Games);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Image.asset(_Games.coverUrl),
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(_Games.title,
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontSize: 18),
                    ),
                    const SizedBox(height: 5,),
                    Text(_Games.author,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2!),
                       const SizedBox(height: 15,),
                      Text(_Games.description, maxLines: 4,
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

  void _openGamesDetails(BuildContext context, Games games) {
    // TODO navega a la pantalla del libro
  }

}

