import 'package:flutter_ui_challenge/configs/ui_images.dart';

export 'package:flutter_ui_challenge/configs/ui_images.dart';

/// UiEvents is data provider for Events section
class UiEvents {
  static EventType get event1 => EventType(
        title: 'Diplo Presents: Higher Ground',
        dj: 'Diplo',
        eventDate: 'Fri, August 26, 6:00 PM  +2 more',
        club: 'Champs Downtown',
        address: 'State College, PA',
        image: UiImages.eventImage1,
        price: 99.00,
      );

  static EventType get event2 => EventType(
        title: 'Trippie Redd - Neon Shark Live',
        dj: 'Trippie Redd',
        eventDate: 'Fri, August 26, 6:00 PM  +2 more',
        club: 'Rick’s American Cafe',
        address: 'Ann Arbor, MI',
        image: UiImages.eventImage2,
        price: 99.00,
      );

  static EventType get event3 => EventType(
        title: 'Kacey Musgraves - oh, what a word: tour II',
        dj: 'Kacey Musgraves, Maggie Rogers, Yola',
        eventDate: 'Fri, August 26, 6:00 PM  +2 more',
        club: 'Bridgestone Arena',
        address: 'Nashville, TN',
        image: UiImages.eventImage3,
        price: 99.00,
      );

  static EventType get event4 => EventType(
        title: 'Diplo Presents: Higher Ground',
        dj: 'DOSK',
        eventDate: 'Fri, August 26, 6:00 PM  +2 more',
        club: 'Champs Downtown',
        address: 'State College, PA',
        image: UiImages.eventImage4,
        price: 99.00,
      );

  static EventType get event5 => EventType(
        title: 'Diplo Presents: Higher Ground',
        dj: 'Wale',
        eventDate: 'Fri, August 26, 6:00 PM  +2 more',
        club: 'Champs Downtown',
        address: 'State College, PA',
        image: UiImages.eventImage5,
        price: 99.00,
      );

  static EventType get event6 => EventType(
        title: 'Back to School Bar Crawl',
        dj: '',
        eventDate: 'Fri, August 26, 6:00 PM  +2 more',
        club: 'Champs Downtown',
        address: 'State College, PA',
        image: UiImages.eventImage6,
        price: 99.00,
      );
}

/// EventType is data model for Events section
class EventType {
  final ImageType image;
  final String title;
  final String dj;
  final String eventDate;
  final String club;
  final String address;
  final double price;

  EventType({
    required this.image,
    required this.title,
    required this.dj,
    required this.eventDate,
    required this.club,
    required this.address,
    required this.price,
  });
}
