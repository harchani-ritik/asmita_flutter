import 'package:asmita_flutter/components/column_template.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


final _firestore = Firestore.instance;
const defaultLogoUrl = 'https://images.squarespace-cdn.com/content/v1/597e55bccd0f6846bf0e5c90/1562712471824-SFQ81GK2A6NYQX9I4G1E/ke17ZwdGBToddI8pDm48kFTZ-tjuHBYtvC0Q_QdEyZNZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpxq3EEcgkMIH_1gMa4t0c22rI2CqF6WaofVJJZY9_47K24lxB8QOKLr-A4Gh6QbkGc/sponsorlogo.jpg?format=1000w';
class SponserScreen extends StatefulWidget {
  @override
  _SponserScreenState createState() => _SponserScreenState();
}

class _SponserScreenState extends State<SponserScreen> {
  List<SponserTile> sponserList = [
  ];

  @override
  void initState() {
    // TODO: implement initState
    fetchSponsers();
  }

  void fetchSponsers() async{

    await for(var snapshot in _firestore.collection('sponsers').orderBy('priority', descending: false).snapshots())
    {
      List<SponserTile> newUpdatesList = [];
      for(var message in snapshot.documents)
      {
        String logoUrl,name;
        name=message.data['name']??'Sponser Name Unavailable';
        logoUrl=message.data['logoUrl']??defaultLogoUrl;
        newUpdatesList.add(SponserTile(image: logoUrl,name: name,));
      }
      setState(() {
        sponserList = newUpdatesList;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ColumnTemplate(
          columnTitle: 'Sponsers',
          childWidget: Expanded(
            child: Container(
              height: 500,
              child: ListView.builder(
                itemCount: sponserList.length,
                itemBuilder: (BuildContext context,int index){
                  return sponserList[index];
                },
              ),
            ),
          ),
        ));
  }
}

class SponserTile extends StatelessWidget {
  final String name;
  final String image;

  SponserTile({this.name, this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 24),
      child: Card(
        elevation: 4,
        child: Container(
          height: 150,
          width: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(flex:3,child: Image.network(image)),
              Flexible(flex:1,child: Text(name,style: TextStyle(fontSize: 18),),),
            ],
          ),
        ),
      ),
    );
  }
}

