@echo off 
setlocal Enabledelayedexpansion
::+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
::+++++++相机文件首行为XP和YP两个值，所以先给XP赋值，等后面截取YP时一同写入文件+++++++
::+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
for /f "skip=20 tokens=2" %%a in (xjjz.txt) do (
	set /a n+=1
	::echo !n!  this is 1
	if !n!==1 set xp=%%a
)
::+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
for /f "skip=21 tokens=2" %%a in (xjjz.txt) do (
	set /a n+=1
	::echo !n!  this is 2
	if !n!==11 echo %xp% %%a>>camera.txt
)
::+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
for /f "skip=19 tokens=2" %%a in (xjjz.txt) do (
	set /a n+=1
	::echo !n!  this is 3
	if !n!==20 echo %%a>>camera.txt
)
::+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo Len_distortion_parameters:>>camera.txt
echo ^0>>camera.txt
echo ^0.00000000000000000000000000000000000000000000000000>>camera.txt
echo ^0.00000000000000000000000000000000000000000000000000>>camera.txt
echo ^0.00000000000000000000000000000000000000000000000000>>camera.txt
::+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
for /f "skip=22 tokens=2" %%a in (xjjz.txt) do (
	set /a n+=1
	::echo !n!  this is 4
	if !n!==31 echo %%a>>camera.txt
)
echo ^0.00000000000000000000000000000000000000000000000000>>camera.txt
::+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
for /f "skip=23 tokens=2" %%a in (xjjz.txt) do (
	set /a n+=1
	::echo !n!  this is 5
	if !n!==39 echo %%a>>camera.txt
)
echo ^0.00000000000000000000000000000000000000000000000000>>camera.txt
::+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
for /f "skip=24 tokens=2" %%a in (xjjz.txt) do (
	set /a n+=1
	::echo !n!  this is 6
	if !n!==46 echo %%a>>camera.txt
)
::+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
for /f "skip=25 tokens=2" %%a in (xjjz.txt) do (
	set /a n+=1
	::echo !n!  this is 7
	if !n!==52 echo %%a>>camera.txt
)
::+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
for /f "skip=26 tokens=2" %%a in (xjjz.txt) do (
	set /a n+=1
	::echo !n!  this is 8
	if !n!==57 echo %%a>>camera.txt
)
::+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
for /f "skip=27 tokens=2" %%a in (xjjz.txt) do (
	set /a n+=1
	::echo !n!  this is 9
	if !n!==61 echo %%a>>camera.txt
)
::+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
for /f "skip=28 tokens=2" %%a in (xjjz.txt) do (
	set /a n+=1
	::echo !n!  this is 10
	if !n!==64 echo %%a>>camera.txt
)
echo ^0>>camera.txt
echo ^0>>camera.txt
echo ^0>>camera.txt
pause
exit