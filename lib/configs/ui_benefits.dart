import 'package:flutter_ui_challenge/configs/ui_images.dart';

export 'package:flutter_ui_challenge/configs/ui_images.dart';

/// UiBenefits is data provider for benefits in app download section
class UiBenefits {
  static BenefitType get benefit1 => BenefitType(
        title: 'LineSkip',
        description:
            'LineSkip passes let you skip long lines at your favorite bars, venues, and events. ',
        image: UiImages.benefitImage1,
      );
  static BenefitType get benefit2 => BenefitType(
    title: 'Cover',
    description:
    'Ditch the ATM! Pay with Venmo, PayPal, or credit card using the Sample App.',
    image: UiImages.benefitImage2,
  );
  static BenefitType get benefit3 => BenefitType(
    title: 'Drinks',
    description:
    'Order your drinks right from your phone. No more splitting tabs or soggy receipts! ',
    image: UiImages.benefitImage3,
  );
  static BenefitType get benefit4 => BenefitType(
    title: 'Event Tickets',
    description:
    'Get tickerts and VIP access to dope concerts you won’t find anywhere else. ',
    image: UiImages.benefitImage4,
  );
  static BenefitType get benefit5 => BenefitType(
    title: 'Exclusive Deals',
    description:
    'Use Sample App for exclusive deals on your favorite drinks!',
    image: UiImages.benefitImage5,
  );
  static BenefitType get benefit6 => BenefitType(
    title: 'Reservations',
    description:
    'Save your spot in line or grab the perfect table in seconds.',
    image: UiImages.benefitImage6,
  );
}

/// BenefitType is data model for benefits in app download section
class BenefitType {
  final ImageType image;
  final String title;
  final String description;

  BenefitType({
    required this.image,
    required this.title,
    required this.description,
  });
}
