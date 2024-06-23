import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_auth/components/rounded_button.dart';
import 'package:riverpod_auth/constants.dart';
import '../provider/auth_provider.dart';

class PhoneNumberInputScreen extends ConsumerWidget {
  final TextEditingController _phoneController = TextEditingController();

  static const String id = 'phoneNumber';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellowAccent,
        appBar: AppBar(title: Text('Phone Login')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _phoneController,
                decoration:
                    kTextFieldDecoration.copyWith(hintText: "Phone Number"),
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 20),
              RoundedButton(
                buttonColor: Colors.black54,
                onPressed: () async {
                  final authService = ref.read(authServiceProvider);
                  await authService.sendOTP(_phoneController.text, context);
                },
                buttonText: "Send OTP",
              )
            ],
          ),
        ),
      ),
    );
  }
}
