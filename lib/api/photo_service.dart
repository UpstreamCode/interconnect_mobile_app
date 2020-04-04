
// TODO: ideally we'd upload photos to Firebase, and lookup by uid
class PhotoService {

  static Future<String> getPhotoForUser(String uid) async {

    print("uid: "+uid.toString());

    // network delay
    await Future.delayed(const Duration(milliseconds: 200), (){});

    switch(uid) {
      case "merri1234": return 'images/merri.jpg';
      case "sam1234": return 'images/Sam.jpg';
      case "peregrin1234": return 'images/pippin.jpg';
      case "frodo1234": return 'images/frodo.jpg';
    }
    return "";
  }
}