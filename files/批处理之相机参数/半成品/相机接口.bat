@echo off 
setlocal Enabledelayedexpansion
for /f "skip=21 tokens=2" %%a in (xjjz.txt) do (
set /a n+=1
if !n!==1 echo %%a>>a_back.txt
)
::+++++++++++++++++++++++++++++++++++++++++
for /f "skip=22 tokens=2" %%a in (xjjz.txt) do (
set /a n+=1
if !n!==1 echo %%a>>a_back.txt
)
::+++++++++++++++++++++++++++++++++++++++++
for /f "skip=20 tokens=2" %%a in (xjjz.txt) do (
set /a n+=1
if !n!==1 echo %%a>>a_back.txt
)

echo Len_distortion_parameters:>>a_back.txt
echo ^0>>a_back.txt
echo ^0.00000000000000000000000000000000000000000000000000>>a_back.txt
echo ^0.00000000000000000000000000000000000000000000000000>>a_back.txt
echo ^0.00000000000000000000000000000000000000000000000000>>a_back.txt
echo this is my first>>a_back.txt
::+++++++++++++++++++++++++++++++++++++++++
for /f "skip=23 tokens=2" %%a in (xjjz.txt) do (
set /a n+=1
if !n!==1 echo %%a>>a_back.txt
)
echo ^0.00000000000000000000000000000000000000000000000000>>a_back.txt
::+++++++++++++++++++++++++++++++++++++++++
for /f "skip=24 tokens=2" %%a in (xjjz.txt) do (
set /a n+=1
if !n!==1 echo %%a>>a_back.txt
)
echo ^0.00000000000000000000000000000000000000000000000000>>a_back.txt
::+++++++++++++++++++++++++++++++++++++++++
for /f "skip=25 tokens=2" %%a in (xjjz.txt) do (
set /a n+=1
if !n!==1 echo %%a>>a_back.txt
)
::+++++++++++++++++++++++++++++++++++++++++
for /f "skip=26 tokens=2" %%a in (xjjz.txt) do (
set /a n+=1
if !n!==1 echo %%a>>a_back.txt
)
::+++++++++++++++++++++++++++++++++++++++++
for /f "skip=27 tokens=2" %%a in (xjjz.txt) do (
set /a n+=1
if !n!==1 echo %%a>>a_back.txt
)
::+++++++++++++++++++++++++++++++++++++++++
for /f "skip=28 tokens=2" %%a in (xjjz.txt) do (
set /a n+=1
if !n!==1 echo %%a>>a_back.txt
)
::+++++++++++++++++++++++++++++++++++++++++
for /f "skip=29 tokens=2" %%a in (xjjz.txt) do (
set /a n+=1
if !n!==1 echo %%a>>a_back.txt
)
echo ^0>>a_back.txt
echo ^0>>a_back.txt
echo ^0>>a_back.txt
pause
exit