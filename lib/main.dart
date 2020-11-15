import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme: NeumorphicThemeData(
        baseColor: Color(0xFFFFFFFF),
        lightSource: LightSource.topLeft,
        depth: 10,
      ),
      darkTheme: NeumorphicThemeData(
        baseColor: Color(0xFF3E3E3E),
        lightSource: LightSource.topLeft,
        depth: 6,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffc2c2c2),
      body: Column(
        children: [
          SizedBox(
            height: 90,
          ),
          Center(
            child: Neumorphic(
              style: NeumorphicStyle(
                shadowLightColorEmboss: Color(0xffccc5c1),
                shadowDarkColorEmboss: Color(0xffccc5c1),
                surfaceIntensity: 5,
                border: NeumorphicBorder(color: Color(0xffccc5c1), width: 3),
                lightSource: LightSource.bottom,
                depth: 5,
                intensity: 12,
                shadowDarkColor: Color(0xffccc5c1),
                shadowLightColor: Color(0xffccc5c1),
                boxShape: NeumorphicBoxShape.circle(),
              ),
              child: Container(
                alignment: Alignment.center,
                width: 290,
                height: 290,
                color: Color(0xffc7c0bb),
                child: Neumorphic(
                  style: NeumorphicStyle(
                      depth: 0.1,
                      surfaceIntensity: 3,
                      intensity: 3,
                      shadowDarkColor: Color(0xffd4d4d4),
                      boxShape: NeumorphicBoxShape.circle(),
                      border: NeumorphicBorder(
                        color: Color(0xffffc759),
                        width: 2,
                      )),
                  child: Container(
                    alignment: Alignment.center,
                    width: 247,
                    height: 247,
                    color: Color(0xffd4d4d4),
                    child: Neumorphic(
                      style: NeumorphicStyle(
                          shadowLightColorEmboss: Color(0xffccc5c1),
                          shadowDarkColorEmboss: Color(0xffccc5c1),
                          depth: 22,
                          surfaceIntensity: 6,
                          intensity: 12,
                          shadowDarkColor: Color(0xffd4d4d4),
                          boxShape: NeumorphicBoxShape.circle(),
                          border: NeumorphicBorder(
                            color: Color(0xffd4d4d4),
                            width: 3,
                          )),
                      child: Container(
                        alignment: Alignment.center,
                        width: 240,
                        height: 240,
                        color: Color(0xffd0d0d0),
                        child: Text(
                          '21 °',
                          style: TextStyle(
                              color: Color(0xff3e3930),
                              fontSize: 45,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
