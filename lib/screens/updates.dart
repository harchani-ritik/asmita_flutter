import 'package:asmita_flutter/components/column_template.dart';
import 'package:flutter/material.dart';
import '../components/update_card.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final _firestore = Firestore.instance;

class UpdatesScreen extends StatefulWidget {

  @override
  _UpdatesScreenState createState() => _UpdatesScreenState();
}

class _UpdatesScreenState extends State<UpdatesScreen> {
  List<UpdateCard> updatesList = [];

  @override
  void initState() {
    // TODO: implement initState
    fetchUpdates();
  }

  void fetchUpdates() async{
    //await for(var snapshot in _firestore.collection('updates').orderBy('createdAt', descending: true).snapshots())
    await for(var snapshot in _firestore.collection('updates').snapshots())
    {
      List<UpdateCard> newUpdatesList = [];
      for(var message in snapshot.documents)
      {
        String msg,event,date;
        msg = message.data['message']??'Message Text Unavailable';
        event=message.data['event']??'Event Unavailable';
        date=message.data['date']??'Date Not Available';
        newUpdatesList.add(UpdateCard(event: event,date: date,message: msg,));
      }
      setState(() {
        updatesList = newUpdatesList;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    print(Timestamp.now().toString());
    print('length is ${updatesList.length}');
    return SafeArea(
      child: ColumnTemplate(
        columnTitle: 'Updates',
        childWidget: Expanded(
          child: Container(
            child: ListView.builder(
            itemCount: updatesList.length,
            itemBuilder: (BuildContext context,int index){
      return updatesList[index];
    },
      ),
          ),
        ),
    ));
  }
}
