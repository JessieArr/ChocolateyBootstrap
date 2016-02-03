vs_community_ENU.exe /CreateAdminFile %~dp0\AdminDeployment.xml /quiet
if %ERRORLEVEL% NEQ 0 (
	@echo ERROR: Failed to create AdminDeployment.xml file!
) else (
	@echo AdminDeployment.xml creation succeeded!
)
pause