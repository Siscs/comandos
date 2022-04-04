@echo off
REM Pacote necessario coverlet.msbuild  Version=3.1.2 no projeto de testes
cd C:\Dados\Dotz\Projetos\cashback
dotnet test -p:CollectCoverage=true -p:CoverletOutputFormat=cobertura
reportgenerator -reports:".\Cashback.Tests\coverage.cobertura.xml" -targetdir:"c:\dados\temp\coverage" -reporttypes:Html
start c:\dados\temp\coverage\index.html
cd c:\dados