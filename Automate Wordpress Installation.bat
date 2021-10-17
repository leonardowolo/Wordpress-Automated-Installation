@echo off
REM (C) Leonardo Wolo - 13/04/2020
cls
title Leonardo's WordPress template creator v1.0

set folder_current="C:\wordpress_current"
set folder_root_destination=C:\xampp\htdocs\wordpress

echo Enter the name of your new WordPress site (do not use spaces in the name)
set /P project_new="Project Name: "

mkdir "%folder_root_destination%\%project_new%" >nul
echo 1. A new folder was created under: "%folder_root_destination%"
echo 2. Copying files... Please wait.
xcopy /E /Q "%folder_current%" "%folder_root_destination%\%project_new%"
echo 3. Default WordPress template copied to new project folder.
echo 4. XAMPP MariaDB database creation for new website...
C:\xampp\mysql\bin\mysql.exe -u root -e "CREATE DATABASE %project_new%"
echo 5. Open WordPress in web browser
"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "http://localhost/wordpress/%project_new%" >nul

echo.
echo Ready! Press enter to close the window...
pause >nul
