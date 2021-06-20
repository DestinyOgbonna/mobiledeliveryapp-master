import 'package:deliverysystem/src/pages/Edit_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class UserProfile extends StatefulWidget {
  const UserProfile({Key key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/user.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode((Colors.black).withOpacity(0.8), BlendMode.dstATop)

                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:219.0, left: 13),
                child: Text('Sarah Logan', style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, fontSize: 30, color: Colors.white),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:308.0),
              child: ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50) ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.6,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        child: Center(child: Padding(
                          padding: const EdgeInsets.only(top:19.0),
                          child: Text('Profile', style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, fontSize: 30, color: Colors.blueAccent)),
                        )),
                      ),
                      SizedBox(height: 33,),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: Column(
                            children: [
                              SizedBox(height: 13,),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left:18.0),
                                    child: Text('Name :',style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, fontSize: 15, color: Colors.black)),
                                  ),
                                  SizedBox(width: 105,),
                                  Text('Sarah Logan',style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, fontSize: 13, color: Colors.blueAccent))
                                ],
                              ),
                              Divider(
                                height: 34,
                                thickness: 1,
                                color: Colors.black12.withOpacity(0.5),
                                indent: 13,
                                endIndent:  13,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left:18.0),
                                    child: Text('Email : ',style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, fontSize: 15, color: Colors.black)),
                                  ),
                                  SizedBox(width: 105,),
                                  Text('sarahlogan@gmail.com',style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, fontSize: 13, color: Colors.blueAccent)),
                                ],
                              ),


                              Divider(
                                height: 34,
                                thickness: 1,
                                color: Colors.black12.withOpacity(0.5),
                                indent: 13,
                                endIndent:  13,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left:18.0),
                                    child: Text('Sex : ',style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, fontSize: 15, color: Colors.black)),
                                  ),
                                  SizedBox(width: 119,),
                                  Text('Female',style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, fontSize: 13, color: Colors.blueAccent)),
                                ],
                              ),


                              Divider(
                                height: 34,
                                thickness: 1,
                                color: Colors.black12.withOpacity(0.5),
                                indent: 13,
                                endIndent:  13,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left:18.0),
                                    child: Text('Occupation : ',style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, fontSize: 15, color: Colors.black)),
                                  ),
                                  SizedBox(width: 65,),
                                  Text('Student',style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, fontSize: 13, color: Colors.blueAccent)),
                                ],
                              ),

                              Divider(
                                height: 34,
                                thickness: 1,
                                color: Colors.black12.withOpacity(0.5),
                                indent: 13,
                                endIndent:  13,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left:18.0),
                                    child: Text('D.O.B :',style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, fontSize: 15, color: Colors.black)),
                                  ),
                                  SizedBox(width: 110,),
                                  Text('13/04/1999',style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, fontSize: 13, color: Colors.blueAccent),)
                                ],
                              ),
                              Divider(
                                height: 34,
                                thickness: 1,
                                color: Colors.black12.withOpacity(0.5),
                                indent: 13,
                                endIndent:  13,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left:11.0),
                                    child: Text('Address :',style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, fontSize: 15, color: Colors.black)),
                                  ),
                                  SizedBox(width: 100, ),
                                  Expanded(child: Text('No 30, Royal Road, Flic en Flac, Rumuokoro, Mauritius',style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, fontSize: 13, color: Colors.blueAccent))),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                     SizedBox(height: 30,),
                       Padding(
                         padding: const EdgeInsets.only(left:31, right: 31),
                         child: ClipRRect(
                           borderRadius:  BorderRadius.all(Radius.circular(30)),
                           child: InkWell(
                             onTap: (){
                               Navigator.of(context).push
                               (new MaterialPageRoute(builder: (context)=> new EditProfile()));
                               },
                             child: Container(
                              height: 50,
                               width: MediaQuery.of(context).size.width,
                               color: Colors.orangeAccent,

                               child: Center(child: Text('Edit Profile',style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, fontSize: 13, color: Colors.white))),
                             ),
                           ),
                         ),
                       )
                    ],
                  ),

                ),
              ),
            ),
]
        ),
      ),
    );
  }
}
