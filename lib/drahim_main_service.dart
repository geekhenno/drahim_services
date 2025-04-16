import 'package:drahim_services/drahim_service.dart';
import 'package:drahim_services/label.dart';

class DrahimMainService {
  final int id;
  final Label title;
  final List<DrahimService> services;

  const DrahimMainService({
    required this.id,
    required this.title,
    required this.services,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title.toJson(),
      'sub_services': services
          .map(
            (e) => e.toJson(),
          )
          .toList(),
    };
  }

  static final data = [
    DrahimMainService(
      id: 1,
      title: Label(en: 'Investment Services', ar: 'خدمات الاستثمار'),
      services: [
        DrahimService(
          id: 1,
          title: Label(en: 'Investment Calculator', ar: 'حاسبة الاستثمار'),
          description: Label(
            en: 'See how your investments grow over the years',
            ar: 'اكتشف كم ستنمو استثماراتك على مدى السنوات القادمة',
          ),
        ),
        DrahimService(
          id: 2,
          title: Label(
              en: 'Link External Portfolio', ar: 'ربط محفظة استثمارية خارجية'),
          description: Label(
            en: 'Track your external investments seamlessly',
            ar: 'تابع استثماراتك الخارجية بكل سهولة',
          ),
        ),
        DrahimService(
          id: 3,
          title: Label(en: 'Custom Portfolios', ar: 'تخصيص المحافظ'),
          description: Label(
            en: 'Design your portfolio to match your expertise and goals',
            ar: 'صمم محفظتك الاستثمارية بما يناسب خبرتك وأهدافك',
          ),
        ),
        DrahimService(
          id: 4,
          title: Label(en: 'Investment Goals', ar: 'الأهداف الاستثمارية'),
          description: Label(
            en: 'Set your goals and plan step by step to achieve them',
            ar: 'حدد أهدافك وخطط لتحقيقها خطوة بخطوة',
          ),
        ),
        DrahimService(
          id: 5,
          title: Label(en: 'Monthly Investments', ar: 'الاستقطاع الشهري'),
          description: Label(
            en: 'Enable monthly deductions to meet your investment goals with ease',
            ar: 'فعّل الاستقطاع الشهري لتحقيق أهدافك الاستثمارية بسهولة',
          ),
        ),
        DrahimService(
          id: 6,
          title: Label(
              en: 'Create Investment Portfolio', ar: 'فتح محفظة استثمارية'),
          description: Label(
            en: 'Create a portfolio tailored to your financial goals',
            ar: 'أنشئ محفظة استثمارية تناسب أهدافك المالية',
          ),
        ),
      ],
    ),
    DrahimMainService(
      id: 2,
      title:
          Label(en: 'Expense Management Services', ar: 'خدمات متابعة المصاريف'),
      services: [
        DrahimService(
          id: 7,
          title: Label(en: 'Budgets', ar: 'أنشئ ميزانية'),
          description: Label(
            en: 'Plan weekly, monthly, or annual budgets effortlessly',
            ar: 'خطط لميزانياتك الأسبوعية، الشهرية أو السنوية بسهولة',
          ),
        ),
        DrahimService(
          id: 8,
          title: Label(en: 'Create Manual Account', ar: 'إضافة حساب يدوي'),
          description: Label(
            en: 'Manage all your bills and loans from one place',
            ar: 'تابع جميع فواتيرك وقروضك من مكان واحد',
          ),
        ),
        DrahimService(
          id: 9,
          title: Label(en: 'Link Bank Account', ar: 'ربط حساب بنكي'),
          description: Label(
            en: 'Track your bank transactions securely in real time',
            ar: 'تتبع عملياتك البنكية الفورية بشكل آمن',
          ),
        ),
        DrahimService(
          id: 10,
          title: Label(en: 'Manage Commitments', ar: 'إدارة الالتزامات'),
          description: Label(
            en: 'Netflix, YouTube, or any other subscriptions',
            ar: 'مثل يوتيوب، نيتفليكس، أو اشتراكاتك الأخرى',
          ),
        ),
      ],
    ),
    DrahimMainService(
      id: 3,
      title: Label(en: 'General Services', ar: 'خدمات عامة'),
      services: [
        DrahimService(
          id: 11,
          title: Label(en: 'Asset Management', ar: 'إدارة الأصول'),
          description: Label(
            en: 'Track your money, properties, gold, and more.',
            ar: 'تابع أموالك، عقاراتك، ذهبك، وغير ذلك..',
          ),
        ),
        DrahimService(
          id: 12,
          title: Label(en: 'Drahim GPT', ar: 'دراهم GPT'),
          description: Label(
            en: 'Ask Drahim anything using AI',
            ar: 'اسأل دراهم أي سؤال باستخدام الذكاء الصناعي',
          ),
        ),
        DrahimService(
          id: 13,
          title: Label(en: 'Drahim Plus', ar: 'دراهم بلس'),
          description: Label(
            en: 'Unlock exclusive features and extra benefits with your subscription',
            ar: 'استمتع بمزايا حصرية وخدمات إضافية مع اشتراكك',
          ),
        ),
        DrahimService(
          id: 14,
          title:
              Label(en: 'Drahim Private Membership', ar: 'عضوية دراهم الخاصة'),
          description: Label(
            en: 'A private membership offering an exceptional and personalized experience just for you',
            ar: 'عضوية خاصة بتجربة استثنائية ومخصصة لك',
          ),
        ),
        DrahimService(
          id: 15,
          title: Label(en: 'Zakat Calculator', ar: 'حاسبة الزكاة'),
          description: Label(
            en: 'Easily calculate and fulfill your zakat accurately',
            ar: 'احسب زكاتك بدقة وأخرجها بسهولة',
          ),
        ),
        DrahimService(
          id: 16,
          title: Label(en: 'Invite your friends!', ar: 'اعزم معارفك!'),
          description: Label(
            en: 'Free Drahim Plus for both of you',
            ar: 'دراهم بلس مجانًا لك وللي يعز عليك',
          ),
        ),
      ],
    ),
  ];
}
