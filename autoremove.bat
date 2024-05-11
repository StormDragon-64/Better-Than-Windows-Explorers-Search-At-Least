@echo off
setlocal enabledelayedexpansion

set /p "searchDirectory=Enter the path of the directory to search: "
set /p "filePath=Enter the path of the .txt file: "
set "searchText="
set "deleteFiles="

if not exist "%filePath%" (
    echo File "%filePath%" not found.
    exit /b
)

echo Searching for files with names containing text from "%filePath%" in directory: %searchDirectory%

for /f "tokens=*" %%a in (%filePath%) do (
    set "fileName=%%a"
    for /f "delims=" %%b in ('dir /b /a-d "%searchDirectory%\*!fileName!*" 2^>nul') do (
        echo Found: %%b
        set "deleteFiles=!deleteFiles! "%%b""
    )
)

if not "%deleteFiles%"=="" (
    set /p confirm="Do you want to delete all found files? (y/n): "
    if /i "!confirm!"=="y" (
        for %%f in (%deleteFiles%) do (
            del "%searchDirectory%\%%~f"
            echo Deleted: %%~f
        )
    )
)

echo Done.
pause