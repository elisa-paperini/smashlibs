library smashlibs;

import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:after_layout/after_layout.dart';
import 'package:dart_hydrologis_db/dart_hydrologis_db.dart';
import 'package:dart_hydrologis_utils/dart_hydrologis_utils.dart' as HU;
import 'package:dart_jts/dart_jts.dart' as JTS;
import 'package:device_info_plus/device_info_plus.dart'
    if (dart.library.html) 'web_stubs.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_material_pickers/flutter_material_pickers.dart';
import 'package:flutter_tags_x/flutter_tags_x.dart';
import 'package:image_picker/image_picker.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path_provider_ex/path_provider_ex.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:proj4dart/proj4dart.dart';
import 'package:flutter_screen_wake/flutter_screen_wake.dart';
import 'package:share_extend/share_extend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smashlibs/com/hydrologis/flutterlibs/utils/logging.dart';
import 'package:smashlibs/generated/l10n.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wkt_parser/wkt_parser.dart' as wkt_parser;

part 'com/hydrologis/dartlibs/dartlibs.dart';
part 'com/hydrologis/flutterlibs/camera/camera.dart';
part 'com/hydrologis/flutterlibs/gps/gps.dart';
part 'com/hydrologis/flutterlibs/filesystem/filemanagement.dart';
part 'com/hydrologis/flutterlibs/filesystem/workspace.dart';
part 'com/hydrologis/flutterlibs/forms/forms.dart';
part 'com/hydrologis/flutterlibs/forms/forms_widgets.dart';
part 'com/hydrologis/flutterlibs/network/download_file_listtile.dart';
part 'com/hydrologis/flutterlibs/network/download_file_progress.dart';
part 'com/hydrologis/flutterlibs/network/network_helper.dart';
part 'com/hydrologis/flutterlibs/theme/colors.dart';
part 'com/hydrologis/flutterlibs/theme/icons.dart';
part 'com/hydrologis/flutterlibs/theme/theme.dart';
part 'com/hydrologis/flutterlibs/ui/dialogs.dart';
part 'com/hydrologis/flutterlibs/ui/progress.dart';
part 'com/hydrologis/flutterlibs/ui/sld.dart';
part 'com/hydrologis/flutterlibs/ui/tables.dart';
part 'com/hydrologis/flutterlibs/ui/ui.dart';
part 'com/hydrologis/flutterlibs/utils/device.dart';
part 'com/hydrologis/flutterlibs/utils/permissions.dart';
part 'com/hydrologis/flutterlibs/utils/preferences.dart';
part 'com/hydrologis/flutterlibs/utils/projection.dart';
part 'com/hydrologis/flutterlibs/utils/screen.dart';
part 'com/hydrologis/flutterlibs/utils/notifier.dart';
part 'com/hydrologis/flutterlibs/utils/share.dart';
part 'com/hydrologis/flutterlibs/utils/validators.dart';
part 'com/hydrologis/flutterlibs/projectdb/project_db.dart';
part 'com/hydrologis/flutterlibs/projectdb/images.dart';
part 'com/hydrologis/flutterlibs/projectdb/logs.dart';
part 'com/hydrologis/flutterlibs/projectdb/notes.dart';
part 'com/hydrologis/flutterlibs/projectdb/othertables.dart';
