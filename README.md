# Memoria TFG — CloudPorter

Este repositorio contiene la memoria de mi Trabajo de Fin de Grado del Grado en Ingeniería Informática de la Universidad de Granada (UGR) hecha en LaTeX. 

El PDF esta compilado y disponible en la sección [Releases](../../releases).

## Cómo compilar

**Opción 1 — DevContainer:** Usar el devcontainer del repositorio. Tiene todo lo necesario preinstalado y el documento se compila automáticamente al guardar.

**Opción 2 — Local:** Instalar [TeX Live](https://www.tug.org/texlive/) completo y compilar con `latexmk`:

```bash
# Instalar paquetes
sudo apt install texlive-full

# Compilar
latexmk -pdf -f TFG.tex
```

## CI/CD

Cada push a `main` actualiza automáticamente el PDF en Releases.
