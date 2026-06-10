# 📦 InvenTree - Sistema de Gestión de Inventarios

**Curso:** Ingeniería y Procesos de Software  
**Grupo:** A5  
**Periodo Académico:** Semestre 2026-A  
**Institución:** Universidad Nacional de San Agustín  

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

## 🧩 2. Arquitectura Funcional: Módulos Principales (US-1.1)

El análisis del sistema permitió identificar una segregación modular sólida, compuesta por cuatro subsistemas centrales que operan de manera interconectada:
```
                     ┌───────────────────────────────────┐
                     │       InvenTree Core Engine       │
                     └─────────────────┬─────────────────┘
                                       │
       ┌───────────────────────────────┼─────────────────────────────┐
       ▼                               ▼                             ▼
┌─────────────────┐           ┌─────────────────┐           ┌─────────────────┐
│ Módulo de Partes│           │ Módulo de Stock │           │Módulo de Compras│
│ (Catálogo/BOM)  │           │ (Inventariado)  │           │  y Proveedores  │
└────────┬────────┘           └────────┬────────┘           └────────┬────────┘
         │                             │                             │
         └─────────────────────────────┼─────────────────────────────┘
                                       ▼
                     ┌───────────────────────────────────┐
                     │    Módulo de Ventas y Clientes    │
                     └───────────────────────────────────┘
```

## 🗂️ A. Módulo de Partes (Management & BOM)
Encargado de la gestión del catálogo maestro de artículos. Permite la parametrización de categorías, la asignación de propiedades técnicas variables y, fundamentalmente, la estructuración de la **Lista de Materiales (BOM - Bill of Materials)**. Este subsistema es crítico para determinar la composición jerárquica de los productos terminados a partir de materias primas.

### 📦 B. Módulo de Stock (Ubicaciones y Trazabilidad)
Controla la existencia física de los elementos almacenados. Proporciona un rastreo preciso mediante la asignación de ubicaciones lógicas jerárquicas, control estricto de números de serie, códigos de lote y registros de movimientos históricos, asegurando que los niveles de inventario mínimo y máximo se mantengan optimizados.

### 🤝 C. Módulo de Proveedores y Compras (Purchasing)
Soporta el flujo de adquisición de suministros externos. Facilita la creación y el seguimiento de órdenes de compra (PO), la gestión de catálogos específicos de proveedores vinculados a las partes internas, y la automatización del proceso de recepción de mercancías directamente en las áreas de stock designadas.

### 💰 D. Módulo de Ventas y Clientes (Sales & Orders)
Administra las demandas de salida del software. Permite procesar órdenes de venta (SO), registrar información de clientes, supervisar los despachos de productos terminados y generar la documentación pertinente de salida, cerrando de este modo el ciclo comercial básico del negocio.

---

## 💻 3. Stack Tecnológico de Grado Industrial (US-1.1)

La construcción de InvenTree se soporta sobre tecnologías de alta vigencia en el mercado de software contemporáneo, lo que asegura escalabilidad, portabilidad y mantenibilidad:

| Capa del Sistema | Tecnología Principal | Propósito en la Infraestructura |
| :--- | :--- | :--- |
| **Backend Framework** | Python / Django | Motor central encargado de la lógica de negocio, ORM, enrutamiento y exposición de servicios a través de una API REST robusta. |
| **Frontend UI** | JavaScript / Componentes Modernos | Construcción de una interfaz adaptativa, fluida y de alta interactividad para la experiencia del usuario final. |
| **Persistencia** | PostgreSQL / MySQL / SQLite | Flexibilidad en el motor de base de datos relacional para el almacenamiento estructurado y seguro de transacciones de inventario. |
| **Contenedores** | Docker & Docker Compose | Aislamiento y estandarización del entorno, garantizando la consistencia entre desarrollo, pruebas (Staging) y despliegue final. |

---

## ⏳ 4. Evolución del Producto y Control de Versiones (US-1.2)

InvenTree presenta una alta tasa de actividad y soporte dentro de la comunidad open-source internacional. El análisis cronológico de sus versiones refleja una evolución orientada hacia la estabilidad del núcleo de la aplicación, optimizaciones de consultas de base de datos a gran escala y la continua expansión de sus endpoints de integración. 

Para fines de este curso, el equipo ha tomado una versión estable reciente como línea base para implantar el marco **Scrum junto con las prácticas DevOps**. Actualmente, el proyecto cuenta con soporte nativo de pruebas automatizadas listas para ser integradas a procesos de Integración Continua (CI), facilitando la transición hacia pipelines de automatización que serán presentados en los hitos posteriores.
