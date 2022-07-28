class Farmer {
  //holds all details of the farmer
  late final String firstName;
  late final String lastName;
  final String farmName;
  final String address;
  late final String description;
  final String url;
  // 0: Monday -> Last index: Holiday hours
  final List<String> hours;
  //0: Youtube, 1: Instagram 2: Tiktok 3: Facebook 4: LinkedIn 5: website 6: phone
  final List<String> socials;

  Farmer({
    required this.url, required this.description,
    required this.address, required this.farmName,required this.socials,
    required this.firstName, required this.lastName,required this.hours
});

}