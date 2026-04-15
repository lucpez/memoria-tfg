---
name: compilar
description: Compila el TFG con latexmk y reporta el resultado
---

Ejecuta `latexmk -pdf -interaction=nonstopmode TFG.tex` desde el directorio raíz del proyecto.

Si compila correctamente, confirma que el PDF se ha generado y su tamaño.

Si hay errores, clasifícalos antes de actuar:

**Errores leves — corregir directamente sin preguntar:**
- Llaves sin cerrar `{` o `}`
- Comandos mal escritos con typo obvio (`\textbff` → `\textbf`)
- `\ref{}` o `\cite{}` con clave vacía
- `\todo{}` dentro de entornos donde no está permitido (tabular, etc.)
- Caracteres especiales sin escapar (`&`, `%`, `_` fuera de contexto LaTeX)

**Errores que requieren decisión del autor — parar y preguntar:**
- Referencias bibliográficas inexistentes (`\cite{clave}` sin entrada en el `.bib`)
- Figuras o ficheros no encontrados (`File not found`)
- Paquetes no instalados
- Errores de estructura del documento (secciones mal anidadas, entornos sin cerrar que afectan a varios párrafos)
- Cualquier error cuya corrección implique una decisión de contenido

En ambos casos, indica el fichero y la línea del error. No muestres el log completo salvo que el usuario lo pida expresamente.
