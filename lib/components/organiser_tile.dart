import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OrganiserTile extends StatelessWidget {

  final String imageUrl;
  final String name;
  final String designation;
  final String phoneNumber;

  OrganiserTile({this.imageUrl,this.name,this.designation,this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(name),
      subtitle: Text(designation),
      trailing: FlatButton(child:Icon(
          Icons.call
      ), onPressed: () {
        launch("tel: $phoneNumber");
      },),
    );
  }
}