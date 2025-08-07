import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../app/hangman_game.dart';

import '../style/styled_button.dart';
import 'screen_layout.dart';
import '../database/database_helper.dart';
import '../database/user_model.dart';
import 'package:uuid/uuid.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/login';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _nameController = TextEditingController();
  bool _isCreateAccount = false;
  String _errorMessage = '';
  final _databaseHelper = DatabaseHelper();
  final _uuid = Uuid();


  Future<void> _saveName() async {
    final prefs = await SharedPreferences.getInstance();
    final name = _nameController.text.trim();
    if (name.isEmpty) {
      setState(() {
        _errorMessage = "Please enter your name";
      });
      return;
    }
    final RegExp nameRegex = RegExp(r'^[a-zA-Z\s]+$');
    if (!nameRegex.hasMatch(name)) {
      setState(() {
        _errorMessage = "Name should contain only letters and spaces";
      });
      return;
    }
    late String userId;
    if(_isCreateAccount){
      userId = _uuid.v4();
      final newUser = UserModel(userId: userId, userName: name, registrationDate: DateTime.now());
      await _databaseHelper.insertUser(newUser);
    }else{
      final users = await _databaseHelper.getAllUsers();
      final foundUser = users.where((element) => element.userName == name).firstOrNull;
      if(foundUser == null){
        setState(() {
          _errorMessage = "No user found. Please create new account";
        });
        return;
      }
      userId = foundUser.userId;
    }
    await prefs.setString('userId', userId);
    await prefs.setString('userName', name);
    Navigator.of(context).pushReplacementNamed(HangmanGame.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenLayout(
      startColor: Color(0xFF006400),
      endColor: Colors.lightGreen,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Welcome to Hangman Game!",
                style: TextStyle(
                  fontFamily: 'Arial Rounded MT Bold',
                  fontSize: 25,
                  color: Colors.yellow,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _nameController,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Arial Black',
                  color: Colors.black,
                ),
                cursorColor: Colors.blue,
                decoration: InputDecoration(
                    hintText: "Enter your name",
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    )),
              ),
              SizedBox(height: 10),
              if (_errorMessage.isNotEmpty)
                Text(
                  _errorMessage,
                  style: TextStyle(color: Colors.white,fontSize: 20),
                ),
              SizedBox(height: 10),
              StyledButton(
                text: _isCreateAccount ? "Create Account" : "Login",
                onPressed: () {
                  _saveName();
                },
                startColor: Color(0xFF1E90FF),
                endColor: Color(0xFF87CEFA),
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      _isCreateAccount = !_isCreateAccount;
                    });
                  },
                  child: Text(
                    _isCreateAccount
                        ? "Already have an account? Login."
                        : "New user? Create Account.",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }
}