// ignore_for_file: public_member_api_docs, sort_constructors_first
class Place {
  var _id;
  var _siteName;
  var _address;
  var _imageUrl;
  var _latitud;
  var _longitud;

  get id => this._id;

  set id(var value) => this._id = value;

  get siteName => this._siteName;

  set siteName(value) => this._siteName = value;

  get address => this._address;

  set address(value) => this._address = value;

  get imageUrl => this._imageUrl;

  set imageUrl(value) => this._imageUrl = value;

  get latitud => this._latitud;

  set latitud(value) => this._latitud = value;

  get longitud => this._longitud;

  set longitud(value) => this._longitud = value;

  Place(
    this._siteName,
    this._address,
    this._imageUrl,
    this._latitud,
    this._longitud,
  );
}
