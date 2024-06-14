import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/get_current_cubit/get_weather_cubit.dart';

class TextFieldComponent extends StatelessWidget {
  const TextFieldComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextField(
          onSubmitted: (value) async {
            BlocProvider.of<GetWeatherCubit>(context)
                .getWeather(cityName: value);
            Navigator.pop(context);
          },
          decoration:const InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            labelText: 'Search',
            hintText: 'Enter City Name',
            suffixIcon: Icon(Icons.search),
            suffixIconColor: Colors.black,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green),
            ),
          ),
        ),
      ),
    );
  }
}
