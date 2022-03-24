import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_twitter_clone/helper/utility.dart';
import 'package:flutter_twitter_clone/widgets/customFlatButton.dart';
import 'package:path_provider/path_provider.dart';

class ShareWidget extends StatefulWidget {
  const ShareWidget(
      {Key? key,
      required this.child,
      required this.socialMetaTagParameters,
      required this.id})
      : super(key: key);

  final SocialMetaTagParameters socialMetaTagParameters;
  final String id;
  static MaterialPageRoute getRoute(
      {required Widget child,
      required SocialMetaTagParameters socialMetaTagParameters,
      required String id}) {
    return MaterialPageRoute(
      builder: (_) => ShareWidget(
          child: child,
