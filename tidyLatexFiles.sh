mkdir -p tmp_LatexFiles


if compgen -G "*.log" > /dev/null; then
    mv *.log tmp_LatexFiles/
fi

if compgen -G "*.aux" > /dev/null; then
    mv *.aux tmp_LatexFiles/
fi

if compgen -G "*.synctex.gz" > /dev/null; then
    mv *.synctex.gz tmp_LatexFiles/
fi
