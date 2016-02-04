@echo off
set errorno=0
@echo Installing VSColorOutput...
choco install vscoloroutput -y
if %ERRORLEVEL% NEQ 0 (
	@echo ERROR: Failed to install VSColorOutput! Error code: %ERRORLEVEL%
	set errorno=1
) else (
	@echo VSColorOutput installation succeeded!
)
pause
exit /b %errorno%