class Advice{
  final String _adviceTitles;
  final String _adviceImage;
  final String _adviceInformation;


  Advice(this._adviceTitles, this._adviceImage,this._adviceInformation);
  @override
  String toString(){
    return '$_adviceTitles - $_adviceImage - $_adviceInformation';
  }

  String get adviceTitles => _adviceTitles;
  String get adviceImage=> _adviceImage;
  String get adviceInformation => _adviceInformation;
}