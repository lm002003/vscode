@echo off
setlocal EnableDelayedExpansion
color f0
title ������ȡEXIF�е�GPS��Ϣ
echo.
echo.
echo                ********** ������ȡEXIF�е�GPS��Ϣ **********
echo.
echo                ���������ʵ��������ȡ�ļ��У��������ļ��У�
echo                ��ͼƬ�ļ�EXIF��Ϣ�е�GPS��Ϣ��POS84.TXT�ļ���
echo                ��ʱ����Դ���Ի������Ϊxlsx����
echo.
echo                                         by ��Զ 14.10.28 V5
echo                ������������ϵ��wangyuanensis@gmail.com
echo                *********************************************

if not exist .\jhead.exe echo                δ�ҵ�jhead.exe����ͱ����������ͬ�ļ����£�&&pause >nul&&exit

echo                �뽫��Ҫ������ļ��а�ס������뱾���򴰿��·�
echo                ���س�ȷ�ϡ��������ļ��п�ͳһ����һ���ļ���
echo.
set /p wpath=.              �������ļ��У�
set wpath=!wpath:"=!
echo.
echo ���о��ļ��У����Ժ򡭡�

:: echo �ļ���	��γ	����	����	�ļ�λ��>>"%wpath%\POS84.TXT"

for /f "tokens=*" %%f in ('dir "%wpath%\*.jpg" /a-d /b /s /on') do (
	set tmp=0
	for /f "tokens=1,2* delims=/:=<>" %%a in ('jhead.exe "%%f"') do (
		echo %%a|findstr /c:"GPS Altitude" >nul&&set GPSH=%%b
		echo %%a|findstr /c:"GPS Latitude" >nul&&set GPSN=%%b
		echo %%a|findstr /c:"GPS Longitude" >nul&&set GPSE=%%b&&set tmp=1
	)
	if "!tmp!" equ "1" (call :��ȡ��Ϣ "%%~nxf" "%%~dpf") else (
		echo �������� %%~nxf ��û��GPS��Ϣ��
		echo %%~nxf	û��GPS��Ϣ	û��GPS��Ϣ	û��GPS��Ϣ	%%~dpf>>"%wpath%\POS84.TXT"
	)
)
echo.
echo ���ѳɹ���ɣ�
echo.
echo ���洢���ļ���%wpath%\POS84.TXT������Դ���Ի��򣬴򿪺����Ϊxlsx�ļ���
echo.
echo �������������ȡ����Ϣ��������رմ����˳�����
pause >nul
cmd /c ""%wpath%\POS84.TXT""
exit


:��ȡ��Ϣ
set GPSN=!GPSN:~2!
for /f "tokens=1,2,3* delims=dms " %%a in ("!GPSN!") do set GPSN=%%a�� %%b' %%c" N

set GPSE=!GPSE:~2!
for /f "tokens=1,2,3* delims=dms " %%a in ("!GPSE!") do set GPSE=%%a�� %%b' %%c" E

echo ���Ѷ�ȡ %~1��
echo ��!GPSN!	!GPSE!	!GPSH!
echo %~1	!GPSN!	!GPSE!	!GPSH!>>"%wpath%\POS84.TXT"
goto :eof