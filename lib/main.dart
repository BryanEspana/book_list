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
      title: 'BookList',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
        appBar:  AppBar( title: Center(child: Text("BookList")  ,),),
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
