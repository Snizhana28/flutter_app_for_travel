import 'package:flutter_app_for_travel/feature/domain/models/location_dto.dart';

class PlaceDto {
  final String id;
  final String name;
  final String location;
  final String imageUrl;
  final LocationDto locationDto;
  final String description;
  final String time;
  final double rating;
  final double price;
  final int temp;
  final bool isFavorite;

  PlaceDto(
      {required this.id,
      required this.name,
      required this.location,
      required this.imageUrl,
      required this.locationDto,
      required this.description,
      required this.time,
      required this.rating,
      required this.price,
      required this.temp,
      required this.isFavorite});

  @override
  String toString() {
    return 'PlaceDto(id: $id, name: $name, location: $location, imageUrl: $imageUrl, locationDto: $locationDto, description: $description, time: $time, rating: $rating, price: $price, temp: $temp, isFavorite: $isFavorite)';
  }
}
