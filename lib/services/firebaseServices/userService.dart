import 'package:MIHA_Learning/models/firebaseModels/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserService {
  var userRef = FirebaseFirestore.instance.collection('User');

  Future<List<User>> readAllUsers() async {
    // userRef
    // .get()
    // .then((QuerySnapshot querySnapshot) {
    //   List<User> userList = [];
    //     querySnapshot.docs.forEach((doc) {
    //       User userM = userFromJson(doc.data().toString());
    //       userList.add(userM);
    //     });
    //     return userList;
    // });

    List<User> userList = [];
    QuerySnapshot querySnapshot = await userRef.get();

    //? Query with where condition
    //QuerySnapshot querySnapshot = await userRef.where("age", isGreaterThan: 18).get();

    querySnapshot.docs.forEach((doc) {
      print(doc.get("email"));
      // User userM = userFromJson();
      // userList.add(userM);
    });
    return userList;
  }

  Future getUserByID(String userID) async {
    userRef
        .doc(userID) //Get Document By ID
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (!documentSnapshot.exists) {
        print('Document does not exists on the database');
      } else {
        print(documentSnapshot.data());
      }
    });
  }

  Future writeNewDoc() async {
    
    //? Create document by auto generated ID
    userRef
        .add({'id': "klToHtganhR6GF1M0k51RZtJNnN2", 'email': "hi@gmail.com", 'username': "hi123"})
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));

    //? Create document by given ID
    // var docRef =  userRef.doc("klToHtganhR6GF1M0k51RZtJNnN2");
    // docRef
    //     .set({'id': "klToHtganhR6GF1M0k51RZtJNnN2", 'email': "hi@gmail.com", 'username': "hi123"})
    //     .then((value) => print("User Added"))
    //     .catchError((error) => print("Failed to add user: $error"));

     //? Create document by auto generated ID and add to ID field
    // var docRef2 =  userRef.doc();
    // docRef2
    //     .set({'id': docRef2.id, 'email': "hi@gmail.com", 'username': "hi123"})
    //     .then((value) => print("User Added"))
    //     .catchError((error) => print("Failed to add user: $error"));
  }

  Future updateDoc() async {
   
    userRef
    .doc("oh9vT5EYpiusVNUh6QS4")
        .update({'username': "hiall"})
        .then((value) => print("User updated"))
        .catchError((error) => print("Failed to update user: $error"));
  }
}
