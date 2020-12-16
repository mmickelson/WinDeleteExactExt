@echo off
:: first argument is the directory to search
pushd %1
for /f "eol=: delims=" %%F in ('dir /b /s *.jsx^|findstr /lie ".jsx"') do del %%~fF
popd