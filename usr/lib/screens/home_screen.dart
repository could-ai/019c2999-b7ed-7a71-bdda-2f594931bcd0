import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Icon(FontAwesomeIcons.userDoctor, color: Theme.of(context).colorScheme.primary),
            const SizedBox(width: 10),
            Text(
              'Surya Digital Solutions',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: TextButton(
              onPressed: () {
                // Scroll to contact or open booking
              },
              child: const Text('Contact Us'),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const _HeroSection(),
            const _PainPointsSection(),
            const _SolutionSection(),
            const _FeaturesSection(),
            const _CtaSection(),
            const _Footer(),
          ],
        ),
      ),
    );
  }
}

class _HeroSection extends StatelessWidget {
  const _HeroSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFF5F9FF),
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
      child: Column(
        children: [
          Text(
            'Turn your clinic’s online presence into a patient-generating machine.',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF0D47A1),
              height: 1.2,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Stop losing patients to competitors. Start growing with a strategy designed for your clinic.',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 18,
              color: Colors.grey[700],
            ),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Book Your Free Consultation',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}

class _PainPointsSection extends StatelessWidget {
  const _PainPointsSection();

  @override
  Widget build(BuildContext context) {
    final painPoints = [
      'Empty waiting rooms?',
      'Missed appointments?',
      'Patients choosing competitors instead of you?',
      'Marketing agencies promising results… but delivering nothing?',
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
      child: Column(
        children: [
          Text(
            'Are you facing this in your hospital or clinic?',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 30),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: painPoints.map((point) => _PainPointCard(text: point)).toList(),
          ),
          const SizedBox(height: 30),
          Text(
            'If this feels familiar, take a breath. Because things are about to change.',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontStyle: FontStyle.italic,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}

class _PainPointCard extends StatelessWidget {
  final String text;
  const _PainPointCard({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.red.shade100),
        boxShadow: [
          BoxShadow(
            color: Colors.red.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(Icons.close, color: Colors.red.shade400),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}

class _SolutionSection extends StatelessWidget {
  const _SolutionSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF0D47A1),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
      child: Column(
        children: [
          const Icon(FontAwesomeIcons.chartLine, color: Colors.white, size: 40),
          const SizedBox(height: 20),
          Text(
            'We don’t do random marketing.',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'We build smart, data-driven growth systems for healthcare brands.',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 18,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}

class _FeaturesSection extends StatelessWidget {
  const _FeaturesSection();

  @override
  Widget build(BuildContext context) {
    final features = [
      {
        'icon': FontAwesomeIcons.bullseye,
        'title': 'Hyper-targeted campaigns',
        'desc': 'Reach patients actively looking for your services.'
      },
      {
        'icon': FontAwesomeIcons.bookOpen,
        'title': 'Educational content',
        'desc': 'Builds trust before the patient ever meets you.'
      },
      {
        'icon': FontAwesomeIcons.robot,
        'title': 'AI-powered ad strategies',
        'desc': 'Reduce your cost and increase appointment bookings.'
      },
      {
        'icon': FontAwesomeIcons.laptopMedical,
        'title': 'High-converting websites',
        'desc': 'Built to turn visitors into confirmed appointments.'
      },
      {
        'icon': FontAwesomeIcons.users,
        'title': 'Social media management',
        'desc': 'Informs, engages, and positions your clinic as the expert.'
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
      child: Column(
        children: [
          Text(
            'Our Growth System',
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF0D47A1),
            ),
          ),
          const SizedBox(height: 40),
          Wrap(
            spacing: 30,
            runSpacing: 30,
            alignment: WrapAlignment.center,
            children: features.map((f) => _FeatureItem(
              icon: f['icon'] as IconData,
              title: f['title'] as String,
              desc: f['desc'] as String,
            )).toList(),
          ),
        ],
      ),
    );
  }
}

class _FeatureItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String desc;

  const _FeatureItem({required this.icon, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFFE3F2FD),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: const Color(0xFF0D47A1), size: 24),
          ),
          const SizedBox(height: 16),
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            desc,
            style: TextStyle(fontSize: 14, color: Colors.grey[700], height: 1.5),
          ),
        ],
      ),
    );
  }
}

class _CtaSection extends StatelessWidget {
  const _CtaSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFF5F9FF),
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
      child: Column(
        children: [
          Text(
            'Stop worrying about empty slots.',
            style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            'Grow consistently. Grow smart.',
            style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600, color: const Color(0xFF0D47A1)),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.calendar_today),
            label: const Text('Book your free consultation today'),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF00BFA5), // Teal
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey[900],
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const Text(
            'Surya Digital Solutions',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 8),
          Text(
            '© 2024 All Rights Reserved',
            style: TextStyle(color: Colors.grey[500], fontSize: 12),
          ),
        ],
      ),
    );
  }
}
