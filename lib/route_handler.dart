import 'dart:convert';
import 'package:drahim_services/drahim_service.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

final router = Router()..get('/services', _handler);

Future<Response> _handler(Request request) async {
  List<DrahimService> enServices = [
    DrahimService(
      title: 'Investment Calculator',
      description: 'See how your investments grow over the years',
    ),
    DrahimService(
      title: 'Link External Portfolio',
      description: 'Track your external investments seamlessly',
    ),
    DrahimService(
      title: 'Custom Portfolios',
      description: 'Design your portfolio to match your expertise and goals',
    ),
    DrahimService(
      title: 'Investment Goals',
      description: 'Set your goals and plan step by step to achieve them',
    ),
    DrahimService(
      title: 'Monthly Investments',
      description:
          'Enable monthly deductions to meet your investment goals with ease',
    ),
    DrahimService(
      title: 'Create Investment Portfolio',
      description: 'Create a portfolio tailored to your financial goals',
    ),
  ];
  List<DrahimService> arServices = [
    DrahimService(
      title: 'حاسبة الاستثمار',
      description: 'اكتشف كم ستنمو استثماراتك على مدى السنوات القادمة',
    ),
    DrahimService(
      title: 'ربط محفظة استثمارية خارجية',
      description: 'تابع استثماراتك الخارجية بكل سهولة',
    ),
    DrahimService(
      title: 'تخصيص المحافظ',
      description: 'صمم محفظتك الاستثمارية بما يناسب خبرتك وأهدافك',
    ),
    DrahimService(
      title: 'الأهداف الاستثمارية',
      description: 'حدد أهدافك وخطط لتحقيقها خطوة بخطوة',
    ),
    DrahimService(
      title: 'الاستقطاع الشهري',
      description: 'فعّل الاستقطاع الشهري لتحقيق أهدافك الاستثمارية بسهولة',
    ),
    DrahimService(
      title: 'فتح محفظة استثمارية',
      description: 'أنشئ محفظة استثمارية تناسب أهدافك المالية',
    ),
  ];

  await Future.delayed(Duration(seconds: 2));
// GET /services
  return Response.ok(jsonEncode({
    'en': {
      'main_service': 'Investment Services',
      'services': enServices,
    },
    'ar': {
      'main_service': 'خدمات الاستثمار',
      'services': arServices,
    }
  }));
}
