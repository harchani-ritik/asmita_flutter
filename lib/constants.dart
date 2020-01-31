//any constant declared in the project will have to be refactored here
import 'package:flutter/material.dart';
import 'components/sport_tile.dart';
import 'components/organiser_tile.dart';

TextStyle kOptionStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

List<OrganiserTile> teamMembersList = [
  OrganiserTile(
    imageUrl: 'https://scontent.fknu1-1.fna.fbcdn.net/v/t1.0-9/s960x960/42664108_2190331037847801_6869201411381395456_o.jpg?_nc_cat=105&_nc_ohc=jBuSzWJ5VaQAQkMe5mbyQBLKScML7rMZiJXmxEtK4zccBpLFeBtnUw1UQ&_nc_ht=scontent.fknu1-1.fna&oh=a3938072a30c969e0ce8fdf90a15fe2f&oe=5EAAA309',
    name: 'Tanmay Malu',
    designation: 'Festival Coordinator',),
  OrganiserTile(
    imageUrl: 'https://scontent.fdel11-1.fna.fbcdn.net/v/t1.0-9/64403759_2371311852961553_2978243143247331328_n.jpg?_nc_cat=111&_nc_ohc=ix-eRYC3NMQAQnWYkp3hxd-Qq9yfu65xr1teT6aGHTrmX7h0_OptWrn_Q&_nc_ht=scontent.fdel11-1.fna&oh=8a48184c7df20aa07c56f7c2eaae4c72&oe=5EDC040D',
    name: 'Arnav Agarwal',
    designation: 'Campus Coordinator',),
	OrganiserTile(
		imageUrl: 'https://scontent.fknu1-1.fna.fbcdn.net/v/t1.0-9/s960x960/42664108_2190331037847801_6869201411381395456_o.jpg?_nc_cat=105&_nc_ohc=jBuSzWJ5VaQAQkMe5mbyQBLKScML7rMZiJXmxEtK4zccBpLFeBtnUw1UQ&_nc_ht=scontent.fknu1-1.fna&oh=a3938072a30c969e0ce8fdf90a15fe2f&oe=5EAAA309',
		name: 'Arashpreet Singh',
		designation: 'Festival Coordinator',),
	OrganiserTile(
		imageUrl: 'https://scontent.fdel11-1.fna.fbcdn.net/v/t1.0-9/s960x960/57457069_2458693550822117_7173141304728092672_o.jpg?_nc_cat=106&_nc_ohc=IoXYpz1dDZAAQlUpVn2rVNfeCqpGw8oMTsCmuI1CBed10NaGDGcSY5YuQ&_nc_ht=scontent.fdel11-1.fna&_nc_tp=1&oh=fb0a1fb88507269f6f73dd369fd51110&oe=5ED9A178',
		name: 'Prasoon Maheshwari',
		designation: 'Public Relations',),

	OrganiserTile(
		imageUrl: 'https://scontent.fdel11-1.fna.fbcdn.net/v/t1.0-9/s960x960/54420958_2856093917799418_8804239041865187328_o.jpg?_nc_cat=102&_nc_ohc=joR4b0sXy_0AQnJSDekzxxMm02gAHWp9DaR8K6Qps4T-s08NWkLptcPAw&_nc_ht=scontent.fdel11-1.fna&_nc_tp=1&oh=85043049860ffd6b358f1ef1ad8a07a8&oe=5EAB0EEE',
		name: 'Animesh Jha',
		designation: 'Sponsorship & Marketing',),

	OrganiserTile(
		imageUrl: 'https://scontent.fdel11-1.fna.fbcdn.net/v/t1.0-9/49601302_1996374853788799_8380964671905071104_n.jpg?_nc_cat=100&_nc_ohc=53_-0RBXMcMAQk6qUDhEFG17CGnvHb2ZLh8Y-6qRqkFBgatMcc-VXQIbQ&_nc_ht=scontent.fdel11-1.fna&oh=8e2f24a52f7c277d8b4e9a25bb5d35d8&oe=5EAFCA47',
		name: 'Muskan Chugh',
		designation: 'Media & Publicity',),
	OrganiserTile(
		imageUrl: 'https://scontent.fdel11-1.fna.fbcdn.net/v/t1.0-9/22450030_123336201690788_8605888469393121471_n.jpg?_nc_cat=107&_nc_ohc=yqqfsQ0tGrsAQm6AuVUXSHRv2z1tYe8rse_Y08cKgEEyx7APK66Gpb4qw&_nc_ht=scontent.fdel11-1.fna&oh=63f420ce83006320bdf3df2dca28e68f&oe=5E9FDE6C',
		name: 'Jasmeet Kaur',
		designation: 'Media & Publicity',),
	OrganiserTile(
		imageUrl: 'https://scontent.fdel11-1.fna.fbcdn.net/v/t1.0-1/c0.9.720.720a/22528229_1906815842968339_7291890708459024337_n.jpg?_nc_cat=101&_nc_ohc=ePcXFgCvaYQAQkTwzpveL-VeufPWqdX1o4cEk6noUz47u-d7ZBd-CE3rg&_nc_ht=scontent.fdel11-1.fna&_nc_tp=1&oh=4644230253aa0e8810479cd336a0d7b0&oe=5E9C2F65',
		name: 'Mohammed Amir',
		designation: 'Hospitality & Travels',),
	OrganiserTile(
		imageUrl: 'https://scontent.fdel11-1.fna.fbcdn.net/v/t1.0-9/s960x960/69431250_2605920909458838_6696395584070221824_o.jpg?_nc_cat=111&_nc_ohc=Q-JgktOgLcUAQlnCNnwS1RqBUdd8jLW8g6IE2UXVcRcsEJK7ioNK7r5Tw&_nc_ht=scontent.fdel11-1.fna&_nc_tp=1&oh=d4834222584a634bbfb4381108b15df7&oe=5ED9C43E',
		name: 'Divyansh Tripathi',
		designation: 'Registration',),
	OrganiserTile(
		imageUrl: 'https://scontent.fdel11-1.fna.fbcdn.net/v/t1.0-0/p640x640/69894531_1400346420347074_552252336643244032_o.jpg?_nc_cat=101&_nc_ohc=IufFkkh89ogAQmxIIT10y-5QerKmrbfTLjhohOtfdzGJzdK1MznY0Q4sA&_nc_ht=scontent.fdel11-1.fna&_nc_tp=1&oh=f48bd059b8d5e85dc7bcff368041d0c3&oe=5EA3EEB9',
		name: 'A. Lithika',
		designation: 'Hospitality & Travels',),
	OrganiserTile(
		imageUrl: 'https://scontent.fdel11-1.fna.fbcdn.net/v/t1.0-9/20882281_1614556035325897_9046498397847425515_n.jpg?_nc_cat=106&_nc_ohc=PGyopsyWXvcAQlegQFCR2hrqpwKG-Jum9VE2NCDRtZk-Lf7mBmMzLBM7g&_nc_ht=scontent.fdel11-1.fna&oh=d8e1e31cb1c163f6cd9093d9bd6e6b7b&oe=5EDBB50E',
		name: 'Sidharth Pratap',
		designation: 'Hospitality & Travels',),
	OrganiserTile(
		imageUrl: 'https://scontent.fdel11-1.fna.fbcdn.net/v/t1.0-9/p960x960/66094392_2330332423892462_368378580473741312_o.jpg?_nc_cat=106&_nc_ohc=K0WOsyVexvMAQkcjroVj_rB__b_UPyHNMZpmsz0zaY_kL7LDFFOdDM49A&_nc_ht=scontent.fdel11-1.fna&_nc_tp=1&oh=469ae54dc10ef69bfa5fe451cd856b10&oe=5EA7DC9E',
		name: 'Ayush Shukla',
		designation: 'Registration',),
	OrganiserTile(
		imageUrl: 'https://scontent.fdel11-1.fna.fbcdn.net/v/t1.0-9/13083370_972568919488230_5919254604706928609_n.jpg?_nc_cat=105&_nc_ohc=VqFZMft541MAQl-6DWGXu4FV8WxyYNXB-jYtQWUnUmBZ22t91XDC_JjMQ&_nc_ht=scontent.fdel11-1.fna&oh=45435c238dc06f8e225811640a3f08ac&oe=5E92E858',
		name: 'Ateeb Ali',
		designation: 'Creatives',),
	OrganiserTile(
		imageUrl: 'https://scontent.fdel11-1.fna.fbcdn.net/v/t1.0-9/p960x960/29187026_176241436353935_4217703553059258368_o.jpg?_nc_cat=111&_nc_ohc=W1ZPwAWO3-cAQlyy0p5QEKGPYufVflvrILbEWOoPAxHGD-xBbad0oiavQ&_nc_ht=scontent.fdel11-1.fna&_nc_tp=1&oh=77260ce3cc7347bfedc79ff336cc0a1e&oe=5E909FFE',
		name: 'Ankit Kumar',
		designation: 'Fliming',),
	OrganiserTile(
		imageUrl: 'https://scontent.fdel11-1.fna.fbcdn.net/v/t1.0-1/48411794_1208052522679298_8196784276545470464_o.jpg?_nc_cat=111&_nc_ohc=kKCyjqC7VukAQnduKdm2LfOQXN-1dDe_OftSFP9MmCrKChtD5BEbrrWTw&_nc_ht=scontent.fdel11-1.fna&oh=eab5b67ac4f68fd1e78ad9bc7049b514&oe=5E95A36D',
		name: 'Ashray Sinha',
		designation: 'Web Operations',),
	OrganiserTile(
		imageUrl: 'https://scontent.fknu1-1.fna.fbcdn.net/v/t1.0-9/s960x960/61536061_1100125006856732_2973244909416349696_o.jpg?_nc_cat=105&_nc_ohc=jmjjr0rRwvMAQn4NNdVT3mbwqsPaeY3rb9EWTSeUHVLMpsUpQxclUM3Qw&_nc_ht=scontent.fknu1-1.fna&oh=cb17901ea2359cb96c84ed38c999e16b&oe=5E750027',
		name: 'Shivansh Tiwari',
		designation: 'Head, App Operations',),
  OrganiserTile(
    imageUrl: 'https://avatars0.githubusercontent.com/u/46641571?s=460&v=4',
    name: 'Ritik Harchani',
    designation: 'App Operations',),
  OrganiserTile(
    imageUrl: 'https://avatars0.githubusercontent.com/u/45289002?s=460&v=4',
    name: 'Shreyansh Sahu',
    designation: 'App Operations',),
  OrganiserTile(
    imageUrl: 'https://scontent.fdel11-1.fna.fbcdn.net/v/t1.0-9/s960x960/52548540_384959802061303_3487370434825945088_o.jpg?_nc_cat=101&_nc_ohc=6rDKM-sVUqwAQnYgBamb_qj8tYrN1MUC_6eQKIVRQB0TtEHy10elluhSg&_nc_ht=scontent.fdel11-1.fna&_nc_tp=1&oh=7864e5a810ebf738f33762ccdf1a9854&oe=5EAE692B',
    name: 'Sunidhi Kashyap',
    designation: 'App Design',),
];

