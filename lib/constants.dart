//any constant declared in the project will have to be refactored here
import 'package:flutter/material.dart';
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
];