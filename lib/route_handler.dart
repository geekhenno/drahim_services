import 'dart:convert';
import 'dart:io';
import 'package:drahim_services/drahim_service.dart';
import 'package:drahim_services/label.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'dart:math';

final router = Router()..get('/services', _handler);
Future<Response> _handler(Request request) async {
  List<DrahimService> services = [
    DrahimService(
      title: Label(en: 'Investment Calculator', ar: 'حاسبة الاستثمار'),
      description: Label(
        en: 'See how your investments grow over the years',
        ar: 'اكتشف كم ستنمو استثماراتك على مدى السنوات القادمة',
      ),
    ),
    DrahimService(
      title: Label(
          en: 'Link External Portfolio', ar: 'ربط محفظة استثمارية خارجية'),
      description: Label(
        en: 'Track your external investments seamlessly',
        ar: 'تابع استثماراتك الخارجية بكل سهولة',
      ),
    ),
    DrahimService(
      title: Label(en: 'Custom Portfolios', ar: 'تخصيص المحافظ'),
      description: Label(
        en: 'Design your portfolio to match your expertise and goals',
        ar: 'صمم محفظتك الاستثمارية بما يناسب خبرتك وأهدافك',
      ),
    ),
    DrahimService(
      title: Label(en: 'Investment Goals', ar: 'الأهداف الاستثمارية'),
      description: Label(
        en: 'Set your goals and plan step by step to achieve them',
        ar: 'حدد أهدافك وخطط لتحقيقها خطوة بخطوة',
      ),
    ),
    DrahimService(
      title: Label(en: 'Monthly Investments', ar: 'الاستقطاع الشهري'),
      description: Label(
        en: 'Enable monthly deductions to meet your investment goals with ease',
        ar: 'فعّل الاستقطاع الشهري لتحقيق أهدافك الاستثمارية بسهولة',
      ),
    ),
    DrahimService(
      title:
          Label(en: 'Create Investment Portfolio', ar: 'فتح محفظة استثمارية'),
      description: Label(
        en: 'Create a portfolio tailored to your financial goals',
        ar: 'أنشئ محفظة استثمارية تناسب أهدافك المالية',
      ),
    ),
  ];
  final random = Random();
  final randomNumber = random.nextInt(3) + 2;
  await Future.delayed(Duration(seconds: randomNumber));

  return Response.ok(
    jsonEncode(
      {
        'main_service': Label(
          en: 'Investment Services',
          ar: 'خدمات الاستثمار',
        ).toJson(),
        'services': services.map((s) => s.toJson()).toList(),
      },
    ),
    headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
    },
  );
}
