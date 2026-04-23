@echo off
cd /d "%~dp0"
echo Iniciando BI Gestão de Projetos...
streamlit run src/app.py
pause