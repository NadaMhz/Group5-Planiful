// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:typed_data';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<FFUploadedFile?> documentPickerCopy() async {
  // Add your function code here!
  final selectedFiles = await selectFiles(
    allowedExtensions: ['pdf'],
    multiFile: false,
  );

  if (selectedFiles != null) {
    var selectedUploadedFiles = <FFUploadedFile>[];
    selectedUploadedFiles = selectedFiles
        .map((m) => FFUploadedFile(
              name: m.storagePath.split('/').last,
              bytes: m.bytes,
            ))
        .toList();

    // Update FFAppState with the selected file name
    FFAppState().secondFileName = selectedUploadedFiles.first.name!;

    // Debug print to verify the file name is set
    print("Selected file name: ${FFAppState().secondFileName}");

    if (selectedUploadedFiles.length == selectedFiles.length) {
      return selectedUploadedFiles.first;
    } else {
      return null;
    }
  }
  return null; // Make sure to return null if no files are selected
}

Future<SelectedFile?> selectFile({
  String? storageFolderPath,
  List<String>? allowedExtensions,
  BuildContext? c,
}) =>
    selectFiles(
      storageFolderPath: storageFolderPath,
      allowedExtensions: allowedExtensions,
      multiFile: false,
    ).then((value) => value?.first);

Future<List<SelectedFile>?> selectFiles({
  String? storageFolderPath,
  List<String>? allowedExtensions,
  bool multiFile = false,
}) async {
  final pickedFiles = await FilePicker.platform.pickFiles(
    type: allowedExtensions != null ? FileType.custom : FileType.any,
    allowedExtensions: allowedExtensions,
    withData: true,
    allowMultiple: multiFile,
  );
  if (pickedFiles == null || pickedFiles.files.isEmpty) {
    return null;
  }

  final file = pickedFiles.files.first;
  if (file.bytes == null) {
    return null;
  }
  final storagePath = file.name;
  return [
    SelectedFile(
      storagePath: storagePath,
      filePath: isWeb ? null : file.path,
      bytes: file.bytes!,
    )
  ];
}

class SelectedFile {
  const SelectedFile({
    this.storagePath = '',
    this.filePath,
    required this.bytes,
    this.dimensions,
    this.blurHash,
  });
  final String storagePath;
  final String? filePath;
  final Uint8List bytes;
  final MediaDimensions? dimensions;
  final String? blurHash;
}

class MediaDimensions {
  const MediaDimensions({
    this.height,
    this.width,
  });
  final double? height;
  final double? width;
}

String _getStoragePath(
  String? pathPrefix,
  String filePath,
  bool isVideo, [
  int? index,
]) {
  pathPrefix ??= _firebasePathPrefix();
  pathPrefix = _removeTrailingSlash(pathPrefix);
  final timestamp = DateTime.now().microsecondsSinceEpoch;
  final ext = isVideo ? 'mp4' : filePath.split('.').last;
  final indexStr = index != null ? '_$index' : '';
  return '$pathPrefix/$timestamp$indexStr.$ext';
}

String _firebasePathPrefix() {
  final currentUser = FirebaseAuth.instance.currentUser;
  if (currentUser != null) {
    return 'users/${currentUser.uid}/uploads';
  } else {
    return 'users/unknown_user/uploads'; // Fallback in case no user is signed in
  }
}

String? _removeTrailingSlash(String? path) => path != null && path.endsWith('/')
    ? path.substring(0, path.length - 1)
    : path;
