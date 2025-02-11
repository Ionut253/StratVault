import 'package:flutter/material.dart';
import 'package:strat_vault/models/map.dart';
import 'package:strat_vault/repository/repository.dart';

class MapsProvider extends ChangeNotifier {
    final List<CSMap> maps = Repository().maps;

    MapsProvider();

    List<CSMap> get getMaps => maps;

  
}