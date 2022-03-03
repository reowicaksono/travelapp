class DetailsModelTopDestination {
  int id;
  int rating;
  int price;
  String open;
  String close;
  String country;
  String city;
  String activities;
  String imgUrl;
  String namePlace;
  String location;
  String phone;
  String? url360;

  DetailsModelTopDestination(
      {this.id = 0,
      this.activities = "",
      this.city = "",
      this.country = "",
      this.close = "",
      this.imgUrl = "",
      this.namePlace = "",
      this.open = "",
      this.price = 0,
      this.location = "",
      this.rating = 0,
      this.phone = "",
      this.url360
      });
}
