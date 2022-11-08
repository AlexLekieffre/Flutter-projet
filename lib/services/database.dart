import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stage/models/user.dart';

class DatabaseService {
  final String uid;
  DatabaseService(this.uid);

  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('User Information');
  
  Future<void> saveUser(
      String name,
      String genre,
      String age,
      String situation,
      String nationalite,
      String langue,
      String traitDeCaractere,
      String centreDinteret,
      String habitudeAlimentaire,
      String lifeStyle) async {
    return await userCollection.doc(uid).set({
      'Name': name,
      'Genre': genre,
      'Age': age,
      "Situation": situation,
      'Nationalité': nationalite,
      'Langue parlé': langue,
      "Trait de caractere": traitDeCaractere,
      "Centre d'interet": centreDinteret,
      "Habitude alimentaire": habitudeAlimentaire,
      'Life Style': lifeStyle
    });
  }

  AppUserData _userFromSnapshot(DocumentSnapshot snapshot) {
    
    var data = snapshot.data() as Map<String, dynamic>;
    if (data == null) throw Exception('user information not found');
    return AppUserData(
        uid: snapshot.id,
        name: data["Name"],
        genre: data["Genre"],
        age: data["Age"],
        situation: data["Situation"],
        langue: data["Langue parlé"],
        centreDinteret: data["Centre d'interet"],
        traitDeCaractere: data["Trait de caractere"],
        habitudeAlimentaire: data["Habitude alimentaire"],
        nationalite: data["Nationalité"],
        lifeStyle: data["Life Style"]);
  }

 
  Future getDoc(a) async {
    var a = await FirebaseFirestore.instance
        .collection('User Information')
        .doc(uid)
        .get();
    if (a.exists) {
      print('Exists');
      return a.exists;
    }
    if (!a.exists) {
      print('Not exists');
      return true;
    }
  }
    List<AppUserData> _userListFromSnapshot(QuerySnapshot<Object?> snapshot) {
    return snapshot.docs.map((doc) {
      return _userFromSnapshot(doc);
    }).toList();
  }

  Stream<AppUserData> get user {
    return userCollection.doc(uid).snapshots().map(_userFromSnapshot);
  }
  Stream<List<AppUserData>> get users {
    return userCollection.snapshots().map(_userListFromSnapshot);
  }
} 

//pour recupérer 

