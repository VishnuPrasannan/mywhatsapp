import 'package:flutter/material.dart';

class CallSection extends StatelessWidget {
  const CallSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(
        child: Icon(
          Icons.link,
          color: Colors.white,
        ),
        backgroundColor: Colors.green,
      ),
      title: Text('Create call link'),
      subtitle: Text('Share a link for your Whatsapp call '),
    );
  }
}
