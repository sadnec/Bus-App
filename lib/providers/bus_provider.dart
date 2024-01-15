import 'package:quotes/data/trip_data.dart';
import 'package:quotes/models/trip_model.dart';

final List<TripModel> flightsAvailable = AvailableTripJson
    .asMap()
    .map((index, value) =>
    MapEntry(index, TripModel.fromMap(AvailableTripJson[index])))
    .values
    .toList();
