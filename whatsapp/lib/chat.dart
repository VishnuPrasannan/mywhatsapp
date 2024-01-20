import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Userdata {
  final String name;
  final String image;
  final String message;
  final String time;

  Userdata(
      {required this.name,
      required this.image,
      required this.message,
      required this.time});
}

class Chat extends StatelessWidget {
  List<Userdata> userInfo = [
    Userdata(
        name: 'Alfred 😍',
        image: 'images/Alfred.jpeg',
        message: 'hey bro ',
        time: '10:45'),
    Userdata(
        name: 'Ambrose ❤️‍🩹',
        image: 'images/Ambros.jpeg',
        message: 'where are you?',
        time: '12:00'),
    Userdata(
        name: 'Antony',
        image: 'images/Antony.jpeg',
        message: 'bru...',
        time: '3:25'),
    Userdata(
        name: 'Messi 💕',
        image: 'images/Messi.jpeg',
        message: 'yo! played good today',
        time: '4:25'),
    Userdata(
        name: 'Jhony Depp',
        image: 'images/Jhony depp.jpeg',
        message: 'how do you do?',
        time: '3:45'),
    Userdata(
        name: 'Mamootty',
        image: 'images/Mamootty.jpeg',
        message: 'I will call you back 🖤',
        time: '2:03'),
    Userdata(
        name: 'Marshmello',
        image: 'images/Marshmello.jpeg',
        message: 'where is your next party?',
        time: '5:30'),
    Userdata(
        name: 'Mohanlal',
        image: 'images/Mohanlal.jpeg',
        message: 'I will meet you next week ',
        time: '4:13'),
    Userdata(
        name: 'Rolex',
        image: 'images/Rolex.jpeg',
        message: 'hey bru! when is your next deal ',
        time: '9:05'),
    Userdata(
        name: 'Ronaldo',
        image: 'images/Ronaldo3.jpeg',
        message: 'Awwww... ',
        time: '2:00'),
    Userdata(
        name: 'Sajanka',
        image: 'images/Sajanka.jpeg',
        message: 'Yo! BRO',
        time: '1:00'),
    Userdata(
        name: 'Anu',
        image: 'images/anu.jpg',
        message: 'I am great fan of you ',
        time: '8:30'),
    Userdata(
        name: 'Sushanth',
        image: 'images/Sushanth.jpeg',
        message: 'How are you bru... ',
        time: '5:00'),
    Userdata(
        name: 'Virat Kohli',
        image: 'images/Virat Kohli.jpeg',
        message: 'You are playing today? ',
        time: '6:03'),
    Userdata(
        name: 'Williams',
        image: 'images/Williams.jpeg',
        message: 'how is the day today',
        time: '7:15'),
    Userdata(
        name: 'Zayan',
        image: 'images/Zayan.jpeg',
        message: 'I like your music',
        time: '12:00'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: userInfo.length,
          itemBuilder: (BuildContext context, index) {
            return ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage(userInfo[index].image)),
              title: Text(
                userInfo[index].name,
                style: GoogleFonts.ibmPlexSerif(
                    color: const Color.fromARGB(255, 0, 0, 0)),
              ),
              subtitle: Text(userInfo[index].message,
                  style:
                      const TextStyle(color: Color.fromARGB(132, 25, 24, 24))),
              trailing: Text(userInfo[index].time,
                  style: const TextStyle(color: Color.fromARGB(255, 133, 129, 129))),
            );
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.chat),
          foregroundColor: Colors.black,
          // shape: (ShapeBorder),
          backgroundColor: const Color.fromARGB(195, 16, 111, 29)),
    );


  }
}
