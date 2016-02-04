@echo off
set errorno=0
@echo Installing Visual Studio Network Image...
vs_community_ENU.exe /Layout %~dp0 /Quiet
if %ERRORLEVEL% NEQ 0 (
	@echo ERROR: Failed to install Visual Studio Network Image! Error code: %ERRORLEVEL%
	set errorno=1
) else (
	@echo Visual Studio Network Image installation succeeded!
)
pause
exit /b %errorno%