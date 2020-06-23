library smashlibs;

import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'dart:convert';
import 'dart:collection';
import 'package:dio/adapter.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'package:dart_hydrologis_db/dart_hydrologis_db.dart';
import 'package:dart_hydrologis_utils/dart_hydrologis_utils.dart';
import 'package:dart_jts/dart_jts.dart' as JTS;
import 'package:device_info/device_info.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path_provider_ex/path_provider_ex.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_extend/share_extend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stack_trace/stack_trace.dart';
import 'package:proj4dart/proj4dart.dart';
import 'package:wkt_parser/wkt_parser.dart' as wkt_parser;
import 'package:screen/screen.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:url_launcher/url_launcher.dart';

part 'com/hydrologis/dartlibs/dartlibs.dart';
part 'com/hydrologis/flutterlibs/camera/camera.dart';
part 'com/hydrologis/flutterlibs/database/mbtiles.dart';
part 'com/hydrologis/flutterlibs/filesystem/filemanagement.dart';
part 'com/hydrologis/flutterlibs/filesystem/workspace.dart';
part 'com/hydrologis/flutterlibs/network/download_file_listtile.dart';
part 'com/hydrologis/flutterlibs/network/download_file_progress.dart';
part 'com/hydrologis/flutterlibs/theme/colors.dart';
part 'com/hydrologis/flutterlibs/theme/icons.dart';
part 'com/hydrologis/flutterlibs/forms/forms.dart';
part 'com/hydrologis/flutterlibs/forms/forms_widgets.dart';
part 'com/hydrologis/flutterlibs/network/network_helper.dart';
part 'com/hydrologis/flutterlibs/theme/theme.dart';
part 'com/hydrologis/flutterlibs/ui/dialogs.dart';
part 'com/hydrologis/flutterlibs/ui/progress.dart';
part 'com/hydrologis/flutterlibs/ui/tables.dart';
part 'com/hydrologis/flutterlibs/ui/ui.dart';
part 'com/hydrologis/flutterlibs/utils/device.dart';
part 'com/hydrologis/flutterlibs/utils/permissions.dart';
part 'com/hydrologis/flutterlibs/utils/preferences.dart';
part 'com/hydrologis/flutterlibs/utils/projection.dart';
part 'com/hydrologis/flutterlibs/utils/screen.dart';
part 'com/hydrologis/flutterlibs/utils/share.dart';
part 'com/hydrologis/flutterlibs/utils/validators.dart';
