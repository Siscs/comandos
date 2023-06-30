@echo off
REM Pacote necessario coverlet.msbuild nos projetos de testes
REM dotnet tool install -g dotnet-reportgenerator-globaltool
cd C:\Dados\Projetos\projetoX
dotnet test -p:CollectCoverage=true -p:CoverletOutputFormat=cobertura -p:CoverletOutput=c:\dados\tests\projetox\
reportgenerator -reports:".\projeto.Tests\coverage.cobertura.xml" -targetdir:"c:\dados\temp\coverage" -reporttypes:Html
start c:\dados\temp\coverage\index.html
cd c:\dados
