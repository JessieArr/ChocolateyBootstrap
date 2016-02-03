@echo Installing Visual Studio...
vs_community.exe /AdminFile %~dp0\AdminDeployment.xml /Log %~dp0\VSInstall.log /NoRestart /Quiet
if %ERRORLEVEL% NEQ 0 (
	@echo ERROR: Failed to install Visual Studio!
	exit /b 1
) else (
	@echo Visual Studio installation succeeded!
)
pause