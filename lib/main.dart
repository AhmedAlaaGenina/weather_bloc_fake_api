import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_bloc_fake_api/bloc/weather_bloc.dart';
import 'package:weather_bloc_fake_api/data/weather_repository.dart';

import 'pages/weather_search_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherBloc(
        FakeWeatherRepository(),
      ),
      child: MaterialApp(
        title: 'Weather App',
        home: WeatherSearchPage(),
      ),
    );
  }
}
