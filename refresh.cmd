set outputfolder="C:\git\the-data-garden\output"
cd /d %outputfolder%
for /F "delims=" %%i in ('dir /b') do (rmdir "%%i" /s/q || del "%%i" /s/q)
set homefolder="C:\git\the-data-garden"
cd /d %homefolder%
call poetry run pelican content
call poetry run pelican --listen