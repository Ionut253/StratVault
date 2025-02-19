class CSMap {
  String name;
  String imagePath;
  String calloutsPath;
  Map<String, dynamic> utils = {};
  Map<String, dynamic> strats = {};

  CSMap({
    required this.name, 
    required this.imagePath,
    required this.calloutsPath,
    required this.utils,
    required this.strats
    });

  String get _name  => name;
  String get _imagePath  => imagePath;
  String get _calloutsPath  => calloutsPath;
  Map<String, dynamic> get _utils => utils;
  Map<String, dynamic> get _strats => strats;
  
}