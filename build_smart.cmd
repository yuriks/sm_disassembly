@echo off

echo Creating dummy files...
"tools/ff_file.py" SM.sfc FF || goto :error
"tools/ff_file.py" SM_00.sfc 00 || goto :error

echo Assembling...
"tools/asar" --no-title-check --symbols=wla --symbols-path=symbols.sym %* src/main.asm SM.sfc || goto :error
"tools/asar" --no-title-check %* src/main.asm SM_00.sfc || goto :error

echo Updating free space...
"tools/update_smart_freespace.py" SM.sfc SM_00.sfc smart_project/project.xml || goto :error

echo Success
goto :EOF

:error
echo Failed with code %errorlevel%
exit /b 1