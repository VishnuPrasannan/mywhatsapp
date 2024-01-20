import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/calls_headersection.dart';

class Calls {
  String image;
  String name;
  String date;
  IconData icon;

  Calls(
      {required this.image,
      required this.name,
      required this.date,
      required this.icon});
}

class Call extends StatelessWidget {
  List<Calls> calldetails = [
    Calls(
        image: 'images/Sajanka.jpeg',
        name: 'Sajanka',
        date: 'November 29, 9:00pm',
        icon: Icons.call),
    Calls(
        image: 'images/Rolex.jpeg',
        name: 'Rolex',
        date: 'September 04, 12:45',
        icon: Icons.video_call),
    Calls(
        image: 'images/Messi.jpeg',
        name: 'Messi',
        date: 'January 05,10:00',
        icon: Icons.video_call),
    Calls(
        image: 'images/Mamootty.jpeg',
        name: 'Mamooty',
        date: 'April 30,8:30',
        icon: Icons.call),
    Calls(
        image: 'images/Mohanlal.jpeg',
        name: 'Mohanlal',
        date: "Today,3:09",
        icon: Icons.call),
    Calls(
        image: 'images/Jhony depp.jpeg',
        name: 'Jony depp',
        date: 'January 05,10:00',
        icon: Icons.video_call),
    Calls(
        image: 'images/Williams.jpeg',
        name: 'Williams',
        date: 'September 04, 12:45',
        icon: Icons.video_call),
    Calls(
        image: 'images/Ronaldo3.jpeg',
        name: 'Ronaldo',
        date: 'April 30,8:30',
        icon: Icons.call),
    Calls(
        image: 'image/Sushanth.jpeg',
        name: 'Sushanth',
        date: 'November 29, 9:00pm',
        icon: Icons.call),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CallSection(),
            const Padding(
              padding: EdgeInsets.only(right: 300),
              child: Text('Recent'),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: calldetails.length,
              itemBuilder: (BuildContext context, index) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(calldetails[index].image),
                  ),
                  title: Text(calldetails[index].name),
                  subtitle: Text(calldetails[index].date),
                  trailing: Icon(calldetails[index].icon),
                  iconColor: const Color.fromARGB(255, 11, 111, 61)),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.call),
          foregroundColor: Colors.black,
          backgroundColor: const Color.fromARGB(195, 65, 173, 80)),
    );
  }
}
