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

# 🔐 Conexión SSH a GitHub en Firebase Studio

Cuando trabajas en entornos efímeros como **Firebase Studio**, al cerrar la sesión o reiniciar, tu conexión SSH con GitHub se pierde. Aquí te explico cómo reconectar rápido para poder seguir trabajando y haciendo `git push`.

---

## ⚙️ Pasos para reconectar con GitHub por SSH

### 1. Entra a tu proyecto y activa el entorno
```bash
cd ~/myapp
nix-shell dev.nix
```
Esto te da acceso temporal a herramientas como ssh-agent, ssh-add, etc., gracias al archivo dev.nix.

2. Levanta el agente SSH
```bash
eval "$(ssh-agent -s)"
```
3. Agrega tu clave privada (si ya la habías generado, no repitas esto)
```bash
ssh-add ~/.ssh/id_ed25519
```
4. Verifica que fue agregada correctamente
```bash
ssh-add -l
```
Deberías ver tu clave listada. Si no aparece, asegúrate de haberla generado y que esté en la ruta correcta.

5. Ahora sí, haz push al repositorio
```bash
git push origin master
```
🧠 Tip Pro: Automatiza todo con un script
Crea un archivo llamado start-dev.sh en tu proyecto con el siguiente contenido:

```bash
#!/bin/bash

cd ~/myapp
```

```shell
nix-shell dev.nix --run "
  eval \$(ssh-agent -s)
  ssh-add ~/.ssh/id_ed25519
  bash
"
```
Hazlo ejecutable con:

```bash
chmod +x start-dev.sh
```
Y cuando vuelvas a Firebase Studio, solo ejecuta:

```bash
bash start-dev.sh
```
✅ Importante: Como Firebase Studio no guarda tu sesión, deberás repetir estos pasos (o usar el script) cada vez que vuelvas a ingresar.



🧠 Autor
Emerson Espinoza

📄 Licencia
MIT © 2025