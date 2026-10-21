import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/weather.dart';

part 'weather_bloc_event.dart';
part 'weather_bloc_state.dart';

class WeatherBlocBloc extends Bloc<WeatherBlocEvent, WeatherBlocState> {
  WeatherBlocBloc() : super(WeatherBlocInitial()) {
    on<FetchWeather>((event, emit) async{
      emit(WeatherBlocLoading());
      try {
        WeatherFactory wf = WeatherFactory('4ac9506aa6413b8a01e28e7a6ae348d1', language:  Language.ARABIC);
        
        Weather weather = await wf.currentWeatherByLocation(
          event.position.altitude,
          event.position.longitude
        );
  
        emit(WeatherBlocSuccess(weather));
      } catch (e) {
        emit(WeatherBlocFailure());
      }
    });
  }
}
