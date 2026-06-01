# Proyecto

A new Flutter project.

## Getting Started

# 🍽️ Recetario Móvil

Aplicación móvil de recetas de cocina desarrollada con **FlutterFlow** para la materia de **Dispositivos Móviles**. Permite explorar, guardar y gestionar recetas obtenidas desde una API externa, con autenticación de usuarios y almacenamiento en la nube.

---

## 📱 Capturas de pantalla

> _Agrega aquí imágenes o screenshots de la app._

---

## ✨ Funcionalidades

- **Explorar recetas** — Listado de recetas obtenidas desde [TheMealDB API](https://www.themealdb.com) con scroll infinito.
- **Detalle de receta** — Visualización completa de ingredientes, pasos e información nutricional.
- **Favoritos** — Guarda tus recetas favoritas vinculadas a tu cuenta.
- **Autenticación** — Registro e inicio de sesión de usuarios con correo y contraseña, y soporte para Sign In with Apple.
- **Perfil de usuario** — Consulta y edición de datos personales.
- **Modo oscuro / claro** — Soporte de tema mediante switch en la interfaz.

---

## 🛠️ Tecnologías utilizadas

| Tecnología | Uso |
|---|---|
| [Flutter](https://flutter.dev) | Framework de desarrollo móvil |
| [FlutterFlow](https://flutterflow.io) | Generación visual del proyecto |
| [Supabase](https://supabase.com) | Backend: autenticación y base de datos |
| [TheMealDB API](https://www.themealdb.com) | Fuente de recetas externas |
| [go_router](https://pub.dev/packages/go_router) | Navegación entre pantallas |
| [Google Fonts](https://pub.dev/packages/google_fonts) | Tipografías personalizadas |
| [cached_network_image](https://pub.dev/packages/cached_network_image) | Carga optimizada de imágenes |
| [infinite_scroll_pagination](https://pub.dev/packages/infinite_scroll_pagination) | Paginación con scroll infinito |

---

## 🗂️ Estructura del proyecto

```
lib/
├── auth/                     # Manejo de sesión y autenticación
├── backend/
│   ├── api_requests/         # Llamadas a TheMealDB API
│   └── supabase/
│       └── database/
│           └── tables/       # Tablas: favoritos, usuarios
├── components/               # Widgets reutilizables (cards, botones, campos)
├── pages/
│   ├── home_page/            # Pantalla principal con listado de recetas
│   ├── receta/               # Detalle de una receta
│   ├── favoritos/            # Recetas guardadas por el usuario
│   ├── login/                # Inicio de sesión
│   ├── sign_up/              # Registro de usuario
│   ├── perfil/               # Perfil del usuario
│   └── modificar_datos/      # Edición de datos personales
├── flutter_flow/             # Utilidades generadas por FlutterFlow
└── main.dart                 # Punto de entrada de la app
```

---

## 🚀 Instalación y ejecución

### Prerrequisitos

- [Flutter SDK](https://docs.flutter.dev/get-started/install) `>=3.0.0`
- Dart `>=3.0.0 <4.0.0`
- Cuenta y proyecto en [Supabase](https://supabase.com)
- Dispositivo físico o emulador (Android / iOS)

### Pasos

1. **Clona el repositorio:**
   ```bash
   git clone https://github.com/IbarrioNix/Recetario-Mobil.git
   cd Recetario-Mobil
   ```

2. **Cambia a la rama con el código fuente:**
   ```bash
   git checkout flutterflow
   ```

3. **Instala las dependencias:**
   ```bash
   flutter pub get
   ```

4. **Configura Supabase:**

   En el archivo de inicialización de FlutterFlow (`lib/flutter_flow/flutter_flow_util.dart` o similar), asegúrate de tener configuradas las variables:
   ```dart
   const supabaseUrl = 'TU_SUPABASE_URL';
   const supabaseAnonKey = 'TU_SUPABASE_ANON_KEY';
   ```

5. **Ejecuta la app:**
   ```bash
   flutter run
   ```

---

## 🗃️ Base de datos (Supabase)

El proyecto utiliza dos tablas principales:

| Tabla | Descripción |
|---|---|
| `usuarios` | Información del perfil del usuario |
| `favoritos` | Relación entre usuarios y recetas guardadas |

---

## 📦 Dependencias principales

```yaml
supabase_flutter: ^2.9.0
go_router: ^12.1.3
google_fonts: ^6.3.3
cached_network_image: ^3.4.1
infinite_scroll_pagination: ^4.0.0
flutter_animate: ^4.5.0
sign_in_with_apple: ^7.0.1
shared_preferences: ^2.5.3
```

> Lista completa en [`pubspec.yaml`](pubspec.yaml).

---

## 📡 API externa

La aplicación consume recetas desde **TheMealDB**:

```
GET https://www.themealdb.com/api/json/v1/1/search.php?s=
```

No se requiere API key para el uso básico (tier gratuito).

---

## 👤 Autor

Desarrollado por **Mario Alberto Ibarra Perez (IbarrioNix)** como proyecto de la materia de Dispositivos Móviles.

---

## 📄 Licencia

Este proyecto es de uso académico. Consulta al autor para cualquier otro uso.
