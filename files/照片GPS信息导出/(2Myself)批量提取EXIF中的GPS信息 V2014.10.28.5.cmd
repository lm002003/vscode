@echo off
setlocal EnableDelayedExpansion
color f0
title 批量提取EXIF中的GPS信息
echo.
echo.
echo                ********** 批量提取EXIF中的GPS信息 **********
echo.
echo                本程序可以实现批量提取文件夹（包括子文件夹）
echo                内图片文件EXIF信息中的GPS信息到POS84.TXT文件中
echo                打开时请忽略错误对话框，另存为xlsx即可
echo.
echo                                         by 汪远 14.10.28 V5
echo                如有疑问请联系：wangyuanensis@gmail.com
echo                *********************************************

if not exist .\jhead.exe echo                未找到jhead.exe！请和本程序放入相同文件夹下！&&pause >nul&&exit

echo                请将需要处理的文件夹按住左键拖入本程序窗口下方
echo                并回车确认。处理多个文件夹可统一放入一个文件夹
echo.
set /p wpath=.              请拖入文件夹：
set wpath=!wpath:"=!
echo.
echo ·列举文件中，请稍候……

:: echo 文件名	北纬	东经	海拔	文件位置>>"%wpath%\POS84.TXT"

for /f "tokens=*" %%f in ('dir "%wpath%\*.jpg" /a-d /b /s /on') do (
	set tmp=0
	for /f "tokens=1,2* delims=/:=<>" %%a in ('jhead.exe "%%f"') do (
		echo %%a|findstr /c:"GPS Altitude" >nul&&set GPSH=%%b
		echo %%a|findstr /c:"GPS Latitude" >nul&&set GPSN=%%b
		echo %%a|findstr /c:"GPS Longitude" >nul&&set GPSE=%%b&&set tmp=1
	)
	if "!tmp!" equ "1" (call :读取信息 "%%~nxf" "%%~dpf") else (
		echo ·已跳过 %%~nxf （没有GPS信息）
		echo %%~nxf	没有GPS信息	没有GPS信息	没有GPS信息	%%~dpf>>"%wpath%\POS84.TXT"
	)
)
echo.
echo ·已成功完成！
echo.
echo ·存储于文件：%wpath%\POS84.TXT，请忽略错误对话框，打开后另存为xlsx文件！
echo.
echo ·按任意键打开提取的信息，否则请关闭窗口退出……
pause >nul
cmd /c ""%wpath%\POS84.TXT""
exit


:读取信息
set GPSN=!GPSN:~2!
for /f "tokens=1,2,3* delims=dms " %%a in ("!GPSN!") do set GPSN=%%a° %%b' %%c" N

set GPSE=!GPSE:~2!
for /f "tokens=1,2,3* delims=dms " %%a in ("!GPSE!") do set GPSE=%%a° %%b' %%c" E

echo ·已读取 %~1：
echo ·!GPSN!	!GPSE!	!GPSH!
echo %~1	!GPSN!	!GPSE!	!GPSH!>>"%wpath%\POS84.TXT"
goto :eof