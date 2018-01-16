@echo off
echo;

cd /d %~dp0

if xx%1 == xx (
	echo このバッチファイルに画像をドロップすると、Equirectangular のメタデータを付加して出力します。
) else (
	exiftool -ProjectionType="equirectangular" -UsePanoramaViewer=True %1
	echo;
	echo %1
	echo この画像に下記の通りメタデータを書き込みました。
	echo;
	exiftool -ProjectionType -UsePanoramaViewer %1
)

echo;
echo 何かキーを押すと終了します。
pause > nul