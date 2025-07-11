import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'login_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              SizedBox(height: 32.h),
              CircleAvatar(
                radius: 50.r,
                backgroundColor: const Color(0xFF1E1E1E),
                child: Icon(
                  Icons.person,
                  size: 60.sp,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 24.h),
              Text(
                'John Doe',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                'john.doe@email.com',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 48.h),
              _buildProfileItem('Edit Profile', Icons.edit, () {}),
              _buildProfileItem('Settings', Icons.settings, () {}),
              _buildProfileItem('Notifications', Icons.notifications, () {}),
              _buildProfileItem('Privacy Policy', Icons.privacy_tip, () {}),
              _buildProfileItem('Help & Support', Icons.help, () {}),
              SizedBox(height: 32.h),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginScreen()),
                        (route) => false,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                child: Text(
                  'Logout',
                  style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileItem(String title, IconData icon, VoidCallback onTap) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.white,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16.sp,
            color: Colors.white,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey,
          size: 16,
        ),
        onTap: onTap,
        tileColor: const Color(0xFF1E1E1E),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
    );
  }
}