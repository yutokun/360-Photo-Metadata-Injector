@echo off
echo;
cd /d %~dp0

if xx%1 == xx (
	echo ���̃o�b�`�t�@�C���ɉ摜���h���b�v����ƁAEquirectangular �̃��^�f�[�^��t�����ďo�͂��܂��B
	goto end
)

for /f "usebackq tokens=*" %%i in (`exiftool -s3 -ImageWidth %1`) do @set width=%%i
for /f "usebackq tokens=*" %%i in (`exiftool -s3 -ImageHeight %1`) do @set height=%%i

exiftool -overwrite_original -ProjectionType="equirectangular" -UsePanoramaViewer=True -FullPanoHeightPixels=%height% -FullPanoWidthPixels=%width% -CroppedAreaImageHeightPixels=%height% -CroppedAreaImageWidthPixels=%width% %1

echo;
echo %1
echo ���̉摜�ɉ��L�̒ʂ胁�^�f�[�^���������݂܂����B
echo;
exiftool -ProjectionType -UsePanoramaViewer -FullPanoHeightPixels -FullPanoWidthPixels -CroppedAreaImageHeightPixels -CroppedAreaImageWidthPixels %1

:end
echo;
echo �����L�[�������ƏI�����܂��B
pause > nul