class CSMap {
  String name;
  String imagePath;
  String calloutsPath;

  CSMap({
    required this.name, 
    required this.imagePath,
    required this.calloutsPath
    });

  String get _name  => name;
  String get _imagePath  => imagePath;
  
}