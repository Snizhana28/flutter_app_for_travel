import 'package:flutter_app_for_travel/feature/domain/domain_exports.dart';

abstract class LocalData {
  static List<PlaceDto> places = [
    PlaceDto(
      id: '1',
      name: 'Santorini',
      location: 'Greece',
      imageUrl:
          'https://www.costacruises.eu/content/dam/costa/inventory-assets/ports/JTR/jtr-santorini-port-1.jpg.image.2048.1536.medium.jpg',
      locationDto: LocationDto(city: 'Santorini', country: 'Greece', id: '1'),
      description:
          'Santorini is the supermodel of the Greek islands, a head-turner whose face is instantly recognisable around the world: multicoloured cliffs soar out of a sea-drowned caldera, topped by drifts of whitewashed buildings.',
      time: '3 hours',
      rating: 4.5,
      price: 300,
      temp: 34,
      isFavorite: true,
    ),
    PlaceDto(
      id: '2',
      name: 'Paris',
      location: 'France',
      imageUrl:
          'https://media.cntraveller.com/photos/653783ab9da3a22eb97452f9/16:9/w_2560%2Cc_limit/Cheapest_time_to_go_to_Paris_October23_Getty_Images.jpg',
      locationDto: LocationDto(city: 'Paris', country: 'France', id: '2'),
      description:
          'Paris, the city of love, one of the greatest cities in the world, the political and cultural capital of France. Paris is a city that has inspired countless books, music, and movies.',
      time: '4 hours',
      rating: 4.8,
      price: 400,
      temp: 30,
      isFavorite: false,
    ),
    PlaceDto(
      id: '3',
      name: 'Venice',
      location: 'Italy',
      imageUrl:
          'https://media.architecturaldigest.com/photos/57d07a2304d9a6143e1952d0/16:9/w_2560%2Cc_limit/venice-travel-guide.jpg',
      locationDto: LocationDto(city: 'Venice', country: 'Italy', id: '3'),
      description:
          'Venice is a city in northeastern Italy and the capital of the Veneto region. It is on a group of 118 small islands that are separated by canals and linked by over 400 bridges.',
      time: '2 hours',
      rating: 4.7,
      price: 350,
      temp: 32,
      isFavorite: true,
    ),
    PlaceDto(
      id: '4',
      name: 'New York',
      location: 'USA',
      imageUrl:
          'https://www.nationsonline.org/gallery/USA/Times-Square-New-York.jpg',
      locationDto: LocationDto(city: 'New York', country: 'USA', id: '4'),
      description:
          'New York City is the largest city in the United States and one of the world\'s major global cities. The city\'s influence on the world, and all its inhabitants, is hard to overstate, as decisions made within its boundaries often have impacts and ramifications across the globe.',
      time: '6 hours',
      rating: 4.9,
      price: 600,
      temp: 28,
      isFavorite: false,
    ),
    PlaceDto(
      id: '5',
      name: 'London',
      location: 'UK',
      imageUrl:
          'https://media.cntraveller.com/photos/63f37018ea053d878b345cb2/4:3/w_3456,h_2592,c_limit/London-GettyImages-585295947.jpeg  ',
      locationDto: LocationDto(city: 'London', country: 'UK', id: '5'),
      description:
          'London is the capital and largest city of England and the United Kingdom. The city stands on the River Thames in the south-east of England, at the head of its 50-mile (80 km) estuary leading to the North Sea.',
      time: '5 hours',
      rating: 4.6,
      price: 500,
      temp: 29,
      isFavorite: true,
    ),
  ];
}
