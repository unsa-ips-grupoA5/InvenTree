# Plan de Proyecto: Implementación de Scrum y DevOps aplicado a InvenTree

## 1. Justificación y Contexto del Proyecto
Se ha seleccionado **InvenTree**, un sistema de gestión de inventarios de código abierto (ERP/SCM), debido a que cumple rigurosamente con los criterios de evaluación de la asignatura:
* **Licencia:** MIT (permite bifurcación, modificación y uso libre sin restricciones académicas).
* **Stack Tecnológico:** Desarrollado con un backend robusto en Python (Django) y un frontend moderno, representando una arquitectura vigente en la industria.
* **Complejidad Escalonada:** Supera ampliamente las 10 KLOC y posee múltiples módulos empresariales (gestión de stock, control de proveedores, órdenes de compra e informes).
* **Infraestructura Adaptable:** Cuenta con soporte nativo para contenedores mediante Docker Compose, lo cual es el escenario ideal para la configuración de nuestro pipeline de Integración y Despliegue Continuos (CI/CD).

## 2. Modelo de Proceso de Software (Scrum + DevOps)
El ciclo de vida del desarrollo se gestionará integrando el marco de trabajo ágil Scrum con prácticas de automatización DevOps, utilizando exclusivamente el ecosistema de herramientas de GitHub.

### 2.1. Implementación de Scrum
* **Duración de iteraciones:** Sprints fijos de 15 días calendario.
* **Roles (Rotativos por Sprint):** Para fomentar el liderazgo y las habilidades blandas, los 5 integrantes del equipo rotarán por los roles principales:
  * *Scrum Master:* Encargado de facilitar las ceremonias, asegurar el uso de GitHub Projects y remover impedimentos.
  * *Product Owner:* Responsable de gestionar y priorizar el Product Backlog en GitHub Issues.
  * *Development Team:* Encargados del análisis de código, refactorización y configuración técnica del pipeline.
* **Ceremonias:** * *Sprint Planning:* Día 1 de cada iteración (definición del Sprint Backlog).
  * *Daily Scrum:* Actualizaciones asíncronas diarias sobre el progreso de las tarjetas en el tablero Kanban.
  * *Sprint Review & Retrospective:* Día 15 de cada iteración (revisión de entregables y lecciones aprendidas).

### 2.2. Arquitectura DevOps y Herramientas Tecnológicas
* **Gestión y Planificación:** *GitHub Projects* (Tablero Kanban con estados: To Do, In Progress, Done).
* **Trazabilidad y Requisitos:** *GitHub Issues* (para registrar historias de usuario, tareas técnicas y reporte de bugs).
* **Integración Continua (CI):** *GitHub Actions* (automatización de compilación y ejecución de pruebas unitarias al integrar nuevo código a la rama principal).
* **Despliegue Continuo (CD):** *GitHub Actions* (automatización del despliegue en entornos de prueba - staging).
* **Documentación Pública:** *GitHub Pages* (publicación del burndown chart, plan de proyecto y justificación técnica).

---

## 3. Cronograma Detallado de Sprints (Roadmap del Proyecto)

El siguiente cuadro detalla la planificación de actividades y los hitos de entrega asociados a cada Sprint:

| Fase / Sprint | Fechas | Objetivos y Tareas Principales | Entregables (Hitos del Curso) |
| :--- | :--- | :--- | :--- |
| **Sprint 0** | Hasta 13 de Mayo | • Selección y justificación del producto de software.<br>• Creación de la Organización y bifurcación (Fork) del repositorio.<br>• Configuración inicial del tablero en GitHub Projects y despliegue del sitio estático. | **Hito 1 (15%):** Plan de proyecto, cronograma y presentación del software en GitHub Pages. |
| **Sprint 1** | 14 de Mayo al 28 de Mayo | • Análisis de la arquitectura actual de InvenTree.<br>• Población del Product Backlog mediante GitHub Issues.<br>• Configuración del primer flujo de Integración Continua (CI) básico usando GitHub Actions. | *Avance interno.* |
| **Sprint 2** | 29 de Mayo al 10 de Junio | • Consolidación del marco ágil (ejecución estricta de ceremonias).<br>• Configuración del Despliegue Continuo (CD).<br>• Pruebas de integración del pipeline DevOps completo. | **Hito 2 (60%):** Producto funcionando con CI/CD automatizado y Scrum completamente implementado. |
| **Sprint 3** | 11 de Junio al 26 de Junio | • Desarrollo de mejoras de código, refactorización o corrección de bugs identificados en InvenTree.<br>• Monitoreo de la estabilidad del pipeline CI/CD ante los nuevos cambios. | *Avance interno.* |
| **Sprint 4** | 27 de Junio al 13 de Julio | • Estabilización final de la versión del software.<br>• Redacción de la documentación técnica del proceso Scrum/DevOps.<br>• Estructuración y redacción del artículo final (Formato IEEE). | **Hito 3 (100%):** Mejoras desplegadas por CI/CD, documentación completa y presentación del artículo IEEE. |
