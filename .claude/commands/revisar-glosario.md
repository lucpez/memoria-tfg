---
name: revisar-glosario
description: Revisa los capítulos del TFG y sugiere términos que deberían estar en el glosario
---

Lee todos los ficheros de secciones del TFG (`sections/0*.tex`) y el glosario actual (`sections/ANX_Glosario.tex`).

Identifica términos que cumplan **todos** estos criterios:
1. Aparecen en el texto con `\textbf{}` — indica primera mención de un término relevante
2. Son siglas, anglicismos técnicos o conceptos específicos del dominio cloud/IaC que un lector no especializado podría no conocer
3. **No están ya** en el glosario

Excluye:
- Nombres de productos o herramientas concretas (AWS, Azure, Terraform, CloudPorter...) — no van en el glosario
- Términos demasiado generales que no necesitan definición (CLI, YAML, Python...)
- Términos que ya tienen entrada en el glosario aunque no usen `\hyperlink{}`

Para cada término candidato indica:
- El término
- El capítulo y contexto donde aparece
- Una propuesta de definición breve (2-3 líneas) lista para añadir al glosario

No añadas nada al glosario directamente — presenta los candidatos y espera confirmación del usuario.
