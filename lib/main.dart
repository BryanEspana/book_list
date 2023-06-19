import 'package:book_list/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BookList());
}

class BookList extends StatelessWidget {
  const BookList({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Games',
      theme: ThemeData(
        primarySwatch: MaterialColor(
          0xFF000000,
          <int, Color>{
            50: Color(0xFF000000),
            100: Color(0xFF000000),
            200: Color(0xFF000000),
            300: Color(0xFF000000),
            400: Color(0xFF000000),
            500: Color(0xFF000000),
            600: Color(0xFF000000),
            700: Color(0xFF000000),
            800: Color(0xFF000000),
            900: Color(0xFF000000),
          },
        ),
      ),
      home: const BottomNavigationWidget(),
    );
  }
}


class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});


  @override
  State<StatefulWidget> createState()=> _BottomNavigationWidgetState();
  }




  class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
    int _selectedIndex = 0;
    static const List<Widget> _sections = [
      HomeScreen(),
      Text("Bibilioteca")];

    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar:  AppBar( title: Center(child: Text("Games")  ,),),
        bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.local_library), label: "Biblioteca"),
         ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
          body: _sections[_selectedIndex]

      );
  }


  void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
  }
}
