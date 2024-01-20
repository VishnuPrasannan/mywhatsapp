import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UpdatesHeaderSection extends StatelessWidget {
  const UpdatesHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Status",
                  style: GoogleFonts.ibmPlexSans(
                      color: Colors.black, fontSize: 20)),
              const SizedBox(width: 280),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                ),
                color: Color.fromARGB(255, 134, 133, 133),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Stack(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('images/status profile.jpg'),
                      radius: 24,
                    ),
                    Positioned(
                        bottom: 4,
                        left: 15,
                        top: 22.5,
                        child: Container(
                          width: 52,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 12, 192, 87),
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                size: 15,
                                color: Color.fromARGB(255, 255, 255, 255),
                              )),
                        )),
                  ],
                ),
              ),
              SizedBox(width: 20),
              Padding(
                padding: EdgeInsets.all(0),
                child: Text(
                  "My status",
                  style: TextStyle(
                      color: Color.fromARGB(255, 33, 32, 32), fontSize: 18),
                ),
              ),
            ],
          ),
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 50,
                ),
                child: Text(
                  "Tap to add status update",
                  style: TextStyle(color: Color.fromARGB(255, 118, 115, 115)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
