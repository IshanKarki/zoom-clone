import "package:flutter/material.dart";
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:zoom_clone/universal_variables.dart';

class JoinMeetingScreen extends StatefulWidget {
  @override
  _JoinMeetingScreenState createState() => _JoinMeetingScreenState();
}

class _JoinMeetingScreenState extends State<JoinMeetingScreen> {
  TextEditingController _controller = TextEditingController();
  bool isVideoOff = true;
  bool isAudioMuted = true;

  joinMeeting() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              Text(
                "Room Code",
                style: ralewayStyle(20),
              ),
              SizedBox(
                height: 20,
              ),
              PinCodeTextField(
                backgroundColor: Colors.white,
                appContext: context,
                autoDisposeControllers: false,
                length: 6,
                onChanged: (value) {},
                animationType: AnimationType.fade,
                pinTheme: PinTheme(shape: PinCodeFieldShape.underline),
                animationDuration: Duration(microseconds: 300),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _controller,
                style: montserratStyle(20),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Username(this will be visible in the meeting)",
                  labelStyle: ralewayStyle(15),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              CheckboxListTile(
                value: isVideoOff,
                onChanged: (val) {
                  setState(() {
                    isVideoOff = val;
                  });
                },
                title: Text(
                  "Video Off",
                  style: ralewayStyle(18, Colors.black),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              CheckboxListTile(
                value: isAudioMuted,
                onChanged: (val) {
                  setState(() {
                    isAudioMuted = val;
                  });
                },
                title: Text(
                  "Audio Muted",
                  style: ralewayStyle(18, Colors.black),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "You can change these settings in your meeting when you join",
                style: ralewayStyle(15),
                textAlign: TextAlign.center,
              ),
              Divider(
                height: 48,
                thickness: 2.0,
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: joinMeeting,
                child: Container(
                  width: double.maxFinite,
                  height: 64,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: GradientColors.facebookMessenger,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Join Meeting",
                      style: montserratStyle(20, Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
