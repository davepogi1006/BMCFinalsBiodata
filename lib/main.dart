import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Biodata',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF567469),
          surface: const Color(0xFFF8F8F5),
        ),
        scaffoldBackgroundColor: const Color(0xFFF8F8F5),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFF8F8F5),
          surfaceTintColor: Colors.transparent,
        ),
        useMaterial3: true,
      ),
      home: const BiodataPage(),
    );
  }
}

class BiodataPage extends StatelessWidget {
  const BiodataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Biodata',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        centerTitle: false,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 760),
          child: ListView(
            padding: const EdgeInsets.fromLTRB(20, 12, 20, 28),
            children: const [
              Card(
                color: Colors.white,
                elevation: 0,
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                  side: BorderSide(color: Color(0xFFE7EAE6)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 38,
                        backgroundColor: Color(0xFFE4F0EA),
                        foregroundColor: Color(0xFF456B5C),
                        child: Icon(Icons.person, size: 40),
                      ),
                      SizedBox(width: 18),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Text(
                                'Franco, John Dave C.',
                                style: TextStyle(
                                  fontSize: 21,
                                  height: 1.2,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF26312C),
                                ),
                              ),
                            ),
                            _InfoRow(
                              label: 'Date of birth',
                              value: '06 / 03 / 2006',
                            ),
                            _InfoRow(
                              label: 'Mobile',
                              value: '+63 963 867 9400',
                            ),
                            _InfoRow(
                              label: 'Email',
                              value: 'johndavefranco87@gmail.com',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12),
              _InfoSection(
                title: 'Objective:',
                rows: [
                  _InfoRow(
                    label: '',
                    value:
                        'To enhance the projects usability and visual appeal through Web Development while providing support to the team with basic programming ',
                  ),
                ],
              ),
              SizedBox(height: 16),
              _InfoSection(
                title: 'Personal information',
                rows: [
                  _InfoRow(label: 'Gender', value: 'Male'),
                  _InfoRow(label: 'Nationality', value: 'Filipino'),
                  _InfoRow(
                    label: 'Address',
                    value: '111 Int. Arasity St. Tinajeros, Malabon City',
                  ),
                ],
              ),
              SizedBox(height: 12),
              _InfoSection(
                title: 'Education',
                rows: [
                  _InfoRow(
                    label: 'School',
                    value: 'Global Reciprocal Colleges',
                  ),
                ],
              ),
              SizedBox(height: 12),
              _InfoSection(
                title: 'Skills:',
                rows: [
                  _InfoRow(label: '-', value: 'Basic Programming '),
                  _InfoRow(
                    label: '-',
                    value: 'Development (Frontend & Backend)',
                  ),
                  _InfoRow(label: '-', value: 'Database Management'),
                  _InfoRow(label: '-', value: 'Teamwork & Collaboratio'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _InfoSection extends StatelessWidget {
  const _InfoSection({required this.title, required this.rows});

  final String title;
  final List<_InfoRow> rows;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(14)),
        side: BorderSide(color: Color(0xFFE7EAE6)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: const Color(0xFF26312C),
              ),
            ),
            const SizedBox(height: 6),
            ...rows,
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 108,
            child: Text(
              label,
              style: const TextStyle(
                color: Color(0xFF718078),
                fontSize: 14,
                height: 1.45,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                color: Color(0xFF303A35),
                fontSize: 14,
                height: 1.45,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
