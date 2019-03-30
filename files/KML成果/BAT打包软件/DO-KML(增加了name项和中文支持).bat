@echo off
echo 请注意:
echo ^<1^>将此程序同待生成KML文件的坐标文件置于同一目录下
echo ^<2^>该目录下不要放置待处理坐标文件之外的其他txt文件
echo 确认请回车!
pause>nul
chcp 65001 >nul
::(如果不添加上行就会出现线面问题)
::发现此文件不是以utf8格式保存，是否要先转换成utf8格式或进行UTF8校正再解析？
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