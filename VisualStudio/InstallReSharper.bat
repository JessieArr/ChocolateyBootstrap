@echo off
set errorno=0
@echo Installing ReSharper...
choco install resharper -y
if %ERRORLEVEL% NEQ 0 (
	@echo ERROR: Failed to install ReSharper! Error code: %ERRORLEVEL%
	set errorno=1
) else (
	@echo ReSharper installation succeeded!
)
pause
exit /b %errorno%