@echo off
echo;
cd /d %~dp0

if xx%1 == xx (
	echo このバッチファイルに画像をドロップすると、Equirectangular のメタデータを付加して出力します。
	goto end
)

for /f "usebackq tokens=*" %%i in (`exiftool -s3 -ImageWidth %1`) do @set width=%%i
for /f "usebackq tokens=*" %%i in (`exiftool -s3 -ImageHeight %1`) do @set height=%%i

exiftool -overwrite_original -ProjectionType="equirectangular" -UsePanoramaViewer=True -FullPanoHeightPixels=%height% -FullPanoWidthPixels=%width% -CroppedAreaImageHeightPixels=%height% -CroppedAreaImageWidthPixels=%width% %1

echo;
echo %1
echo この画像に下記の通りメタデータを書き込みました。
echo;
exiftool -ProjectionType -UsePanoramaViewer -FullPanoHeightPixels -FullPanoWidthPixels -CroppedAreaImageHeightPixels -CroppedAreaImageWidthPixels %1

:end
echo;
echo 何かキーを押すと終了します。
pause > nul