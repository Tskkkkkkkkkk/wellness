import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dashboard_screen.dart';

class UserPreferenceScreen extends StatefulWidget {
  const UserPreferenceScreen({super.key});

  @override
  State<UserPreferenceScreen> createState() => _UserPreferenceScreenState();
}

class _UserPreferenceScreenState extends State<UserPreferenceScreen> {
  final List<String> _preferences = [
    'Meditation',
    'Exercise',
    'Nutrition',
    'Sleep',
    'Mindfulness',
    'Stress Relief',
  ];

  final List<String> _selectedPreferences = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preferences'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 32.h),
              Text(
                'What are you interested in?',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8.h),
              Text(
                'Select your wellness interests',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 48.h),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.w,
                    mainAxisSpacing: 16.h,
                    childAspectRatio: 3,
                  ),
                  itemCount: _preferences.length,
                  itemBuilder: (context, index) {
                    final preference = _preferences[index];
                    final isSelected = _selectedPreferences.contains(preference);

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isSelected) {
                            _selectedPreferences.remove(preference);
                          } else {
                            _selectedPreferences.add(preference);
                          }
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: isSelected ? Colors.white : const Color(0xFF1E1E1E),
                          borderRadius: BorderRadius.circular(12.r),
                          border: Border.all(
                            color: isSelected ? Colors.white : Colors.grey.withOpacity(0.3),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            preference,
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: isSelected ? Colors.black : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 24.h),
              ElevatedButton(
                onPressed: _selectedPreferences.isNotEmpty
                    ? () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const DashboardScreen()),
                  );
                }
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                child: Text(
                  'Get Started',
                  style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
    );
  }
}