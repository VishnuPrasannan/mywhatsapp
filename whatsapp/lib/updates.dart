import 'package:flutter/material.dart';
import 'widgets/updates_header_section.dart';
import 'package:google_fonts/google_fonts.dart';

class Status {
  String image;
  String name;
  String time;

  Status({required this.image, required this.name, required this.time});
}

class Updates extends StatelessWidget {
  List<Status> statusinfo = [
    Status(
        image: 'images/Ambros.jpeg', name: 'Ambrose', time: '11 minutes ago'),
    Status(image: 'images/Messi.jpeg', name: 'Messi', time: '39 minutes ago'),
    Status(image: 'images/Zayan.jpeg', name: 'Zayan', time: '2 hours ago'),
    Status(
        image: 'images/Ambros.jpeg', name: 'Ambrose', time: '11 minutes ago'),
    Status(image: 'images/Messi.jpeg', name: 'Messi', time: '39 minutes ago'),
    Status(image: 'images/Zayan.jpeg', name: 'Zayan', time: '2 hours ago'),
    Status(
        image: 'images/Ambros.jpeg', name: 'Ambrose', time: '11 minutes ago'),
    Status(image: 'images/Messi.jpeg', name: 'Messi', time: '39 minutes ago'),
    Status(image: 'images/Zayan.jpeg', name: 'Zayan', time: '2 hours ago'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.camera_alt_outlined),
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          // shape: (ShapeBorder),
          backgroundColor: Color.fromARGB(195, 6, 93, 32)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const UpdatesHeaderSection(),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 300),
              child: Text(
                "Recent updates",
                style: TextStyle(color: Color.fromARGB(255, 118, 115, 115)),
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: statusinfo.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Color.fromARGB(255, 61, 211, 44), width: 2),
                      color: Color.fromARGB(255, 254, 254, 254),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.5),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(statusinfo[index].image),
                      ),
                    ),
                  ),
                  title: Text(statusinfo[index].name),
                  subtitle: Text(statusinfo[index].time),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