List<SportWidget> sportsList = [
  SportWidget(image: 'aquatics.png',
    name: 'Aquatics',
  ),
  SportWidget(image: 'athleticsfield.png',
    name: 'Athletics Field Events',
  ),
  SportWidget(image: 'athleticstrack.png',
    name: 'Athletics Track Events',
  ),
  SportWidget(image: 'badminton.png',
    name: 'Badminton',
  ),
  SportWidget(image: 'basketball.png',
    name: 'Basketball',
  ),
  SportWidget(image: 'carrom.png',
    name: 'Carrom',
  ),
  SportWidget(image: 'chess.png',
    name: 'Chess',
  ),
  SportWidget(image: 'cricket.png',
    name: 'Cricket',
  ),
  SportWidget(image: 'football.png',
    name: 'Football',
  ),
  SportWidget(image: 'lawntennis.png',
    name: 'Lawn Tennis',
  ),
  SportWidget(image: 'powerlifting.png',
    name: 'Power Lifting',
  ),
  SportWidget(image: 'pubg.png',
    name: 'Pubg',
  ),
  SportWidget(image: 'snooker.png',
    name: 'Snooker',
  ),
  SportWidget(image: 'squash.png',
    name: 'Squash',
  ),
  SportWidget(image: 'tabletennis.png',
    name: 'Table Tennis',
  ),
  SportWidget(image: 'volleyball.png',
    name: 'Volleyball',
  ),

];

const defaultUrl = 'https://firebasestorage.googleapis.com/v0/b/asmita-20.appspot.com/o/defaultPdf.pdf?alt=media&token=83b0489b-6468-4aea-bb6f-57c885869071';