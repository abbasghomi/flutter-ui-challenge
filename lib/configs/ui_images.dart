/// this class provide images and their real size
class UiImages {
  static ImageType get logoImage => ImageType(
    imageAsset: 'assets/images/logo.png',
    width: 515.0,
    height: 116.0,
  );

  static ImageType get instagramImage => ImageType(
    imageAsset: 'assets/images/instagram1.png',
      width: 86.0,
      height: 86.0,
  );

  static ImageType get facebookImage => ImageType(
    imageAsset: 'assets/images/facebook.png',
    width: 50.0,
    height: 86.0,
  );

  static ImageType get twitterImage => ImageType(
    imageAsset: 'assets/images/twitter.png',
    width: 94.0,
    height: 79.0,
  );

  static ImageType get tiktokImage => ImageType(
    imageAsset: 'assets/images/tiktok.png',
    width: 81.0,
    height: 86.0,
  );

  static ImageType get eventImage1 => ImageType(
        imageAsset: 'assets/images/event_image1.png',
        width: 528.0,
        height: 297.0,
      );
  static ImageType get eventImage2 => ImageType(
        imageAsset: 'assets/images/event_image2.png',
        width: 528.0,
        height: 297.0,
      );
  static ImageType get eventImage3 => ImageType(
        imageAsset: 'assets/images/event_image3.png',
        width: 528.0,
        height: 297.0,
      );
  static ImageType get eventImage4 => ImageType(
        imageAsset: 'assets/images/event_image4.png',
        width: 528.0,
        height: 576.0,
      );
  static ImageType get eventImage5 => ImageType(
        imageAsset: 'assets/images/event_image5.png',
        width: 396.0,
        height: 594.0,
      );
  static ImageType get eventImage6 => ImageType(
        imageAsset: 'assets/images/event_image6.png',
        width: 528.0,
        height: 297.0,
      );

  static ImageType get benefitImage1 => ImageType(
    imageAsset: 'assets/images/line_skip.png',
    width: 168.0,
    height: 160.0,
  );
  static ImageType get benefitImage2 => ImageType(
    imageAsset: 'assets/images/cover.png',
    width: 168.0,
    height: 160.0,
  );
  static ImageType get benefitImage3 => ImageType(
    imageAsset: 'assets/images/drinks.png',
    width: 168.0,
    height: 160.0,
  );
  static ImageType get benefitImage4 => ImageType(
    imageAsset: 'assets/images/events.png',
    width: 168.0,
    height: 160.0,
  );
  static ImageType get benefitImage5 => ImageType(
    imageAsset: 'assets/images/frame_35.png',
    width: 168.0,
    height: 160.0,
  );
  static ImageType get benefitImage6 => ImageType(
    imageAsset: 'assets/images/reservations.png',
    width: 168.0,
    height: 160.0,
  );

}

class ImageType {
  final String imageAsset;
  final double width;
  final double height;

  ImageType({
    required this.imageAsset,
    required this.width,
    required this.height,
  });
}

///this extension will provide resize adoption for images
extension ImageConverter on ImageType {
  double convertWidth({required double newHeight}) {
    return newHeight * width / height;
  }

  double convertHeight({required double newWidth}) {
    return newWidth * height / width;
  }
}
