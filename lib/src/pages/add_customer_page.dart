import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/src/bloc/create_customer_cubit/create_customer_cubit.dart';
import 'package:test_app/src/bloc/get_customer_cubit/get_customer_cubit.dart';

class AddCustomerPage extends StatefulWidget {
  const AddCustomerPage({super.key});

  @override
  State<AddCustomerPage> createState() => _AddCustomerPageState();
}

class _AddCustomerPageState extends State<AddCustomerPage> {
  final userNameController = TextEditingController();
  final nameController = TextEditingController();
  final lastController = TextEditingController();
  final phoneController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CreateCustomerCubit>();

    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue[200],
        title: const Text('Test App'),
        centerTitle: true,
      ),
      body: BlocConsumer<CreateCustomerCubit, CreateCustomerState>(
        listener: (context, state) {
          if (state is CreateCustomerSuccess) {
            final id = state.data?.id;
            context.read<GetCustomerCubit>().loadCustomer(id ?? '0');
            Navigator.pop(context);
          }
          if (state is CreateCustomerError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.error ?? 'Error')),
            );
          }
        },
        builder: (context, state) {
          return Form(
            key: _formKey,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                const SizedBox(height: 20),
                CustomTextField(
                  validator: _userValidator,
                  controller: userNameController,
                  maxlength: 20,
                  hintText: 'Username',
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  controller: nameController,
                  hintText: 'First name',
                  validator: _nameValidator,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  controller: lastController,
                  hintText: 'Last name',
                  validator: _lastNameValidator,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  controller: phoneController,
                  hintText: 'Phone number',
                  validator: _phoneValidator,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    submit(cubit);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.blue[300],
                    ),
                  ),
                  child: state is CreateCustomerLoading
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(color: Colors.white),
                        )
                      : const Text('Submit'),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  void submit(CreateCustomerCubit cubit) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      cubit.createCustomer(
        userName: userNameController.text,
        firstName: nameController.text,
        lastName: lastController.text,
        phoneNumber: phoneController.text,
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter all fields')),
      );
    }
  }

  String? _userValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'User cannot be empty';
    } else if (userNameController.text.length > 20) {
      return 'Invalid username';
    } else {
      return null;
    }
  }

  String? _nameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Name cannot be empty';
    } else {
      return null;
    }
  }

  String? _lastNameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Lastname cannot be empty';
    } else {
      return null;
    }
  }

  String? _phoneValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone Number cannot be empty';
    } else {
      return null;
    }
  }
}

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String? hintText;
  final int? maxlength;

  const CustomTextField({
    super.key,
    this.controller,
    this.hintText,
    this.validator,
    this.maxlength,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      maxLength: maxlength,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 16,
        ),
        filled: true,
        labelText: hintText,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
