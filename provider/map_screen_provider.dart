import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocoding/geocoding.dart';
import 'package:landplush/utils/strings.dart';
enum LocationType {
  FriendsHouse,
  ParentsHouse,
  FarmHouse,
  Others,
}

class MapProvider extends ChangeNotifier {
  GoogleMapController? mapController;
  Marker? marker;
  String address = '';
  int selectedButtonIndex = 0;
  LocationType selectedLocationType = LocationType.FriendsHouse;
  TextEditingController textFieldController = TextEditingController();
  bool _otherButton=false;
  bool _textField=false;

  bool get otherButton => _otherButton;
  bool get textField => _textField;

  void setSelectedLocationType(LocationType locationType) {
    selectedLocationType = locationType;
    if(locationType.toString().split('.').last!=othersText){
      textFieldController.text = locationType.toString().split('.').last;
    }
    else
      {
        textFieldController.text = saveAddress;
      }

    notifyListeners();
  }
  Color colorButton(int buttonIndex) {
    return buttonIndex == selectedButtonIndex ? Colors.white : Colors.black;
  }

  void setSelectedButtonIndex(int index) {
    selectedButtonIndex = index;
    notifyListeners();
  }
  set otherButton(bool value) {
    _otherButton = value;
    notifyListeners();
  }
  set textField(bool value) {
    _textField= value;
    notifyListeners();
  }

  void updateMarker(LatLng position) async {
    List<Placemark> placeMarks = await placemarkFromCoordinates(position.latitude, position.longitude);
    Placemark placeMark = placeMarks.first;
    String address = '${placeMark.street}, ${placeMark.locality}, ${placeMark.administrativeArea}';
    marker = Marker(
      markerId: const MarkerId('1'),
      position: position,
      infoWindow: InfoWindow(title: markerText, snippet: address),
    );
    this.address = address;

    notifyListeners();
  }
}
