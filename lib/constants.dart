//any constant declared in the project will have to be refactored here
import 'package:flutter/material.dart';
import 'components/sport_tile.dart';
import 'components/team_member_tile.dart';

TextStyle kOptionStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

List<TeamMemberTile> developersList = [
  TeamMemberTile(
    imageUrl: 'https://scontent.fknu1-1.fna.fbcdn.net/v/t1.0-9/s960x960/61536061_1100125006856732_2973244909416349696_o.jpg?_nc_cat=105&_nc_ohc=jmjjr0rRwvMAQn4NNdVT3mbwqsPaeY3rb9EWTSeUHVLMpsUpQxclUM3Qw&_nc_ht=scontent.fknu1-1.fna&oh=cb17901ea2359cb96c84ed38c999e16b&oe=5E750027',
    name: 'Shivansh Tiwari',
    designation: 'HEAD, App Operations',),
  TeamMemberTile(
    imageUrl: 'https://avatars0.githubusercontent.com/u/46641571?s=460&v=4',
    name: 'Ritik Harchani',
    designation: 'App Developer',),
  TeamMemberTile(
    imageUrl: 'https://scontent.fknu1-1.fna.fbcdn.net/v/t1.0-9/s960x960/43610572_1631785623587818_8233006128049422336_o.jpg?_nc_cat=100&_nc_ohc=7hAxK8cN0M8AQlUeY3Ma3oWuszUG-izUg92_7IiuMwVKoE8urhLPOoMnw&_nc_ht=scontent.fknu1-1.fna&oh=53a6ac9d152705ffe49ef2b261d294c2&oe=5EA92F25',
    name: 'Shreyansh Sahu',
    designation: 'App Developer',),
];

