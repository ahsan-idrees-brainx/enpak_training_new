import 'package:enpak_training_new/extentions/Texts.dart';
import 'package:enpak_training_new/utils/AppColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/Constants.dart';

class Otpscreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _OtpState();
}
class _OtpState extends State<Otpscreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Step 2 of 3'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Enter the code sent to your email',
              style: TextStyle(fontSize: 18 , fontFamily: 'assets/fonts/plus_jakarta_sans_regular.ttf'),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildOtpTextField(context),
                _buildOtpTextField(context),
                _buildOtpTextField(context),
                _buildOtpTextField(context),
              ],
            ),
            Container(height: 52 , child:
            Expanded(  child:RoundButtonText(text: 'Verify' ,color:  Appcolors.dark_gray , backgroundColor : Appcolors.grayhint ,
                fontSize:  18 , fontFamily:  Constants.regular_font_sans ,onClick:  ()  {} ))
            )
          ],
        ),
      ),
    );
  }

  Widget _buildOtpTextField(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8.0),

      ),
      child: TextField(
        autofocus: true,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24),
        maxLength: 1,
        decoration: InputDecoration(
          counterText: '',
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Color(0xFFbdc6cf)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Color(0xff745e27)),
          ),
        ),
      ),
    );
  }
}