# 360 Photo Metadata Injector
画像データに 360 度表示用のメタデータを付加するバッチファイルです。  
Windows 用です。

Google フォトや LINE は360度表示に対応していますが、**メタデータが足りない場合、普通の写真として表示してしまいます。**  
そんな時にこのツールを使うと360度写真として認識されるようになるはずです。

## 使い方
`Spherical Metadata Injector.bat` に画像データをドロップすると、**メタデータを添付して保存します。**

`Spherical Metadata Checker.bat` に画像データをドロップすると、**メタデータの状況を表示します。**

## 操作される項目
以下のメタデータが操作されます。
- Projection Type
- Use Panorama View
- FullPanoHeightPixels
- FullPanoWidthPixels
- CroppedAreaImageHeightPixels
- CroppedAreaImageWidthPixels

## 同梱ライブラリ
超感謝

[ExifTool](https://www.sno.phy.queensu.ca/~phil/exiftool/) by Phil Harvey  
GNU General Public License v3.0

## LICENSE
[GNU General Public License v3.0](https://github.com/yutokun/360-Photo-Metadata-Injector/blob/master/LICENSE)