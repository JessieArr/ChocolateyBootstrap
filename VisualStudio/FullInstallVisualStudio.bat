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
	if %ERRORLEVEL% NEQ 0 exit /b 1

	@echo Installing ReSharper...
	@echo | call InstallReSharper.bat
	@echo Done Installing ReSharper!

	@echo Installing NCrunch...
	@echo | call InstallNCrunch.bat
	@echo Done Installing NCrunch!

	@echo Installing VSColorOutput...
	@echo | call InstallVSColorOutput.bat
	@echo Done Installing VSColorOutput!
)
 
