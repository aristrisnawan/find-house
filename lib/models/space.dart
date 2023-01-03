class Space {
  late final int id;
  late final String name;
  late final String imageUrl;
  late final int price;
  late final String city;
  late final String country;
  late final int rating;
  late final String address;
  late final String phone;
  late final String mapUrl;
  late final List photos;
  late final int numberOfKitchen;
  late final int numberOfBedroom;
  late final int numberOfCupboards;

  Space(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.price,
      required this.city,
      required this.country,
      required this.rating,
      required this.address,
      required this.mapUrl,
      required this.phone,
      required this.photos,
      required this.numberOfBedroom,
      required this.numberOfCupboards,
      required this.numberOfKitchen
      });

      Space.fromJson(json){
        id = json['id'];
        name = json['name'];
        city = json['city'];
        country = json['country'];
        imageUrl = json['image_url'];
        rating = json['rating'];
        address = json['address'];
        phone = json['phone'];
        price = json['price'];
        mapUrl = json['map_url'];
        photos = json['photos'];
        numberOfKitchen = json['number_of_kitchens'];
        numberOfBedroom = json['number_of_bedrooms'];
        numberOfCupboards = json['number_of_cupboards'];
      }
}
