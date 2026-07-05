# 📦 InvenTree - Sistema de Gestión de Inventarios

**Curso:** Ingeniería y Procesos de Software  
**Grupo:** A5  
**Periodo Académico:** Semestre 2026-A  
**Institución:** Universidad Nacional de San Agustín  
##
---

## 👥 Estructura del Equipo de Trabajo (Scrum 3-5-3)

De acuerdo con el marco de trabajo Scrum, se han definido y distribuido los roles del equipo para el análisis y la simulación del ciclo de vida del software de la siguiente manera:

* **Product Owner:** **Elkin** — Responsable de la gestión, definición y priorización del Product Backlog, orientando el valor del incremento hacia el análisis técnico exhaustivo del sistema.
* **Scrum Master:** **Jaime** — Encargado de asegurar la correcta adopción de las ceremonias ágiles, la eliminación de impedimentos y la actualización en tiempo real del tablero en GitHub Projects.
* **Equipo de Desarrollo (Analistas e Ingenieros de Software):**
  * **Diego** (Análisis de código y diagramación arquitectónica)
  * **Jhon**  — (Análisis funcional, diseño e implementación de la plataforma de presentación en GitHub Pages)
  * **Wilber** (Estudio de infraestructura, contenedores y guías de despliegue)

---

## 📝 1. Descripción General del Producto (US-1.1)

**InvenTree** es un ecosistema de software de código abierto categorizado como un sistema de gestión de inventario de nivel empresarial de complejidad mediana, diseñado específicamente para mitigar las limitaciones operativas en pequeñas y medianas empresas (PYMES). A diferencia de las soluciones tradicionales restrictivas, este sistema proporciona un control de grano fino sobre el ciclo de vida de las partes individuales, la gestión de existencias en tiempo real y los procesos de manufactura ligera.

El producto de software se encuentra regulado bajo la **Licencia MIT**, condición verificada que faculta al equipo para realizar un *fork*, modificar el código fuente y ejecutar simulaciones académicas sin restricciones legales o comerciales. El repositorio bajo análisis cuenta con un volumen de código robusto que supera las **10,000 líneas de código** estructuradas de forma modular.


---

## 🧩 2. Arquitectura del Sistema

La arquitectura de InvenTree está basada en una estructura cliente-servidor compuesta por una aplicación web moderna, una API REST y un backend desarrollado sobre el framework Django.
```text
                    Usuarios
                        │
                        ▼
        Frontend Web (React + TypeScript)
                        │
                        ▼
                 API REST
                        │
                        ▼
          Backend Django (Python)
                        │
                        ▼
                Base de Datos
```
Sobre esta arquitectura se implementan los diferentes módulos funcionales del sistema:

##  A. Gestión de Partes (Parts)
Permite registrar y administrar componentes, productos y listas de materiales (BOM - Bill of Materials), estableciendo relaciones jerárquicas entre ellos.

###  B. Gestión de Inventario (Stock)
Controla las existencias de productos y materiales, permitiendo registrar ubicaciones, movimientos, cantidades disponibles y trazabilidad del inventario.

###  C. Gestión de Compras y Proveedores
Administra proveedores, órdenes de compra, recepción de materiales y seguimiento de adquisiciones.

###  D. Gestión de Ventas y Clientes
Permite gestionar clientes, órdenes de venta y el seguimiento de productos comercializados.

###  E. Gestión de Manufactura
Facilita la planificación y ejecución de procesos de ensamblaje y producción, utilizando listas de materiales para construir productos finales a partir de componentes existentes.

###  F. Reportes y Trazabilidad
Genera información relevante sobre inventario, movimientos, compras, ventas y procesos de manufactura, manteniendo la trazabilidad de cada elemento del sistema.

###  G. API REST
Proporciona acceso programático a la información del sistema, permitiendo la integración con aplicaciones externas y herramientas de automatización.

---

## 💻 3. Stack Tecnológico 

La construcción de InvenTree se soporta sobre tecnologías ampliamente adoptadas en el desarrollo de software empresarial moderno, permitiendo escalabilidad, mantenibilidad, portabilidad e integración con diversos entornos de despliegue.

| Capa del Sistema               | Tecnología Principal        | Propósito en la Infraestructura                                                                                                                                       |
| :----------------------------- | :-------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Backend Framework**          | Python / Django             | Motor principal encargado de la lógica de negocio, gestión de entidades, autenticación, control de permisos, ORM y exposición de servicios mediante una API REST.     |
| **API de Integración**         | Django REST Framework       | Proporciona una interfaz REST robusta para la comunicación entre frontend, backend y sistemas externos, facilitando integraciones y automatización de procesos.       |
| **Frontend UI**                | React + TypeScript          | Construcción de una interfaz web moderna, dinámica y altamente interactiva para la gestión eficiente de inventarios, manufactura y operaciones empresariales.         |
| **Herramientas Frontend**      | Vite                        | Sistema de construcción y empaquetado que optimiza el desarrollo, compilación y despliegue de la aplicación cliente.                                                  |
| **Persistencia de Datos**      | PostgreSQL / MySQL / SQLite | Soporte para múltiples motores de bases de datos relacionales, permitiendo almacenar de forma segura la información de inventario, órdenes, proveedores y producción. |
| **Contenedorización**          | Docker & Docker Compose     | Estandarización y aislamiento del entorno de ejecución, garantizando consistencia entre desarrollo, pruebas y producción.                                             |
| **Control de Versiones**       | Git & GitHub                | Gestión colaborativa del código fuente, control de cambios, seguimiento de incidencias y administración de versiones del producto.                                    |
| **Documentación Técnica**      | Markdown                    | Elaboración de documentación técnica, manuales de usuario y guías de instalación mantenidas junto al código fuente.                                                   |
| **Automatización y Calidad**   | GitHub Actions              | Plataforma de integración y automatización utilizada para ejecutar flujos de validación, pruebas y procesos asociados al ciclo de vida del software.                  |
| **Arquitectura de Despliegue** | Cliente–Servidor Web        | Modelo arquitectónico que separa la capa de presentación, lógica de negocio y persistencia de datos para mejorar la escalabilidad y mantenibilidad del sistema.       |


La combinación de Django, React, TypeScript y Docker permite que InvenTree mantenga una arquitectura moderna basada en servicios web, favoreciendo la modularidad del sistema, la integración mediante API REST y la posibilidad de desplegar la solución en diferentes entornos con un mínimo esfuerzo de configuración.

---

## ⏳ 4. Evolución del Producto y Control de Versiones (US-1.2)

InvenTree es un proyecto Open Source que ha evolucionado continuamente gracias a la participación de la comunidad de desarrolladores.

La evolución del sistema se evidencia mediante:

- Desarrollo continuo a través de múltiples versiones.
- Historial activo de commits y contribuciones.
- Corrección constante de errores y mejoras.
- Incorporación de nuevas funcionalidades.
- Expansión de la API REST.
- Mejoras en los módulos de inventario, manufactura y trazabilidad.

Esta evolución ha permitido que el sistema se convierta en una plataforma robusta para la gestión de inventarios y procesos de producción.
El proyecto utiliza Git como sistema de control de versiones y GitHub como plataforma de colaboración.

Las prácticas utilizadas incluyen:

- Gestión de ramas (Branches).
- Registro de cambios mediante Commits.
- Integración de cambios mediante Pull Requests.
- Seguimiento de incidencias mediante Issues.
- Publicación de versiones mediante Releases.

Estas herramientas permiten mantener un historial completo del desarrollo y facilitan la colaboración entre los miembros del proyecto.
