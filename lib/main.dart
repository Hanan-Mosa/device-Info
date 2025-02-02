import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DeviceInfo(),
    );
  }
}
class DeviceInfo extends StatefulWidget {

   DeviceInfo({super.key});

  @override
  State<DeviceInfo> createState() => _DeviceInfoState();
}

class _DeviceInfoState extends State<DeviceInfo> {
  String deviceModel ="";
   String model ="";
  String osVersion ="";
@override
  void initState() {
    getDeviceInfo();
    super.initState();
    setState(() {

    });
  }
  getDeviceInfo()async{
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if(Platform.isAndroid){
      AndroidDeviceInfo androidDeviceInfo= await deviceInfo.androidInfo;
      deviceModel = androidDeviceInfo.model ;
      model = androidDeviceInfo.product;
      osVersion = androidDeviceInfo.version.release;
    }else if(Platform.isIOS){
      IosDeviceInfo iosDeviceInfo= await deviceInfo.iosInfo;
      deviceModel = iosDeviceInfo.model;
      model = iosDeviceInfo.modelName;
      osVersion = iosDeviceInfo.systemVersion;
    }else if(Platform.isWindows){
      WindowsDeviceInfo windowsDeviceInfo= await deviceInfo.windowsInfo;
      deviceModel = windowsDeviceInfo.productName;
      osVersion = windowsDeviceInfo.releaseId;
    }else if(Platform.isMacOS){
      MacOsDeviceInfo macOsDeviceInfo= await deviceInfo.macOsInfo;
      deviceModel = macOsDeviceInfo.model;
      model = macOsDeviceInfo.modelName;
      osVersion = macOsDeviceInfo.osRelease;
    }else if(Platform.isLinux){
      LinuxDeviceInfo linuxDeviceInfo= await deviceInfo.linuxInfo;
      deviceModel = linuxDeviceInfo.name;
      osVersion = linuxDeviceInfo.version??"";
    }else {
      debugPrint("Platform not supported");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:AppBar(
       title: Text("Device Information"),
       centerTitle: true,
       backgroundColor: Colors.indigo[200],
     ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Device Model: $deviceModel"),
            Text("Model: $model"),
            Text("OS Version: $osVersion"),
          ],
        ),
      )

    );
  }
}




