@echo off
echo ��ע��:
echo ^<1^>���˳���ͬ������KML�ļ��������ļ�����ͬһĿ¼��
echo ^<2^>��Ŀ¼�²�Ҫ���ô����������ļ�֮�������txt�ļ�
echo ȷ����س�!
pause>nul
chcp 65001 >nul
::(�����������оͻ������������)
::���ִ��ļ�������utf8��ʽ���棬�Ƿ�Ҫ��ת����utf8��ʽ�����UTF8У���ٽ�����
setlocal enabledelayedexpansion
for %%a in (*.txt) do (
echo ^<?xml version="1.0" encoding="UTF-8"?^>^<kml xmlns="http://www.opengis.net/kml/2.2" xmlns:gx="http://www.google.com/kml/ext/2.2" xmlns:kml="http://www.opengis.net/kml/2.2" xmlns:atom="http://www.w3.org/2005/Atom"^>^<Document^>^<name^>pro_%%~na^</name^>^<Style id="hl"^>^<IconStyle^>^<scale^>1.2^</scale^>^<Icon^>^<href^>http://maps.google.com/mapfiles/kml/shapes/placemark_circle_highlight.png^</href^>^</Icon^>^</IconStyle^>^<ListStyle^>^</ListStyle^>^</Style^>^<Style id="default"^>^<IconStyle^>^<scale^>1.2^</scale^>^<Icon^>^<href^>http://maps.google.com/mapfiles/kml/shapes/placemark_circle.png^</href^>^</Icon^>^</IconStyle^>^<ListStyle^>^</ListStyle^>^</Style^>^<StyleMap id="default0"^>^<Pair^>^<key^>normal^</key^>^<styleUrl^>#default^</styleUrl^>^</Pair^>^<Pair^>^<key^>highlight^</key^>^<styleUrl^>#hl^</styleUrl^>^</Pair^>^</StyleMap^>^<Folder^>^<name^>Dot_%%~na^</name^>>>%%~pa\new_%%~na.kml
for /f "usebackq tokens=1,* delims=," %%i in ("%%a") do (
            >>%%~pa\new_%%~na.kml set /p=^<Placemark^>^<name^>%%i^</name^>^<styleUrl^>#default0^</styleUrl^>^<Point^>^<coordinates^>%%j,0^</coordinates^>^</Point^>^</Placemark^><nul
			echo.>>%%~pa\new_%%~na.kml
		)
>>%%~pa\new_%%~na.kml set /p=^</Folder^>^<Placemark^>^<name^>Line_%%~na^</name^>^<LineString^>^<coordinates^><nul
for /f "usebackq tokens=1,* delims=," %%i in ("%%a") do (
			>>%%~pa\new_%%~na.kml set /p=%%j,0 <nul
		)
echo ^</coordinates^>^</LineString^>^</Placemark^>^</Document^>^</kml^>>>%%~pa\new_%%~na.kml
)