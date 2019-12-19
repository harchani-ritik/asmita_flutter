import 'package:flutter/material.dart';

class TeamMemberTile extends StatelessWidget {

  final String imageUrl;
  final String name;
  final String designation;

  TeamMemberTile({this.imageUrl,this.name,this.designation});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(name),
      subtitle: Text(designation),
      trailing: Icon(
          Icons.call
      ),
    );
  }
}