List<TeamMemberTile> teamMembersList = [
  TeamMemberTile(
    imageUrl: 'https://scontent.fknu1-1.fna.fbcdn.net/v/t1.0-9/s960x960/42664108_2190331037847801_6869201411381395456_o.jpg?_nc_cat=105&_nc_ohc=jBuSzWJ5VaQAQkMe5mbyQBLKScML7rMZiJXmxEtK4zccBpLFeBtnUw1UQ&_nc_ht=scontent.fknu1-1.fna&oh=a3938072a30c969e0ce8fdf90a15fe2f&oe=5EAAA309',
    name: 'Tanmay Malu',
    designation: 'Festival Coordinator',),
  TeamMemberTile(
    imageUrl: 'https://scontent.fknu1-1.fna.fbcdn.net/v/t1.0-9/64403759_2371311852961553_2978243143247331328_n.jpg?_nc_cat=111&_nc_ohc=zztHVZJQBNwAQnuJ3TrkdERfLJnTPPP5CSA7PmzPit5K6cgQtXTt8vgng&_nc_ht=scontent.fknu1-1.fna&oh=4f05859f48b7e6a73b5f914d6747ec4a&oe=5EB4770D',
    name: 'Arnav Agarwal',
    designation: 'Campus Coordinator',),
	TeamMemberTile(
		imageUrl: 'https://scontent.fknu1-1.fna.fbcdn.net/v/t1.0-9/s960x960/42664108_2190331037847801_6869201411381395456_o.jpg?_nc_cat=105&_nc_ohc=jBuSzWJ5VaQAQkMe5mbyQBLKScML7rMZiJXmxEtK4zccBpLFeBtnUw1UQ&_nc_ht=scontent.fknu1-1.fna&oh=a3938072a30c969e0ce8fdf90a15fe2f&oe=5EAAA309',
		name: 'Arashpreet Singh',
		designation: 'Festival Coordinator',),
	TeamMemberTile(
		imageUrl: 'https://scontent.fknu1-1.fna.fbcdn.net/v/t1.0-9/s960x960/42664108_2190331037847801_6869201411381395456_o.jpg?_nc_cat=105&_nc_ohc=jBuSzWJ5VaQAQkMe5mbyQBLKScML7rMZiJXmxEtK4zccBpLFeBtnUw1UQ&_nc_ht=scontent.fknu1-1.fna&oh=a3938072a30c969e0ce8fdf90a15fe2f&oe=5EAAA309',
		name: 'Prasoon Maheshwari',
		designation: 'Public Relations',),
	TeamMemberTile(
		imageUrl: 'https://scontent.fknu1-1.fna.fbcdn.net/v/t1.0-9/s960x960/42664108_2190331037847801_6869201411381395456_o.jpg?_nc_cat=105&_nc_ohc=jBuSzWJ5VaQAQkMe5mbyQBLKScML7rMZiJXmxEtK4zccBpLFeBtnUw1UQ&_nc_ht=scontent.fknu1-1.fna&oh=a3938072a30c969e0ce8fdf90a15fe2f&oe=5EAAA309',
		name: 'Tanmay Malu',
		designation: 'Festival Coordinator',),
	TeamMemberTile(
		imageUrl: 'https://scontent.fknu1-1.fna.fbcdn.net/v/t1.0-9/s960x960/42664108_2190331037847801_6869201411381395456_o.jpg?_nc_cat=105&_nc_ohc=jBuSzWJ5VaQAQkMe5mbyQBLKScML7rMZiJXmxEtK4zccBpLFeBtnUw1UQ&_nc_ht=scontent.fknu1-1.fna&oh=a3938072a30c969e0ce8fdf90a15fe2f&oe=5EAAA309',
		name: 'Tanmay Malu',
		designation: 'Festival Coordinator',),
	TeamMemberTile(
		imageUrl: 'https://scontent.fknu1-1.fna.fbcdn.net/v/t1.0-9/s960x960/42664108_2190331037847801_6869201411381395456_o.jpg?_nc_cat=105&_nc_ohc=jBuSzWJ5VaQAQkMe5mbyQBLKScML7rMZiJXmxEtK4zccBpLFeBtnUw1UQ&_nc_ht=scontent.fknu1-1.fna&oh=a3938072a30c969e0ce8fdf90a15fe2f&oe=5EAAA309',
		name: 'Animesh Jha',
		designation: 'Sponsorship & Marketing',),
	TeamMemberTile(
		imageUrl: 'https://scontent.fknu1-1.fna.fbcdn.net/v/t1.0-9/s960x960/42664108_2190331037847801_6869201411381395456_o.jpg?_nc_cat=105&_nc_ohc=jBuSzWJ5VaQAQkMe5mbyQBLKScML7rMZiJXmxEtK4zccBpLFeBtnUw1UQ&_nc_ht=scontent.fknu1-1.fna&oh=a3938072a30c969e0ce8fdf90a15fe2f&oe=5EAAA309',
		name: 'Tanmay Malu',
		designation: 'Festival Coordinator',),
	TeamMemberTile(
		imageUrl: 'https://scontent.fknu1-1.fna.fbcdn.net/v/t1.0-9/s960x960/42664108_2190331037847801_6869201411381395456_o.jpg?_nc_cat=105&_nc_ohc=jBuSzWJ5VaQAQkMe5mbyQBLKScML7rMZiJXmxEtK4zccBpLFeBtnUw1UQ&_nc_ht=scontent.fknu1-1.fna&oh=a3938072a30c969e0ce8fdf90a15fe2f&oe=5EAAA309',
		name: 'Muskan Chugh',
		designation: 'Media & Publicity',),
	TeamMemberTile(
		imageUrl: 'https://scontent.fknu1-1.fna.fbcdn.net/v/t1.0-9/s960x960/42664108_2190331037847801_6869201411381395456_o.jpg?_nc_cat=105&_nc_ohc=jBuSzWJ5VaQAQkMe5mbyQBLKScML7rMZiJXmxEtK4zccBpLFeBtnUw1UQ&_nc_ht=scontent.fknu1-1.fna&oh=a3938072a30c969e0ce8fdf90a15fe2f&oe=5EAAA309',
		name: 'Jasmeet Kaur',
		designation: 'Media & Publicity',),
	TeamMemberTile(
		imageUrl: 'https://scontent.fknu1-1.fna.fbcdn.net/v/t1.0-9/s960x960/42664108_2190331037847801_6869201411381395456_o.jpg?_nc_cat=105&_nc_ohc=jBuSzWJ5VaQAQkMe5mbyQBLKScML7rMZiJXmxEtK4zccBpLFeBtnUw1UQ&_nc_ht=scontent.fknu1-1.fna&oh=a3938072a30c969e0ce8fdf90a15fe2f&oe=5EAAA309',
		name: 'Mohammed Amir',
		designation: 'Hospitality & Travels',),
	TeamMemberTile(
		imageUrl: 'https://scontent.fknu1-1.fna.fbcdn.net/v/t1.0-9/s960x960/42664108_2190331037847801_6869201411381395456_o.jpg?_nc_cat=105&_nc_ohc=jBuSzWJ5VaQAQkMe5mbyQBLKScML7rMZiJXmxEtK4zccBpLFeBtnUw1UQ&_nc_ht=scontent.fknu1-1.fna&oh=a3938072a30c969e0ce8fdf90a15fe2f&oe=5EAAA309',
		name: 'Divyansh Tripathi',
		designation: 'Registration',),
	TeamMemberTile(
		imageUrl: 'https://scontent.fknu1-1.fna.fbcdn.net/v/t1.0-9/s960x960/42664108_2190331037847801_6869201411381395456_o.jpg?_nc_cat=105&_nc_ohc=jBuSzWJ5VaQAQkMe5mbyQBLKScML7rMZiJXmxEtK4zccBpLFeBtnUw1UQ&_nc_ht=scontent.fknu1-1.fna&oh=a3938072a30c969e0ce8fdf90a15fe2f&oe=5EAAA309',
		name: 'A. Lithika',
		designation: 'Hospitality & Travels',),
	TeamMemberTile(
		imageUrl: 'https://scontent.fknu1-1.fna.fbcdn.net/v/t1.0-9/s960x960/42664108_2190331037847801_6869201411381395456_o.jpg?_nc_cat=105&_nc_ohc=jBuSzWJ5VaQAQkMe5mbyQBLKScML7rMZiJXmxEtK4zccBpLFeBtnUw1UQ&_nc_ht=scontent.fknu1-1.fna&oh=a3938072a30c969e0ce8fdf90a15fe2f&oe=5EAAA309',
		name: 'Sidharth Pratap',
		designation: 'Hospitality & Travels',),
	TeamMemberTile(
		imageUrl: 'https://scontent.fknu1-1.fna.fbcdn.net/v/t1.0-9/s960x960/42664108_2190331037847801_6869201411381395456_o.jpg?_nc_cat=105&_nc_ohc=jBuSzWJ5VaQAQkMe5mbyQBLKScML7rMZiJXmxEtK4zccBpLFeBtnUw1UQ&_nc_ht=scontent.fknu1-1.fna&oh=a3938072a30c969e0ce8fdf90a15fe2f&oe=5EAAA309',
		name: 'Ayush Shukla',
		designation: 'Registration',),
	TeamMemberTile(
		imageUrl: 'https://scontent.fknu1-1.fna.fbcdn.net/v/t1.0-9/s960x960/42664108_2190331037847801_6869201411381395456_o.jpg?_nc_cat=105&_nc_ohc=jBuSzWJ5VaQAQkMe5mbyQBLKScML7rMZiJXmxEtK4zccBpLFeBtnUw1UQ&_nc_ht=scontent.fknu1-1.fna&oh=a3938072a30c969e0ce8fdf90a15fe2f&oe=5EAAA309',
		name: 'Ateeb Ali',
		designation: 'Creatives',),
	TeamMemberTile(
		imageUrl: 'https://scontent.fknu1-1.fna.fbcdn.net/v/t1.0-9/s960x960/42664108_2190331037847801_6869201411381395456_o.jpg?_nc_cat=105&_nc_ohc=jBuSzWJ5VaQAQkMe5mbyQBLKScML7rMZiJXmxEtK4zccBpLFeBtnUw1UQ&_nc_ht=scontent.fknu1-1.fna&oh=a3938072a30c969e0ce8fdf90a15fe2f&oe=5EAAA309',
		name: 'Ankit Kumar',
		designation: 'Fliming',),
	TeamMemberTile(
		imageUrl: 'https://scontent.fknu1-1.fna.fbcdn.net/v/t1.0-9/s960x960/42664108_2190331037847801_6869201411381395456_o.jpg?_nc_cat=105&_nc_ohc=jBuSzWJ5VaQAQkMe5mbyQBLKScML7rMZiJXmxEtK4zccBpLFeBtnUw1UQ&_nc_ht=scontent.fknu1-1.fna&oh=a3938072a30c969e0ce8fdf90a15fe2f&oe=5EAAA309',
		name: 'Ashray Sinha',
		designation: 'Web Operations',),
	TeamMemberTile(
		imageUrl: 'https://scontent.fknu1-1.fna.fbcdn.net/v/t1.0-9/s960x960/61536061_1100125006856732_2973244909416349696_o.jpg?_nc_cat=105&_nc_ohc=jmjjr0rRwvMAQn4NNdVT3mbwqsPaeY3rb9EWTSeUHVLMpsUpQxclUM3Qw&_nc_ht=scontent.fknu1-1.fna&oh=cb17901ea2359cb96c84ed38c999e16b&oe=5E750027',
		name: 'Shivansh Tiwari',
		designation: 'HEAD, App Operations',),
];

