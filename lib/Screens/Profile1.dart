import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Api_provider.dart';
import '../COLORS/COLORS.dart';
import '../Utils/DefaultButton.dart';



// class Profile extends StatelessWidget {
//   const Profile({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "Image Pick",
//      // theme: ThemeData(pri),
//       home:  UploadProfileImage(user_id: '62',),
//     );
//   }
// }

class UploadProfileImage1 extends StatefulWidget {

  UploadProfileImage1({Key? key}) : super(key: key);

  @override
  State<UploadProfileImage1> createState() => _UploadProfileImage1State();
}

class _UploadProfileImage1State extends State<UploadProfileImage1> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController name_controller = new TextEditingController();
  TextEditingController email_controller = new TextEditingController();
  TextEditingController number_controller = new TextEditingController();
  // String encoded = base64.encode(utf8.encode(credentials)); // dXNlcm5hbWU6cGFzc3dvcmQ=
  // String decoded = utf8.decode(base64.decode(encoded));

  File? pickedImage;

  void imagePickerOption() {
    Get.bottomSheet(
      ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
        child: Container(
          color: Colors.white,
          height: 250,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  "Pic Image From",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(LIGHT_COLOR),
                  ),
                  onPressed: () {
                    pickImage(ImageSource.camera);
                  },

                  icon: const Icon(Icons.camera),
                  label: const Text("CAMERA"),
                ),
                ElevatedButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(LIGHT_COLOR),
                  ),
                  onPressed: () {
                    pickImage(ImageSource.gallery);
                  },
                  icon: const Icon(Icons.image),
                  label: const Text("GALLERY"),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(LIGHT_COLOR),
                  ),
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.close),
                  label: const Text("CANCEL"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  pickImage(ImageSource imageType) async {
    try {
      final photo = await ImagePicker().pickImage(source: imageType);

      if (photo == null) return;

      final tempImage = File(photo.path);

      setState(() {
        pickedImage = tempImage;
      });

      Get.back();
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  var h;
  var w;
  var name;
  var mobile;
  var email;
  var profileImage;
  var url;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ProfileData();
  }


  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: LIGHT_COLOR,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // const SizedBox(
              //   height: 50,
              // ),
              Align(
                // alignment: Alignment.center,
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: h*0.07),
                      decoration: BoxDecoration(
                        // border: Border.all(color: Colors.indigo, width: 5),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(100),
                          ),
                          color: WHITE_COLOR
                      ),
                      child: ClipOval(
                        child:
                        // display Image
                        pickedImage != null
                            ? Image.file(
                          pickedImage!,
                          width: 160,
                          height: 160,
                        )
                            :
                        // display Image
                        Image.network(
                          '$url/$profileImage',
                          width: 160,
                          height: 160,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 10,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: WHITE_COLOR

                        ),
                        child: IconButton(
                          onPressed: imagePickerOption,
                          icon: const Icon(
                            Icons.camera_alt,
                            color: BLACK_COLOR,
                            size: 30,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(
                        left: 10.0, right: 10,top: h*0.05),
                    child: SizedBox(

                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          height: 57,
                          child: TextFormField(
                            controller: name_controller,
                            cursorColor: BLACK_GREYCOLOR,
                            decoration: InputDecoration(
                              hintText: "Enter your name",
                              hintStyle: TextStyle(
                                  fontSize: 16, color: BLACK_GREYCOLOR),
                              focusedBorder: OutlineInputBorder(
                                // borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none),
                              prefixIcon: Icon(
                                Icons.person,
                                color: BLACK_COLOR,
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Name is Empty";
                              } else {}
                              return null;
                            },
                            autofocus: false,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10, top: 20),
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        height: 57,
                        child: TextFormField(
                          controller: email_controller,
                          cursorColor: BLACK_GREYCOLOR,
                          decoration: InputDecoration(
                            hintText: "Enter your email",
                            hintStyle: TextStyle(
                                fontSize: 16, color: BLACK_GREYCOLOR),
                            focusedBorder: OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none),
                            prefixIcon: Icon(
                              Icons.email,
                              color: BLACK_COLOR,
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Email is Empty";
                            } else {}
                            return null;
                          },
                          autofocus: false,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10, top: 20),
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        height: 57,
                        child: TextFormField(
                          controller: number_controller,
                          cursorColor: BLACK_GREYCOLOR,
                          decoration: InputDecoration(
                            hintText: "Enter your number",
                            hintStyle: TextStyle(
                                fontSize: 16, color: BLACK_GREYCOLOR),
                            focusedBorder: OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none),
                            prefixIcon: Icon(
                              Icons.phone_android,
                              color: BLACK_COLOR,
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Mobile number is Empty";
                            } else {}
                            return null;
                          },
                          keyboardType: TextInputType.number,
                          autofocus: false,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding:  EdgeInsets.only(left: 25,right: 25,top: h*0.06),
                child: DefaultButton(width: w*1, height: h*0.06, color: WHITE_COLOR, text: "Update", press: (){
                  ///Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomAppbar(currentindex: 0,)));
                  UpdateProfileData();

                }, textcolor: LIGHT_COLOR),
              )
            ],
          ),
        ),
      ),
    );
  }


  ProfileData() async {
    var data = {'user_id': '64'};
    try {
      var res =
      await ApiProvider().postRequest(apiUrl: 'edit-profile-user', data: data);
      print(res);
      if (res['status'].toString() == '1') {
        setState(() {

 name=res['data']['username'];
 mobile=res['data']['mobile'];
 email=res['data']['email'];
 profileImage=res['data']['profileImage'];
 url=res['url'];


        });

        name_controller.text=name;
        email_controller.text=email;
        number_controller.text=mobile;

        print(name);
        print(mobile);
        print(email);
        print(profileImage);
      } else {}
    } catch (e) {
      print(e.toString());
    }
  }

  UpdateProfileData() async {

  var Name = name_controller.text;
  var Email = email_controller.text;
  var Mobile = number_controller.text;

    var data = {
      'user_id': '64',
    'username':Name,
    'mobile':Email,
    'email':Mobile,
    'profileImage':pickedImage.toString() =='null'?null:pickedImage!.path
    };
    try {
      var res = await ApiProvider().UpdateProfile(data: data);
      print(res);
      if (res['status'].toString() == '1') {
        setState(() {

          name=res['data']['username'];
          mobile=res['data']['mobile'];
          email=res['data']['email'];
          profileImage=res['data']['profileImage'];
          url=res['url'];


        });

        name_controller.text=name;
        email_controller.text=email;
        number_controller.text=mobile;

        print(name);
        print(mobile);
        print(email);
        print(profileImage);
      } else {}
    } catch (e) {
      print(e.toString());
    }
  }


}
