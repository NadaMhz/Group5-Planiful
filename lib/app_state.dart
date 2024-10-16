import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _plantName = '';
  String get plantName => _plantName;
  set plantName(String value) {
    _plantName = value;
  }

  String _watering = '';
  String get watering => _watering;
  set watering(String value) {
    _watering = value;
  }

  String _rotating = '';
  String get rotating => _rotating;
  set rotating(String value) {
    _rotating = value;
  }

  String _trermerature = '';
  String get trermerature => _trermerature;
  set trermerature(String value) {
    _trermerature = value;
  }

  String _image = '';
  String get image => _image;
  set image(String value) {
    _image = value;
  }

  String _description = '';
  String get description => _description;
  set description(String value) {
    _description = value;
  }

  String _soil = '';
  String get soil => _soil;
  set soil(String value) {
    _soil = value;
  }

  String _edible = '';
  String get edible => _edible;
  set edible(String value) {
    _edible = value;
  }

  String _commanName = '';
  String get commanName => _commanName;
  set commanName(String value) {
    _commanName = value;
  }

  String _q = '';
  String get q => _q;
  set q(String value) {
    _q = value;
  }

  String _plantName1 = '';
  String get plantName1 => _plantName1;
  set plantName1(String value) {
    _plantName1 = value;
  }

  String _namee = '';
  String get namee => _namee;
  set namee(String value) {
    _namee = value;
  }

  bool _isToxic = false;
  bool get isToxic => _isToxic;
  set isToxic(bool value) {
    _isToxic = value;
  }

  bool _isIndoor = false;
  bool get isIndoor => _isIndoor;
  set isIndoor(bool value) {
    _isIndoor = value;
  }

  bool _validName = false;
  bool get validName => _validName;
  set validName(bool value) {
    _validName = value;
  }

  String _ErrorText = '';
  String get ErrorText => _ErrorText;
  set ErrorText(String value) {
    _ErrorText = value;
  }

  String _VplantName = '';
  String get VplantName => _VplantName;
  set VplantName(String value) {
    _VplantName = value;
  }

  String _correctSpelling = '';
  String get correctSpelling => _correctSpelling;
  set correctSpelling(String value) {
    _correctSpelling = value;
  }

  String _emailErrorMsg = '';
  String get emailErrorMsg => _emailErrorMsg;
  set emailErrorMsg(String value) {
    _emailErrorMsg = value;
  }

  String _passwordErrorMsg = '';
  String get passwordErrorMsg => _passwordErrorMsg;
  set passwordErrorMsg(String value) {
    _passwordErrorMsg = value;
  }

  String _nameErrorMsg = '';
  String get nameErrorMsg => _nameErrorMsg;
  set nameErrorMsg(String value) {
    _nameErrorMsg = value;
  }

  String _nationalAddressErrorMsg = '';
  String get nationalAddressErrorMsg => _nationalAddressErrorMsg;
  set nationalAddressErrorMsg(String value) {
    _nationalAddressErrorMsg = value;
  }

  String _lastnameErrorMsg = '';
  String get lastnameErrorMsg => _lastnameErrorMsg;
  set lastnameErrorMsg(String value) {
    _lastnameErrorMsg = value;
  }

  String _phoneErrorMsg = '';
  String get phoneErrorMsg => _phoneErrorMsg;
  set phoneErrorMsg(String value) {
    _phoneErrorMsg = value;
  }

  String _emailErrorMsg2 = '';
  String get emailErrorMsg2 => _emailErrorMsg2;
  set emailErrorMsg2(String value) {
    _emailErrorMsg2 = value;
  }

  String _passwordErrorMsg2 = '';
  String get passwordErrorMsg2 => _passwordErrorMsg2;
  set passwordErrorMsg2(String value) {
    _passwordErrorMsg2 = value;
  }

  String _passwordErrorMsg3 = '';
  String get passwordErrorMsg3 => _passwordErrorMsg3;
  set passwordErrorMsg3(String value) {
    _passwordErrorMsg3 = value;
  }

  String _SignUpErrorMsg = '';
  String get SignUpErrorMsg => _SignUpErrorMsg;
  set SignUpErrorMsg(String value) {
    _SignUpErrorMsg = value;
  }

  String _rateLimitErrorMsg = '';
  String get rateLimitErrorMsg => _rateLimitErrorMsg;
  set rateLimitErrorMsg(String value) {
    _rateLimitErrorMsg = value;
  }

  String _accountDisabledErrorMsg = '';
  String get accountDisabledErrorMsg => _accountDisabledErrorMsg;
  set accountDisabledErrorMsg(String value) {
    _accountDisabledErrorMsg = value;
  }

  String _emailDomainErrorMsg = '';
  String get emailDomainErrorMsg => _emailDomainErrorMsg;
  set emailDomainErrorMsg(String value) {
    _emailDomainErrorMsg = value;
  }

  String _emailForgetPassErrorMsg = '';
  String get emailForgetPassErrorMsg => _emailForgetPassErrorMsg;
  set emailForgetPassErrorMsg(String value) {
    _emailForgetPassErrorMsg = value;
  }

  bool _codeisSent = false;
  bool get codeisSent => _codeisSent;
  set codeisSent(bool value) {
    _codeisSent = value;
  }

  bool _viewrole = false;
  bool get viewrole => _viewrole;
  set viewrole(bool value) {
    _viewrole = value;
  }

  String _wtip = '';
  String get wtip => _wtip;
  set wtip(String value) {
    _wtip = value;
  }

  String _rtip = '';
  String get rtip => _rtip;
  set rtip(String value) {
    _rtip = value;
  }

  String _ftip = '';
  String get ftip => _ftip;
  set ftip(String value) {
    _ftip = value;
  }

  String _NannyStatus = 'Inactive';
  String get NannyStatus => _NannyStatus;
  set NannyStatus(String value) {
    _NannyStatus = value;
  }

  String _ExpertStatus = 'Inactive';
  String get ExpertStatus => _ExpertStatus;
  set ExpertStatus(String value) {
    _ExpertStatus = value;
  }

  bool _ProfileComplete = false;
  bool get ProfileComplete => _ProfileComplete;
  set ProfileComplete(bool value) {
    _ProfileComplete = value;
  }

  String _eperienceErrorMsg = '';
  String get eperienceErrorMsg => _eperienceErrorMsg;
  set eperienceErrorMsg(String value) {
    _eperienceErrorMsg = value;
  }

  String _rateErrorMsg = '';
  String get rateErrorMsg => _rateErrorMsg;
  set rateErrorMsg(String value) {
    _rateErrorMsg = value;
  }

  String _rateErrorMsg2 = '';
  String get rateErrorMsg2 => _rateErrorMsg2;
  set rateErrorMsg2(String value) {
    _rateErrorMsg2 = value;
  }

  bool _completedpf1 = false;
  bool get completedpf1 => _completedpf1;
  set completedpf1(bool value) {
    _completedpf1 = value;
  }

  bool _completedpf2 = false;
  bool get completedpf2 => _completedpf2;
  set completedpf2(bool value) {
    _completedpf2 = value;
  }

  String _SignInErrorMsg = '';
  String get SignInErrorMsg => _SignInErrorMsg;
  set SignInErrorMsg(String value) {
    _SignInErrorMsg = value;
  }

  String _fileName = '';
  String get fileName => _fileName;
  set fileName(String value) {
    _fileName = value;
  }

  String _secondFileName = '';
  String get secondFileName => _secondFileName;
  set secondFileName(String value) {
    _secondFileName = value;
  }

  String _ForgetPassErrorMsg = '';
  String get ForgetPassErrorMsg => _ForgetPassErrorMsg;
  set ForgetPassErrorMsg(String value) {
    _ForgetPassErrorMsg = value;
  }

  String _cvErrMsg = '';
  String get cvErrMsg => _cvErrMsg;
  set cvErrMsg(String value) {
    _cvErrMsg = value;
  }

  String _certificateErrMsg = '';
  String get certificateErrMsg => _certificateErrMsg;
  set certificateErrMsg(String value) {
    _certificateErrMsg = value;
  }

  String _EmailForgetErrorMsg = '';
  String get EmailForgetErrorMsg => _EmailForgetErrorMsg;
  set EmailForgetErrorMsg(String value) {
    _EmailForgetErrorMsg = value;
  }

  double _progressValue = 0.0;
  double get progressValue => _progressValue;
  set progressValue(double value) {
    _progressValue = value;
  }

  String _errorcurrentpass = '';
  String get errorcurrentpass => _errorcurrentpass;
  set errorcurrentpass(String value) {
    _errorcurrentpass = value;
  }

  String _plantNameErrormsg = '';
  String get plantNameErrormsg => _plantNameErrormsg;
  set plantNameErrormsg(String value) {
    _plantNameErrormsg = value;
  }

  String _Uniqueemail = '';
  String get Uniqueemail => _Uniqueemail;
  set Uniqueemail(String value) {
    _Uniqueemail = value;
  }

  String _Uniquephone = '';
  String get Uniquephone => _Uniquephone;
  set Uniquephone(String value) {
    _Uniquephone = value;
  }

  bool _isSearchPressed = false;
  bool get isSearchPressed => _isSearchPressed;
  set isSearchPressed(bool value) {
    _isSearchPressed = value;
  }
}
