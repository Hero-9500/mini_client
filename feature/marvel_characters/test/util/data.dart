import 'dart:convert';

final error = jsonEncode('DioException [unknown]: null\nError: {}');

final listOfCharacters = jsonEncode(
  {
    "code": 200,
    "message": "",
    "s": "ok",
    "data": {
      "results": [
        {
          "name": "3-D Man",
          "description": "",
          "thumbnail": {
            "path": "",
            "extension": "",
          },
        }
      ]
    }
  },
);
