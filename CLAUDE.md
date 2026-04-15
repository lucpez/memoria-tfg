# Sobre el proyecto

Este repositorio contiene la memoria de mi Trabajo de Fin de Grado (TFG) de Ingeniería Informática de la **Universidad de Granada (UGR)**, escrita en LaTeX.

---

## Enfoque narrativo del TFG

**Este TFG es un TFG de proceso, no de producto terminado.** Esto es fundamental para entender cómo ayudar a escribirlo.

La narrativa central es:

> El problema abordado es enorme, complejo y difícilmente abarcable en su totalidad. Este TFG documenta cómo se ha enfrentado ese problema: qué se decidió construir primero, por qué, cómo fue evolucionando el diseño, qué se logró implementar, y qué queda por delante.

**Implicaciones para la escritura:**

- **No presentar el sistema como completo.** La honestidad sobre el alcance alcanzado es un valor, no una debilidad.
- **El diseño no es upfront.** Emerge dentro de cada iteración en cap 6. No hay diseño global previo.
- **Los requisitos son aspiracionales.** Capítulo 4 define el sistema ideal; cap 4 también justifica qué entra en v1 y qué es trabajo futuro.
- **El desarrollo es el corazón.** Capítulo 6 es el más extenso — ciclos iterativos con Kanban, cada uno con justificación, decisiones de diseño, implementación y resultado.
- **Las conclusiones miran al futuro.** Capítulo 8 es tan importante como cualquier otro: qué se aprendió, dónde se llegó, qué viene después.

---

## Estructura de capítulos

```
sections/
  00_portada.tex         # Portada
  00_agradecimientos.tex # Agradecimientos
  00_resumen.tex         # Resumen (español)
  00_abstract.tex        # Abstract (inglés)

  01_Introduccion.tex    # Cap. 1 — Introducción
                         # Motivación, objetivos, estructura del documento.
                         # Dejar claro desde el inicio que el problema es ambicioso
                         # y el TFG es una exploración fundamentada, no una solución completa.

  02_Descripcion.tex     # Cap. 2 — Descripción del problema
                         # El cloud lock-in en toda su magnitud y complejidad.
                         # No recortar. Que se vea la escala real del problema.

  03_Estado.tex          # Cap. 3 — Estado del arte
                         # Herramientas existentes (Terraform, Pulumi, Crossplane, etc.)
                         # y por qué ninguna resuelve el problema planteado.

  04_Especificación.tex  # Cap. 4 — Especificación de requisitos
                         # Requisitos del sistema ideal y completo.
                         # Justificar qué entra en el alcance de este trabajo y qué queda fuera.

  05_Planificacion.tex   # Cap. 5 — Planificación y metodología
                         # Estrategia iterativa (Kanban) para abordar el problema.
                         # Por qué se empieza por donde se empieza.
                         # Metodología, cronograma, herramientas.

  06_Desarrollo.tex      # Cap. 6 — Desarrollo
                         # El grueso del TFG. Ciclos iterativos Kanban:
                         # objetivo → decisiones de diseño → implementación → resultado.
                         # Libertad de pivotar (FinOps, plataforma, etc.)
                         # siempre que cada decisión quede justificada.

  07_Evaluacion.tex      # Cap. 7 — Evaluación
                         # Evidencia de que lo construido funciona.
                         # Pruebas, demo, validación frente a los requisitos.

  08_Conclusiones.tex    # Cap. 8 — Conclusiones y trabajos futuros
                         # Dónde se llegó, qué quedó fuera, qué se aprendió,
                         # qué viene después. Capítulo de igual peso que los demás.

  ANX_Glosario.tex       # Anexo: Glosario

figures/                 # Imágenes y diagramas
bibliografia.bib         # Referencias bibliográficas (BibTeX)
```

---

## Cómo compilar

```bash
latexmk -pdf -f TFG.tex
```

Para limpiar archivos intermedios:
```bash
latexmk -c
```

---

## Convenciones LaTeX del proyecto

- Clase `report` a 12pt
- Referencias con `natbib` (estilo `unsrtnat`)
- Glosarios con el paquete `glossaries`
- Figuras en `figures/`, referenciadas con `\includegraphics`
- Código con el paquete `listings`
- Macros de revisión en `etc/style.tex`: `\todo{}`, `\nota{}`

---

## Instrucciones para Claude

- Antes de redactar cualquier sección, consulta la memoria persistente para el contexto del proyecto.
- Respeta el enfoque narrativo: no presentar el sistema como completo ni el diseño como previo.
- No reescribas párrafos completos salvo que se pida explícitamente; sugiere mejoras puntuales.
- Cuando propongas cambios LaTeX, asegúrate de que la sintaxis sea válida.
- Si detectas que falta una referencia bibliográfica importante, señálalo.
- El PDF no se versiona en git; se genera con `latexmk` o GitHub Actions.

---

## Comandos

| Comando | Descripción |
|---|---|
| `/compilar` | Compila el TFG con `latexmk` y reporta errores. Corrige errores leves automáticamente. |
| `/revisar-glosario` | Lee los capítulos y sugiere términos que deberían estar en el glosario. |