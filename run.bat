@echo off
setlocal

:: Check if the argument is provided
if "%~1"=="" (
    echo Usage: %0 ^<asm_file^>
    exit /b 1
)

:: Run the Docker command
docker run -it -v "%cd%:/app" mips_lab chmod +x /app/run_mips && /app/run_mips %1

endlocal

