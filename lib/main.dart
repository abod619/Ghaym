import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/bloc/weather_bloc_bloc.dart';
import 'package:weather_app/view/home_screen.dart';
import 'package:weather_app/view/test_learning.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
         home: 
         //TestLearning()
         FutureBuilder(
          future: _determainePostion(),
          builder: (context, snap) {
            if (snap.hasData) {
              return BlocProvider<WeatherBlocBloc>(
                create: (context) => WeatherBlocBloc()..add(
                  FetchWeather(
                    snap.data as Position
                  )
                  ),
                  
                child: HomeScreen(),
                
              );
            } else {
              return  
               Center(
                child: CircularProgressIndicator(),
              );
            
            }
            
          }
          ,
         )
        );
     
  }
}

Future<Position> _determainePostion() async{
  bool serviceEnabled;
  LocationPermission permission;


  //test if location services are enabled

  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // location service are not enabled don't continue 
    return Future.error('Location services are disabled');
    
  }
  print('وصلت هنا3');

  permission = await Geolocator.checkPermission();
  print('1وصلت هنا');
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return Future.error('Location permissions are denied');
    
    }
    print('2وصلت هنا');
  }

  if (permission == LocationPermission.deniedForever) {
    // return Future.error('Location permissions are permanetly denied, we cannot request permissions');
    await Geolocator.openAppSettings();
  }
 print('ikhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh');
  return await Geolocator.getCurrentPosition();
}
