import 'package:flutter/material.dart';
import 'package:parent_teacher_feedback_app/entities/register_api.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {

  // createAccountPressed() async {
  //   bool emailValid = RegExp(
  //           r"^[a-zA-Z0-9.a-z0-9.!#$%&'*+-/=?^`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
  //       .hasMatch(_email);
  //   if (emailValid) {
  //     //final response = await http.get(url);
  //     http.Response response =
  //         await CallRegisterAPI().registerUser(_name, _email, _password);
  //     Map responseMap = json.decode(response.body);
  //     if (response.statusCode == 200) {
  //       if (context.mounted) {
  //         Navigator.push(context,
  //             MaterialPageRoute(builder: ((context) => const MyHomePage())));
  //       }
  //     } else {
  //       //SnackBar(context, responseMap.values.first[0]);
  //     }
  //   }
  // }

  //Initial selected value
  // String dropdownvalue = 'Father';
  // var items = ['Father', 'Mother', 'Guardian'];
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController studentNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Future<RegisterUser>? _futureRegisterUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 10, 50),
        leading: Icon(
          Icons.menu,
          color: Theme.of(context).primaryColor,
        ),
        title: const Text(
          'Register With Us',
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 208, 202, 223),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8),
        child: (_futureRegisterUser == null)
            ? buildColumn()
            : buildFutureBuilder(),
      ),
    );
  }

  Column buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: nameController,
          decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.mail,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(12.0),
            ),
            hintText: 'User Name',
            fillColor: Colors.grey,
            filled: true,
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          controller: emailController,
          decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.mail,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(12.0),
            ),
            hintText: 'Email Address',
            fillColor: Colors.grey,
            filled: true,
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.password,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blueGrey),
                borderRadius: BorderRadius.circular(12.0),
              ),
              hintText: 'Password',
              fillColor: Colors.grey,
              filled: true,
            ),
          ),
        ),
        const SizedBox(height: 20,),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _futureRegisterUser = createUser(nameController.text,
                  emailController.text, passwordController.text);
            });
          },
          child: const Text('Create Account'),
        ),
      ],
    );
  }

  FutureBuilder<RegisterUser> buildFutureBuilder() {
    return FutureBuilder(
      future: _futureRegisterUser,
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          return Text(snapshot.data!.name);
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        return const CircularProgressIndicator();
      }),
    );
  }
}



//             child: Center(
//                 child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // logo
//             Image.asset(
//               'assets/parentchild.PNG',
//               height: 150,
//               width: 150,
//             ),
//             const SizedBox(height: 10),
//             const Text(
//               'Exlesior',
//               style: TextStyle(
//                 color: Colors.blue,
//                 fontSize: 17,
//                 letterSpacing: 2.0,
//               ),
//             ),
//             const SizedBox(height: 20.0),
//             //name Textfield,
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25.0),
//               child: TextField(
//                 controller: nameController,
//                 decoration: InputDecoration(
//                   prefixIcon: const Icon(
//                     Icons.people,
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: const BorderSide(color: Colors.blueGrey),
//                     borderRadius: BorderRadius.circular(12.0),
//                   ),
//                   hintText: 'Full Names',
//                   fillColor: Colors.grey,
//                   filled: true,
//                 ),
//                 onChanged: (value) {
//                   _name = value;
//                 },
//               ),
//             ),

//             const SizedBox(height: 10),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25.0),
//               child: TextField(
//                 controller: emailController,
//                 decoration: InputDecoration(
//                   prefixIcon: const Icon(
//                     Icons.mail,
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: const BorderSide(color: Colors.blueGrey),
//                     borderRadius: BorderRadius.circular(12.0),
//                   ),
//                   hintText: 'Email Address',
//                   fillColor: Colors.grey,
//                   filled: true,
//                 ),
//                 onChanged: (value) {
//                   _email = value;
//                 },
//               ),
//             ),
//             // Padding(
//             //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//             //   child: TextField(
//             //     controller: phoneController,
//             //     decoration: InputDecoration(
//             //       prefixIcon: const Icon(
//             //         Icons.phone,
//             //       ),
//             //       enabledBorder: OutlineInputBorder(
//             //         borderSide: const BorderSide(color: Colors.blueGrey),
//             //         borderRadius: BorderRadius.circular(12.0),
//             //       ),
//             //       hintText: 'Phone Number',
//             //       fillColor: Colors.grey,
//             //       filled: true,
//             //     ),
//             //   ),
//             // ),
//             const SizedBox(height: 10),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25.0),
//               child: TextField(
//                 controller: passwordController,
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   prefixIcon: const Icon(
//                     Icons.password,
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: const BorderSide(color: Colors.blueGrey),
//                     borderRadius: BorderRadius.circular(12.0),
//                   ),
//                   hintText: 'Password',
//                   fillColor: Colors.grey,
//                   filled: true,
//                 ),
//                 onChanged: (value) {
//                   _password = value;
//                 },
//               ),
//             ),

//             const SizedBox(height: 10),
//             Center(
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   //minimumSize: const Size.fromHeight(20),
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
//                 ),
//                 onPressed: () {},
//                 // onPressed: _isLoading ? null : _handleLogin(),
//                 // color: Colors.blue,
//                 // disabledColor: Colors.grey,

//                 child: Text(
//                   _isLoading ? 'Creating...' : 'Create Account',
//                   style: const TextStyle(
//                     fontSize: 15,
//                   ),
//                 ),
//               ),
//             ),

//             const SizedBox(height: 10),
//           ],
//         ))));
//   }
// }
