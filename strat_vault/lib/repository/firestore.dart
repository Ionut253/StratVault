import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FirestoreService{
  final CollectionReference _maps = FirebaseFirestore.instance.collection('CSmaps');
  final _firebaseStorage = FirebaseStorage.instance;

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

    final ListResult utils = await _firebaseStorage.ref('images/ancient/mollys/').listAll();
    final urls = await Future.wait(utils.items.map((e) => e.getDownloadURL()));
    print(urls);

  }





}