import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> userSetup(String displayName) async {
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  FirebaseAuth auth = FirebaseAuth.instance;

  String uid = auth.currentUser!.uid.toString();

  String email = auth.currentUser!.email.toString();

  users.add({'displayName ': displayName, 'uid': uid, 'email': email});

  return;
}
