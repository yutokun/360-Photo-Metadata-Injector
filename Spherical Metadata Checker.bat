@echo off
echo;

cd /d %~dp0

if xx%1 == xx (
	echo このバッチファイルに画像をドロップすると、360度画像のメタデータ（ProjectionType, UsePanoramaViewer）を表示します。
) else (
	echo;
	echo この画像の360度認識状況は下記のとおりです。
	echo %1
	echo;
	exiftool -ProjectionType -UsePanoramaViewer -FullPanoHeightPixels -FullPanoWidthPixels -CroppedAreaImageHeightPixels -CroppedAreaImageWidthPixels %1
)

echo;
echo 何かキーを押すと終了します。
pause > nul