@echo off

echo Creating FF file
"tools/ff_file.py" SM.sfc || goto :error

echo Patching FF file with asar
"tools/asar" --no-title-check --symbols=wla --symbols-path=symbols.sym %* src/main.asm SM.sfc || goto :error

echo Success
goto :EOF

:error
echo Failed with code %errorlevel%
exit /b 1