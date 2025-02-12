import 'package:strat_vault/models/map.dart';

class Repository {
  List<CSMap> maps = [
    CSMap(name: 'Mirage', imagePath: 'lib/images/test_map.png', calloutsPath: 'lib/images/test_map.png'),
    CSMap(name: 'Inferno', imagePath: 'lib/images/download.jpeg', calloutsPath: 'lib/images/test_map.png'),
    CSMap(name: 'Dust 2', imagePath: 'lib/images/test_map.png', calloutsPath: 'lib/images/test_map.png'),
    CSMap(name: 'Nuke', imagePath: 'lib/images/test_map.png', calloutsPath: 'lib/images/test_map.png'),
    CSMap(name: 'Overpass', imagePath: 'lib/images/test_map.png', calloutsPath: 'lib/images/test_map.png'),
    CSMap(name: 'Anubis', imagePath: 'lib/images/anubis.jpg', calloutsPath: 'lib/images/callouts_anubis.png'),
    CSMap(name: 'Ancient', imagePath: 'lib/images/test_map.png', calloutsPath: 'lib/images/test_map.png'),
    CSMap(name: 'Train', imagePath: 'lib/images/test_map.png', calloutsPath: 'lib/images/test_map.png'),
  ];

  Repository();

  List<CSMap> get _maps => maps; 
}