@echo off
title Clear Icon Cache
echo Kill Explorer.exe (Stops Explorer.exe, will restart at end of script)
pause
taskkill /F /IM explorer.exe
echo Mount User Profile
cd /d %userprofile%\AppData\Local
pause
echo Load IconCache.db (Loads if present)
attrib -h IconCache.db
pause
echo Delete IconCache.db (Resets Windows Icon Cache)
del IconCache.db
pause
echo Restart Explorer.exe
start explorer.exe
echo End of script (Icon Cache reset)
pause
