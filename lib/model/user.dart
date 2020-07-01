class User {
  String _displayName;
  String _email;
  String _password;
  String _ownerOfClub;
  String _id;
  User(this._displayName, this._email, this._ownerOfClub, this._password, this._id);

  Map<String, dynamic> toMap() {
    return {
      'id': _id,
      'name': _displayName,
      'email': _email,
    };
  }
}
