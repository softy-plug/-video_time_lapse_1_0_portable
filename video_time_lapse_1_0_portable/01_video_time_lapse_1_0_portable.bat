::[FFmpeg video_time_lapse_1_0 softy_plug]
@echo off

:again

mkdir out_timelapse
for %%i in (*.mp4) do (
ffmpeg -i "%%i" -vf setpts=1/280*PTS -an "out_timelapse/%%~ni_tl.mp4"
)

for %%i in (*.avi) do (
ffmpeg -i "%%i" -vf setpts=1/280*PTS -an "out_timelapse/%%~ni_tl.avi"
)

for %%i in (*.mkv) do (
ffmpeg -i "%%i" -vf setpts=1/280*PTS -an "out_timelapse/%%~ni_tl.mkv"
)

for %%i in (*.mov) do (
ffmpeg -i "%%i" -vf setpts=1/280*PTS -an "out_timelapse/%%~ni_tl.mov"
)

for %%i in (*.wmv) do (
ffmpeg -i "%%i" -vf setpts=1/280*PTS -an "out_timelapse/%%~ni_tl.wmv"
)

for %%i in (*.flv) do (
ffmpeg -i "%%i" -vf setpts=1/280*PTS -an "out_timelapse/%%~ni_tl.flv"
)

for %%i in (*.avchd) do (
ffmpeg -i "%%i" -vf setpts=1/280*PTS -an "out_timelapse/%%~ni_tl.avchd"
)

for %%i in (*.f4v) do (
ffmpeg -i "%%i" -vf setpts=1/280*PTS -an "out_timelapse/%%~ni_tl.f4v"
)

for %%i in (*.swf) do (
ffmpeg -i "%%i" -vf setpts=1/280*PTS -an "out_timelapse/%%~ni_tl.swf"
)

for %%i in (*.mpv) do (
ffmpeg -i "%%i" -vf setpts=1/280*PTS -an "out_timelapse/%%~ni_tl.mpv"
)

for %%i in (*.mpe) do (
ffmpeg -i "%%i" -vf setpts=1/280*PTS -an "out_timelapse/%%~ni_tl.mpe"
)

for %%i in (*.mp2) do (
ffmpeg -i "%%i" -vf setpts=1/280*PTS -an "out_timelapse/%%~ni_tl.mp2"
)

for %%i in (*.mpeg) do (
ffmpeg -i "%%i" -vf setpts=1/280*PTS -an "out_timelapse/%%~ni_tl.mpeg"
)

for %%i in (*.mpg) do (
ffmpeg -i "%%i" -vf setpts=1/280*PTS -an "out_timelapse/%%~ni_tl.mpg"
)

for %%i in (*.3gp) do (
ffmpeg -i "%%i" -vf setpts=1/280*PTS -an "out_timelapse/%%~ni_tl.3gp"
)

for %%i in (*.m4v) do (
ffmpeg -i "%%i" -vf setpts=1/280*PTS -an "out_timelapse/%%~ni_tl.m4v"
)

for %%i in (*.qt) do (
ffmpeg -i "%%i" -vf setpts=1/280*PTS -an "out_timelapse/%%~ni_tl.qt"
)

for %%i in (*.mxf) do (
ffmpeg -i "%%i" -vf setpts=1/280*PTS -an "out_timelapse/%%~ni_tl.mxf"
)

for %%i in (*.raw) do (
ffmpeg -i "%%i" -vf setpts=1/280*PTS -an "out_timelapse/%%~ni_tl.raw"
)

::[FFmpeg video_time_lapse_1_0 softy_plug]

if NOT ["%errorlevel%"]==["0"] goto:error
echo [92m%~n1 Done.[0m
shift
if "%~1" == "" goto:end
goto:again
:error

echo [93mError! Video files to encode were not found. Check for video files in the folder with the executable .exe file.[0m
pause
exit 0
:end

cls
echo [92mEncoding succesful. This window will close after 10 seconds.[0m
timeout /t 10


::[FFmpeg video_time_lapse_1_0 softy_plug]