List<SportWidget> sportsList = [
  SportWidget(image: 'images/aquatics.jpg',
    name: 'Aquatics',
  ),
  SportWidget(image: 'images/athleticsfield.jpg',
    name: 'Athletics Field Events',
  ),
  SportWidget(image: 'images/athleticstrack.jpg',
    name: 'Athletics Track Events',
  ),
  SportWidget(image: 'images/badminton.jpeg',
    name: 'Badminton',
  ),
  SportWidget(image: 'images/basketball.jpg',
    name: 'Basketball',
  ),
  SportWidget(image: 'images/carrom.jpg',
    name: 'Carrom',
  ),
  SportWidget(image: 'images/chess.jpeg',
    name: 'Chess',
  ),
  SportWidget(image: 'images/cricket.jpg',
    name: 'Cricket',
  ),
  SportWidget(image: 'images/football.jpg',
    name: 'Football',
  ),
  SportWidget(image: 'images/lawntennis.jpg',
    name: 'Lawn Tennis',
  ),
  SportWidget(image: 'images/powerlifting.jpg',
    name: 'Power Lifting',
  ),
  SportWidget(image: 'images/pubg.jpg',
    name: 'Pubg',
  ),
  SportWidget(image: 'images/snooker.jpg',
    name: 'Snooker',
  ),
  SportWidget(image: 'images/squash.jpg',
    name: 'Squash',
  ),
  SportWidget(image: 'images/tabletennis.jpg',
    name: 'Table Tennis',
  ),
  SportWidget(image: 'images/volleyball.jpg',
    name: 'Volleyball',
  ),

];