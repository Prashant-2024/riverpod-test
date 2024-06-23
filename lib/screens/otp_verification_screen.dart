import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/auth_provider.dart';

class OTPVerificationScreen extends ConsumerWidget {
  final String phoneNumber;
  final TextEditingController _otpController = TextEditingController();

  OTPVerificationScreen({required this.phoneNumber});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('Verify OTP')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('A verification code has been sent to $phoneNumber'),
            TextField(
              controller: _otpController,
              decoration: InputDecoration(labelText: 'Enter OTP'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final authService = ref.read(authServiceProvider);
                await authService.verifyOTP(_otpController.text, context);
              },
              child: Text('Verify OTP'),
            ),
          ],
        ),
      ),
    );
  }
}
