# Configuración de latexmk para compilación automática
$pdf_mode = 1;

# Soporte para glosarios (makeglossaries)
add_cus_dep('glo', 'gls', 0, 'makeglossaries');
add_cus_dep('acn', 'acr', 0, 'makeglossaries');
sub makeglossaries {
    system("makeglossaries '$_[0]'");
}
