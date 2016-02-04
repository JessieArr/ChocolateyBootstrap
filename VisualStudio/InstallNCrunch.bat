@echo off
set errorno=0
@echo Installing NCrunch...
choco install ncrunch-vs2015 -y
if %ERRORLEVEL% NEQ 0 (
	@echo ERROR: Failed to install NCrunch! Error code: %ERRORLEVEL%
	set errorno=1
) else (
	@echo NCrunch installation succeeded!
)
pause
exit /b %errorno%