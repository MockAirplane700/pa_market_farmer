import 'package:pa_market_farmer/custom_objects/farmer.dart';

class FarmerDetails {
  //todo: make a constructor
  //0: Youtube, 1: Instagram 2: Tiktok 3: Facebook 4: LinkedIn 5: website 6: phone
  static final  Farmer _farmer = Farmer(url: 'https://gpjs3bucket.s3.amazonaws.com/wp-content/uploads/2018/03/26152659/GPJNews_Zambia_PP_-maize-shortage-3_web-920x613.jpg',
      description: 'lorem ipsum', address: '1515 some addy',
      farmName: 'Dzimbe Farms', firstName: 'John', socials: [
        'https://www.youtube.com/', 'https://www.instagram.com/', 'https://www.tiktok.com/en/',
        'https://www.facebook.com/Meta/', 'https://ca.linkedin.com/',
        'https://www.google.ca','+1-204-388-3589'
      ],
      lastName: 'Doe',hours: ['8am - 5pm', '8am - 5pm' , '8am - 5pm' , '8am - 5pm' , '8am - 5pm' , '8am - 1pm' ,'8am - 1pm','11am - 3pm']
  );

  static Farmer getFarmerDetails() {
    return _farmer;
  }

  static bool changeFirstAndLastName(String fName, String lName) {
    //return true on success
    _farmer.lastName= lName;
    _farmer.firstName = fName;
    return true;
  }

  static bool changeAddress(String newDescription) {
    _farmer.description = newDescription;
    return true;
  }
}