@echo off
echo;

cd /d %~dp0

if xx%1 == xx (
	echo ���̃o�b�`�t�@�C���ɉ摜���h���b�v����ƁAEquirectangular �̃��^�f�[�^��t�����ďo�͂��܂��B
) else (
	exiftool -ProjectionType="equirectangular" -UsePanoramaViewer=True %1
	echo;
	echo %1
	echo ���̉摜�ɉ��L�̒ʂ胁�^�f�[�^���������݂܂����B
	echo;
	exiftool -ProjectionType -UsePanoramaViewer %1
)

echo;
echo �����L�[�������ƏI�����܂��B
pause > nul