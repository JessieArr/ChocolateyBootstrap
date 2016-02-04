@echo off
set errorno=0
if not exist vs_community.exe (
	@echo Creating Network Image...
	@echo | call CreateNetworkImage.bat
)
if not exist AdminDeployment.xml (
	@echo Creating Admin Deployment File...
	@echo | call CreateAdminFile.bat
	@echo Please Edit Admin Deployment File Before Running Visual Studio Install Script.
) else (	
	@echo | call InstallVisualStudio.bat
	if %ERRORLEVEL% NEQ 0 (
		set errorno=1
		goto:END
	)

	@echo | call InstallReSharper.bat
	if %ERRORLEVEL% NEQ 0 (
		set errorno=2
		goto:END
	)

	@echo | call InstallNCrunch.bat
	if %ERRORLEVEL% NEQ 0 (
		set errorno=3
		goto:END
	)

	@echo | call InstallVSColorOutput.bat
	if %ERRORLEVEL% NEQ 0 (
		set errorno=4
		goto:END
	)
)

:END
exit /b %errorno%