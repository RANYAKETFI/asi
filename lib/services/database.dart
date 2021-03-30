import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:asi/models/the.dart';

class DatabaseService {
  // collection reference
  final CollectionReference theCollection =
      Firestore.instance.collection('TheChezAbelkader');

  List<The> _theListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return The(name: doc.data['name'] ?? '', prix: doc.data['prix'] ?? '0');
    }).toList();
  }

  // get brews stream
  Stream<List<The>> get thes {
    return theCollection.snapshots().map(_theListFromSnapshot);
  }
}
