import 'dart:convert';

class Place {
	int placeId;
	String licence;
	String osmType;
	int osmId;
	List<String> boundingbox;
	String lat;
	String lon;
	String displayName;
	String placeClass;
	String type;
	double importance;

	Place({
    required this.placeId,
    required this.licence,
    required this.osmType,
    required this.osmId,
    required this.boundingbox,
    required this.lat,
    required this.lon,
    required this.displayName,
    required this.placeClass,
    required this.type,
    required this.importance
  });

  factory Place.fromRawJson(String str) => Place.fromJson(json.decode(str));

	factory Place.fromJson(Map<String, dynamic> json) => Place(
    placeId: json['place_id'],
		licence: json['licence'],
		osmType: json['osm_type'],
		osmId: json['osm_id'],
		boundingbox: json['boundingbox'].cast<String>(),
		lat: json['lat'],
		lon: json['lon'],
		displayName: json['display_name'],
		placeClass: json['class'],
		type: json['type'],
		importance: json['importance'],
  );
}