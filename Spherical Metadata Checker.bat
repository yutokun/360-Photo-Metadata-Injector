@echo off
echo;

cd /d %~dp0

if xx%1 == xx (
	echo ���̃o�b�`�t�@�C���ɉ摜���h���b�v����ƁA360�x�摜�̃��^�f�[�^�iProjectionType, UsePanoramaViewer�j��\�����܂��B
) else (
	echo;
	echo ���̉摜��360�x�F���󋵂͉��L�̂Ƃ���ł��B
	echo %1
	echo;
	exiftool -ProjectionType -UsePanoramaViewer -FullPanoHeightPixels -FullPanoWidthPixels -CroppedAreaImageHeightPixels -CroppedAreaImageWidthPixels %1
)

echo;
echo �����L�[�������ƏI�����܂��B
pause > nul