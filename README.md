# 🚀 Flutter Counter Pro App

Este es un proyecto base construido desde cero en **Flutter**, con estructura modular, diseño profesional y listo para escalarse. El proyecto fue iniciado utilizando **Firebase Studio** como entorno de arranque y está preparado para integrarse con APIs externas (ej. Flask).

---

## 📦 Características principales

- Flutter 3.x con estructura modular
- Firebase Studio como entorno inicial
- Diseño moderno con degradado, botones estilizados y UI escalable
- Navegación entre pantallas
- Preparado para consumir APIs (como backend en Flask)


---

## 🧰 Tecnologías utilizadas

- **Flutter**: UI toolkit para frontend multiplataforma
- **Firebase Studio**: Plataforma usada para iniciar el proyecto
- **Dart**: Lenguaje base
- **Material 3**: Diseño nativo moderno
- (Opcional) **Flask**: backend en Python listo para conectar

---

## ▶️ Cómo correr el proyecto

1. Asegúrate de tener Flutter instalado (`flutter doctor`)
2. Clona este repositorio:
   ```bash
   git clone https://github.com/tu-usuario/flutter-contador-pro.git
   cd flutter-contador
   ```
Corre la app:

```bash

flutter run
```
🔥 Firebase Ready
Este proyecto fue iniciado desde Firebase Studio, lo que lo hace compatible para agregar:

Firebase Auth

Firestore

Storage

Hosting

Analytics

⚠️ Solo necesitas vincular el proyecto desde la consola Firebase y seguir los pasos del firebase_core.

🔌 Preparado para APIs (ej. Flask)
Este código está listo para consumir datos desde APIs externas. Puedes agregar un archivo como:

```markdown
lib/
└── services/
    └── api_service.dart
```
Ejemplo de conexión:

```dart

import 'package:http/http.dart' as http;

Future<void> obtenerDatos() async {
  final res = await http.get(Uri.parse('http://localhost:5000/contador'));
  if (res.statusCode == 200) {
    // procesa la respuesta
  }
}
```
🎨 Capturas de pantalla
(Agrega aquí screenshots de la app con degradado, botones, y navegación)

📌 Pendientes/Futuro
 Conexión con Firestore

 Login con Firebase Auth

 Integración completa con Flask API

 Modo oscuro con tema dinámico

 Unit tests con flutter_test

🧠 Autor
Emerson Espinoza

📄 Licencia
MIT © 2025