@echo off
setlocal

rem MySQL database credentials
set DB_USER=root
set DB_PASS=""
set DB_NAME=hfsp_db

rem Backup directory
set "BACKUP_DIR=C:\Users\ALIEN0X\Desktop\HFS Policies\SQL Backup"

rem Ensure backup directory exists
if not exist "%BACKUP_DIR%" (
    mkdir "%BACKUP_DIR%"
    echo Backup directory created: %BACKUP_DIR%
)

rem Get current timestamp for backup file name
for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') do set "datetime=%%I"
set "timestamp=%datetime:~0,4%-%datetime:~4,2%-%datetime:~6,2%_%datetime:~8,2%-%datetime:~10,2%-%datetime:~12,2%"
set "BACKUP_FILE=%BACKUP_DIR%\%DB_NAME%_%timestamp%.sql"

rem Dump the database
mysqldump -u%DB_USER% -p%DB_PASS% %DB_NAME% > "%BACKUP_FILE%"

rem Check if mysqldump was successful
if %ERRORLEVEL% NEQ 0 (
    echo Error: Failed to dump the database.
    exit /b %ERRORLEVEL%
)

endlocal


