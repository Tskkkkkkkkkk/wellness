import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'profile_screen.dart';
import 'quotes_detail_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wellness Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileScreen()),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 24.h),
              Text(
                'Good Morning!',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                'How are you feeling today?',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 32.h),
              Container(
                padding: EdgeInsets.all(20.w),
                decoration: BoxDecoration(
                  color: const Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Daily Quote',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      '"The only way to do great work is to love what you do."',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.grey[300],
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      '- Steve Jobs',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const QuotesDetailScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                      ),
                      child: Text(
                        'Read More Quotes',
                        style: TextStyle(fontSize: 14.sp),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.h),
              Row(
                children: [
                  Expanded(
                    child: _buildFeatureCard(
                      'Meditation',
                      Icons.self_improvement,
                          () {},
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: _buildFeatureCard(
                      'Exercise',
                      Icons.fitness_center,
                          () {},
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  Expanded(
                    child: _buildFeatureCard(
                      'Nutrition',
                      Icons.restaurant,
                          () {},
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: _buildFeatureCard(
                      'Sleep',
                      Icons.bedtime,
                          () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureCard(String title, IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: const Color(0xFF1E1E1E),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          children: [
            Icon(
              icon,
              size: 32.sp,
              color: Colors.white,
            ),
            SizedBox(height: 8.h),
            Text(
              title,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}