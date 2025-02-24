import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';

class FirestoreService with ChangeNotifier{
  final CollectionReference _maps = FirebaseFirestore.instance.collection('CSMaps');
  final _firebaseStorage = FirebaseStorage.instance;
  List<String> _urls = [];

  Future<void> addMap(String name, String imagePath, String callouts, Map<String, List<String>> utils, Map<String, List<String>> strats) {
    return _maps.add({
      'name': name,
      'imagePath': imagePath,
      'calloutsPath': callouts,
      'utils': utils,
      'strats': strats,
    });
  }

  Future<void> fetchImage() async {

    final ListResult utils = await _firebaseStorage.ref('/images/ancient/smokes').listAll();
    final urls = await Future.wait(utils.items.map((e) => e.getDownloadURL()));
    _urls = urls;
      _maps.doc('Ancient').set({
        'name': 'Ancient',
        'imagePath': 'test',
        'calloutsPath': 'test',
        'utils': {'test': [for (var url in urls) url]},
        'strats': {'test': ['test']}
      });
    }

  List<String> get urls => _urls;
    


  Future<void> writeData() async {
    await _maps.doc('test').set({
      'name': 'test',
      'imagePath': 'test',
      'calloutsPath': 'test',
      'utils': {'test': ['test']},
      'strats': {'test': ['test']}
    });
  }
}