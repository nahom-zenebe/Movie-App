import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
         debugShowCheckedModeBanner: false,
         home:Container()
      
    );
  }
}
