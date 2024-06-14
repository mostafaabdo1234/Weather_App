import 'package:flutter/material.dart';
import 'package:weather_application/component/textfield_component.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title:const Text('Search a City',
        style: TextStyle(
          fontSize: 22
        ),
        ),
      ),
      body:const TextFieldComponent(),
    );
  }
}