// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../drawer/darawernavegable.dart';

class Act12 extends StatefulWidget {
  const Act12({super.key, required this.title});

  final String title;

  @override
  State<Act12> createState() => _Act12State();
}

class _Act12State extends State<Act12> {
  bool isLeft = true;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _ninioEdad1 = TextEditingController();
  final TextEditingController _ninioEdad2 = TextEditingController();
  final TextEditingController _ninioEdad3 = TextEditingController();
  bool hasChildren = false;
  DateTime? fechaNacimiento;
  String? provinciaElegida;
  List<String> hobbies = [];
  String? genero;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ejercicios Flutter act 12"),
      ),
      drawer: const DrawerNavegable(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SwitchListTile(
              title: const Text("Cambio de formulario"),
              value: isLeft,
              onChanged: (value) {
                setState(() {
                  isLeft = value;
                });
              },
            ),
            Expanded(
              child: Form(
                key: _formKey,
                child: isLeft ? _parteDerecho() : _parteIzquierda(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _parteIzquierda() {
    return ListView(
      children: [
        _campoTexto("Nombre completo", _nameController, r'^[a-zA-Z ]+\$'),
        _campoTexto("Correo electrónico", _emailController,
            r'^[^@\s]+@[^@\s]+\.[^@\s]+\$'),
        _campoTexto("Teléfono", _phoneController, r'^[0-9]{9,10}\$'),
        CheckboxListTile(
          title: const Text("¿Tiene hijos?"),
          value: hasChildren,
          onChanged: (value) {
            setState(() {
              hasChildren = value ?? false;
            });
          },
        ),
        if (hasChildren) ...[
          _campoTexto("Edad hijo 1", _ninioEdad1, r'^[0-9]{1,2}\$'),
          _campoTexto("Edad hijo 2", _ninioEdad2, r'^[0-9]{1,2}\$'),
          _campoTexto("Edad hijo 3", _ninioEdad3, r'^[0-9]{1,2}\$'),
        ],
      ],
    );
  }

  Widget _parteDerecho() {
    return ListView(
      children: [
        TextFormField(
          decoration: const InputDecoration(labelText: "Fecha de nacimiento"),
          readOnly: true,
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1900),
              lastDate: DateTime.now(),
            );
            if (pickedDate != null) {
              setState(() {
                fechaNacimiento = pickedDate;
              });
            }
          },
          validator: (value) =>
              fechaNacimiento == null ? "Seleccione una fecha" : null,
        ),
        DropdownButtonFormField<String>(
          decoration: const InputDecoration(
              labelText: "provincias Ciudad de Andalucía"),
          items: ["Sevilla", "Málaga", "Granada", "Córdoba", "Almería"]
              .map((city) {
            return DropdownMenuItem(
              value: city,
              child: Text(city),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              provinciaElegida = value;
            });
          },
        ),
        Column(
          children: [
            const Text("Aficiones"),
            ...["Deporte", "Cocina", "Videojuegos", "Cine", "Viajar"]
                .map((hobby) {
              return CheckboxListTile(
                title: Text(hobby),
                value: hobbies.contains(hobby),
                onChanged: (value) {
                  setState(() {
                    if (value == true) {
                      hobbies.add(hobby);
                    } else {
                      hobbies.remove(hobby);
                    }
                  });
                },
              );
            }),
          ],
        ),
        Column(
          children: [
            const Text("Sexo"),
            RadioListTile(
              title: const Text("Hombre"),
              value: "Hombre",
              groupValue: genero,
              onChanged: (value) => setState(() => genero = value),
            ),
            RadioListTile(
              title: const Text("Mujer"),
              value: "Mujer",
              groupValue: genero,
              onChanged: (value) => setState(() => genero = value),
            ),
            RadioListTile(
              title: const Text("Prefiero no contestar"),
              value: "Prefiero no contestar",
              groupValue: genero,
              onChanged: (value) => setState(() => genero = value),
            ),
          ],
        ),
      ],
    );
  }

  Widget _campoTexto(
      String label, TextEditingController controller, String pattern) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(labelText: label),
      validator: (value) {
        if (value == null || !RegExp(pattern).hasMatch(value)) {
          return "Introduce un valor válido";
        }
        return null;
      },
    );
  }
}
