ROMDIR=~/Plus
cd $ROMDIR
DATETIME=$(grep "org.pixelexperience.build_date_utc=" out/target/product/ginkgo/system/build.prop | cut -d "=" -f 2)
FILENAME=$(find out/target/product/jasmine_sprout/PixelExperience*.zip | cut -d "/" -f 5)
ID=$(md5sum out/target/product/ginkgo/PixelExperience*.zip | cut -d " " -f 1)
FILEHASH=$ID
SIZE=$(wc -c out/target/product/ginkgo/PixelExperience*.zip | awk '{print $1}')
URL1="https://sourceforge.net/projects/pixelexperience-ginkgo/$FILENAME/download"
URL=$URL1
VERSION="10"
WEBSITE_URL="https://sourceforge.net/projects/pixelexperience-ginkgo/"
NEWS_URL="https:\/\/t.me\/rmn8update"
MAINTAINER="Dinh San"
MAINTAINER_URL="https:\/\/t.me/san2k"
FORUM_URL="#"
JSON_FMT='{\n"error":false,\n"filename": %s,\n"datetime": %s,\n"size":%s, \n"url":"%s", \n"filehash":"%s", \n"version": "%s", \n"id": "%s",\n"website_url":"%s",\n"news_url":"%s",\n"maintainer":"%s",\n"maintainer_url":"%s",\n"forum_url":"%s"\n}'
printf "$JSON_FMT" "$FILENAME" "$DATETIME" "$SIZE" "$URL" "$FILEHASH" "$VERSION" "$ID" "$WEBSITE_URL" "$NEWS_URL" "$MAINTAINER" "$MAINTAINER_URL" "$FORUM_URL" > ~/OTA/builds/ginkgo.json
