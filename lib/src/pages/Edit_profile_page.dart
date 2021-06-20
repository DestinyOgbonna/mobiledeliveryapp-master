import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.2,
              color: Colors.orangeAccent,
              // decoration: BoxDecoration(
              //   image: DecorationImage(
              //       image: AssetImage('assets/images/user.jpg'),
              //       fit: BoxFit.cover,
              //       colorFilter: ColorFilter.mode((Colors.black).withOpacity(0.8), BlendMode.dstATop)
              //
              //   ),
              // ),
              child: Padding(
                padding: const EdgeInsets.only(top: 90.0, left: 13),
                child: Text(
                  'Edit Profile.',
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 140),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.9e,
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 13,
                      ),
                      Container(
                        child: CircleAvatar(
                            radius: 80.0,
                            backgroundImage: AssetImage('assets/images/user.jpg'),
                            child: Padding(
                              padding: const EdgeInsets.only(left:98.0, top: 90),
                              child: Icon(Icons.camera_alt_outlined, size: 30,color: Colors.orangeAccent,),
                            )),
                      ),

                      SizedBox(height: 19,),

                      Container(

                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: buildTextField(
                              Icons.person, "Enter Name", false, true
                          ),
                        ),
                      ),

                      Container(

                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: buildTextField(
                              Icons.mail_outline, "Enter Email", false, true
                          ),
                        ),
                      ),

                      Container(

                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: buildTextField(
                              Icons.group, "Gender", false, true
                          ),
                        ),
                      ),

                      Container(

                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: buildTextField(
                              Icons.work, "Occupation", false, true
                          ),
                        ),
                      ),

                      Container(

                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: buildTextField(
                              Icons.calendar_today_outlined, "Birth Date", false, true
                          ),
                        ),
                      ),

                      Container(

                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: buildTextField(
                              Icons.mail_outline, "Address", false, true
                          ),
                        ),
                      ),

                      SizedBox(height: 13,),

                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(right:118.0),
                          child: Text('Change Password',style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, fontSize: 19),),
                        ),
                      ),

                      SizedBox(height: 13,),
                      Container(

                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: buildTextField(
                              Icons.lock_outline, "Old Password", false, true
                          ),
                        ),
                      ),

                      Container(

                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: buildTextField(
                              Icons.lock_outline, "New Password", false, true
                          ),
                        ),
                      ),
                     SizedBox (height: 40,),

                      Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:60.0),
                              child: ClipRRect(
                                borderRadius:  BorderRadius.all(Radius.circular(30)),
                                child: Container(
                                  height: 50,
                                  color: Colors.orangeAccent,
                                  width: MediaQuery.of(context).size.width * 0.3,
                                  child: Center(child: Text('Cancel',style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, fontSize: 13, color: Colors.white))),
                                ),
                              ),
                            ),

                            SizedBox(width: 30,),
                            ClipRRect(
                              borderRadius:  BorderRadius.all(Radius.circular(30)),
                              child: Container(
                                height: 50,
                                color: Colors.orangeAccent,
                                width: MediaQuery.of(context).size.width* 0.3,
                                child: Center(child: Text('Submit',style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, fontSize: 13, color: Colors.white))),
                              ),
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ),
            ),



          ],


        ),
      ),
    );
  }
}





Widget buildTextField(
    IconData icon, String hintText, bool isPassword, bool isEmail) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8.0),
    child: TextField(
      style: GoogleFonts.montserrat(color: Colors.black54, fontSize: 19),
      // obscureText: isPassword,
      // keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Colors.orangeAccent,
        ),
        // border type enabled and border styling
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.orangeAccent),
          borderRadius: BorderRadius.all(Radius.circular(35.0)),
        ),

        // focusedBorder: OutlineInputBorder( for the outline border

        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.deepOrange),
          borderRadius: BorderRadius.all(Radius.circular(35.0)),
        ),
        contentPadding: EdgeInsets.all(10),
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 14, color:Colors.grey),
      ),
    ),
  );
}

