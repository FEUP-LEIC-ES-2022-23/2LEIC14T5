import 'package:flutter/material.dart';

class FiltersPopup extends StatefulWidget {
  const FiltersPopup({Key? key}) : super(key: key);

  @override
  FiltersPopupState createState() => FiltersPopupState();
}

class FiltersPopupState extends State<FiltersPopup> {
  String jobType = 'Unspecified';
  String language = 'Unspecified';
  String contractType = 'Unspecified';
  String location = 'Unspecified';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Search Filters'),
      content: SizedBox(
        height: 200,
        child: Column(
            children: <Widget>[
              Expanded(
                  child: Row(
                    children: [
                      const Text('Job Type: '),
                      DropdownButton<String>(
                        value: jobType,
                        icon: const Icon(Icons.arrow_downward),
                        iconSize: 20,
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.orangeAccent,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            jobType = newValue!;
                          });
                        },
                        items: <String>['Unspecified', 'Full-Time', 'Part-Time']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
              ),
              Expanded(
                  child: Row(
                    children: [
                      const Text('Language: '),
                      DropdownButton<String>(
                        value: language,
                        icon: const Icon(Icons.arrow_downward),
                        iconSize: 20,
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.orangeAccent
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            language = newValue!;
                          });
                        },
                        items: <String>['Unspecified', 'Java', 'Python', 'C#', 'C++', 'C', 'JavaScript', 'PHP', 'Ruby', 'Go', 'Swift', 'Kotlin', 'R', 'Scala', 'Rust', 'Dart', 'Elixir', 'Erlang', 'Haskell', 'Julia', 'Lua', 'Objective-C', 'Perl', 'Racket', 'SQL', 'TypeScript', 'Visual Basic', 'Assembly', 'Clojure', 'COBOL', 'F#', 'Groovy', 'Lisp', 'Matlab', 'Prolog', 'Scratch', 'Smalltalk', 'VBScript', 'VHDL', 'Other']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
              ),
              Expanded(
                  child: Row(
                    children: [
                      const Text('Contract: '),
                      DropdownButton<String>(
                        value: contractType,
                        icon: const Icon(Icons.arrow_downward),
                        iconSize: 20,
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.orangeAccent,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            contractType = newValue!;
                          });
                        },
                        items: <String>['Unspecified', 'Contrato a termo', 'Contrato sem termo', 'Estágio profissional', 'Prestação de Serviços', 'Estágio académico']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Text('Location: '),
                    DropdownButton<String>(
                      value: location,
                      icon: const Icon(Icons.arrow_downward),
                      iconSize: 20,
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.orangeAccent,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          location = newValue!;
                        });
                      },
                      items: <String>['Unspecified', 'Açores', 'Aveiro', 'Beja', 'Braga', 'Bragança', 'Castelo Branco', 'Coimbra', 'Évora', 'Faro', 'Guarda', 'Leiria', 'Lisboa', 'Madeira', 'Portalegre', 'Porto', 'Santarém', 'Setúbal', 'Viana do Castelo', 'Vila Real', 'Viseu']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
      ),
      actions: <Widget>[
        TextButton(
            onPressed: () {
              Navigator.of(context).pop({
                'jobType': jobType,
                'language': language,
                'contractType': contractType,
                'location': location,
              });
            },
            child: const Text(
                'Apply Filters'
            ),
        ),
        TextButton(
          child: const Text('Close'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}