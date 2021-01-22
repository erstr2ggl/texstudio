#!/usr/bin/env sh

# Exit on errors
set -e

echo "package build into zip for win"
echo "copy dlls and qt5 plugins"
/usr/lib/mxe/usr/bin/x86_64-w64-mingw32.shared-peldd texstudio.exe -a -w d3d11.dll -w dxgi.dll|grep dll|xargs cp -t .
pwd
cp -r /usr/lib/mxe/usr/x86_64-w64-mingw32.shared/qt5/plugins/platforms .
cp -r /usr/lib/mxe/usr/x86_64-w64-mingw32.shared/qt5/plugins/imageformats/ .
echo "make installer"
cp ./utilities/texstudio.nsi .
cp ./utilities/FileAssociation.nsh .
/usr/lib/mxe/usr/bin/x86_64-w64-mingw32.static-makensis texstudio.nsi
echo "Assembling package"
mkdir -p "package-zip/share"
mkdir -p "package-zip/config"
cp texstudio.exe package-zip/
cp *.dll package-zip
cp -r platforms package-zip/
cp -r ./imageformats package-zip/
cp -r ./translation package-zip/translations
cp -r ./templates package-zip
cp -r ./utilities/manual package-zip/help
cp ./utilities/latex2e.css package-zip/help
cp ./utilities/latex2e.html package-zip/help
cp -r ./utilities/dictionaries package-zip/dictionaries
cp -r ./utilities/TexTablet package-zip/TexTablet
cp -r ./travis-ci/mxe/fonts package-zip/share/


echo "Fetching poppler data"
	wget --no-check-certificate "${POPPLERDATA_URL}"
	CHKSUM=$(openssl dgst -sha256 "${POPPLERDATA_FILE}" 2> /dev/null)
	if [ "${CHKSUM}" != "SHA256(${POPPLERDATA_FILE})= ${POPPLERDATA_SHA256}" ]; then
		print_error "Wrong checksum"
		print_error "${CHKSUM}"
		print_error "(expected: ${POPPLERDATA_SHA256})"
		exit 1
	fi
tar -x -C \"package-zip/share/\" -f ./${POPPLERDATA_FILE}\" && mv \"package-zip/share/${POPPLERDATA_SUBDIR} package-zip/share/poppler

	
cd package-zip && zip -r ./texstudio-win-${VERSION_NAME}.zip *
sha256sum ./texstudio_installer.exe
sha256sum ./texstudio.exe
sha256sum ./texstudio-win-${VERSION_NAME}.zip
cp ./texstudio-win-${VERSION_NAME}.zip ./texstudio-${TXS_VERSION}-win-portable-qt5.zip
cp ./texstudio_installer.exe ./texstudio-${TXS_VERSION}-win-qt5.exe


