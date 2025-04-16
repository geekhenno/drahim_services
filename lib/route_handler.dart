import 'dart:convert';
import 'dart:io';
import 'package:drahim_services/drahim_main_service.dart';
import 'package:drahim_services/label.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'dart:math';

final router = Router()..get('/services', _handler);
Future<Response> _handler(Request request) async {
  final services = DrahimMainService.data;
  final random = Random();
  final randomNumber = random.nextInt(3) + 2;
  await Future.delayed(Duration(seconds: randomNumber));

  return Response.ok(
    {'services': jsonEncode(services)},
    headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
    },
  );
}
