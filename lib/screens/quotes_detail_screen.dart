import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuotesDetailScreen extends StatelessWidget {
  const QuotesDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> quotes = [
      {
        'quote': 'The only way to do great work is to love what you do.',
        'author': 'Steve Jobs'
      },
      {
        'quote': 'Innovation distinguishes between a leader and a follower.',
        'author': 'Steve Jobs'
      },
      {
        'quote': 'Life is what happens to you while you\'re busy making other plans.',
        'author': 'John Lennon'
      },
      {
        'quote': 'The future belongs to those who believe in the beauty of their dreams.',
        'author': 'Eleanor Roosevelt'
      },
      {
        'quote': 'It is during our darkest moments that we must focus to see the light.',
        'author': 'Aristotle'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inspirational Quotes'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 24.h),
              Text(
                'Daily Inspiration',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8.h),
              Text(
                'Find motivation in these powerful quotes',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32.h),
              Expanded(
                child: ListView.builder(
                  itemCount: quotes.length,
                  itemBuilder: (context, index) {
                    final quote = quotes[index];
                    return Container(
                      margin: EdgeInsets.only(bottom: 20.h),
                      padding: EdgeInsets.all(20.w),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1E1E1E),
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.format_quote,
                            size: 32.sp,
                            color: Colors.white.withOpacity(0.7),
                          ),
                          SizedBox(height: 12.h),
                          Text(
                            quote['quote']!,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              height: 1.5,
                            ),
                          ),
                          SizedBox(height: 16.h),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              '- ${quote['author']}',
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}