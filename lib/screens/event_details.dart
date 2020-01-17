import 'package:flutter/material.dart';
import '../components/organiser_tile.dart';
import '../constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class EventDetails extends StatelessWidget {

  final int eventIndex;

  EventDetails(this.eventIndex);

  @override
  Widget build(BuildContext context) {
    String eventName=sportsList[eventIndex].name;

    return Container(
      height: MediaQuery.of(context).size.height*0.70,// Fixing Bottom Sheet to 70% of screen height
      width: double.infinity,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,//removes back button from appBar
            title: Center(child: Text(eventName)),
            bottom: TabBar(
              labelColor: Colors.black87,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text: "Fixtures"),
                Tab(text: "Result"),
                Tab(text: "Organisers"),
              ],
            ),),
          body: TabBarView(
            children: [
              Text('Fixture pdf here'),
              Text('Result pdf here'),
              OrganisersList(eventName),
            ],
          ),
        ),
      ),
    );
  }
}


class OrganisersList extends StatefulWidget {
  final String eventName;
  OrganisersList(this.eventName);

  @override
  _OrganisersListState createState() => _OrganisersListState();
}

class _OrganisersListState extends State<OrganisersList> {

  bool loadOrganisersList;

  List<OrganiserTile> organisersList = [];

  @override
  void initState() {
    // TODO: implement initState
    loadOrganisersList=true;
    fetchOrganisersData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: loadOrganisersList ,
        child: Container(
          child: ListView.builder(
            itemCount: organisersList.length,
            itemBuilder: (BuildContext context,int index){
              return organisersList[index];
            },
          ),
        ),
      ),
    );
  }

  void fetchOrganisersData() async {
    final _firestore= Firestore.instance;
    var sport = _firestore.collection('organisers').document(widget.eventName);
    var doc = await sport.get();
    int numberOfOrganisers = doc.data['numberOfOrganisers'];
    print(numberOfOrganisers);
    for(int i=1;i<=numberOfOrganisers;i++)
    {
      var organisers = await sport.collection('organiser$i').getDocuments();
      String name,phone,imageUrl,designation;
      for(var organiser in organisers.documents)
      {
        name= organiser.data['name']??'Name Unknown';
        phone=organiser.data['phoneNumber']??'Phone Unknown';
        imageUrl=organiser.data['imageUrl']??'Image Unknown';
        designation=organiser.data['designation']??'Designation Unknown';
      }
      if(name!=null)
        organisersList.add(OrganiserTile(name:name,imageUrl: imageUrl,designation: designation,phoneNumber: phone,));
    }
    setState(() {
      loadOrganisersList=false;
    });
  }
}

