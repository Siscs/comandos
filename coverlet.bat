@echo off
REM Pacote necessario coverlet.msbuild nos projetos de testes
REM dotnet tool install -g dotnet-reportgenerator-globaltool
cd C:\Dados\Projetos\projetoX
dotnet test -p:CollectCoverage=true -p:CoverletOutputFormat=cobertura -p:CoverletOutput=c:\dados\tests\projetox\
reportgenerator -reports:".\projeto.Tests\coverage.cobertura.xml" -targetdir:"c:\dados\temp\coverage" -reporttypes:Html
start c:\dados\temp\coverage\index.html
cd c:\dados
-- SINGLE PROJECT
@echo off
REM Pacote necessario coverlet.msbuild no projeto de testes
REM Necessario reportgenerator tool instalado 
REM dotnet tool install -g dotnet-reportgenerator-globaltool
dotnet test -p:CollectCoverage=true -p:CoverletOutputFormat=cobertura -p:CoverletOutput=..\
reportgenerator -reports:"tests\coverage.cobertura.xml" -targetdir:"c:\temp\coverage" -reporttypes:Html
start c:\temp\coverage\index.html

-- MULTIPLOS PROJETOS
@echo off
REM Arquivo responsável por executar a cobertura de testes para o projeto
REM Pacote necessario coverlet.msbuild no projeto de testes
REM Necessario reportgenerator tool instalado 
REM dotnet tool install -g dotnet-reportgenerator-globaltool

rem dotnet test Solution.sln -p:CollectCoverage=true -p:CoverletOutputFormat=cobertura -p:CoverletOutput=..\ 
dotnet test Yamaha.Notifications.sln -p:CollectCoverage=true -p:CoverletOutputFormat=cobertura
reportgenerator -reports:"**\coverage.cobertura.xml" -targetdir:"c:\temp\coverage" -reporttypes:Html
start c:\temp\coverage\index.html
