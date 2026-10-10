import 'package:flutter/material.dart';
import '../widgets/profile_card.dart';
import '../widgets/interest_section.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ProfileCard(),
              SizedBox(height: 24),
              InterestSection(),
            ],
          ),
        ),
      ),
    );
  }
}