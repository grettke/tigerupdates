#!/usr/bin/env bash
function tgrdltxt {
  printf "Attempting to download:\n'%s'\n" "$1"
  printf "to:\n"
  printf "'%s'" "$2"
  curl "$1" --limit-rate "1M" --progress-bar --styled-output --output "$2"
  printf "Sleeping 5 seconds.\n"
  sleep 5
  printf "Done sleeping.\n"
}

function tgrdlbin {
  printf "Attempting to download:\n '%s'\n" "$1"
  curl --remote-name "$1" --limit-rate "1M" --progress-bar --styled-output
  printf "Sleeping 5 seconds.\n"
  sleep 5
  printf "Done sleeping.\n"
}

function tgrmkdmg {
  hdiutil create \
          -srcdir "$1"\
          -fs "Journaled HFS+" \
          -format "UDRO" \
          -volname "Tiger Updates" \
          -ov \
          -nocrossdev \
          -scrub \
          -atomic \
          "tigerupdates.dmg"
}

export TGRSRC="/Users/grant/tmp/tigerupdates"
export TGRDST="/Users/grant/tmp/tigerdmg"

rm -rf "$TGRSRC"
rm -rf "$TGRDST"

mkdir "$TGRSRC"
mkdir "$TGRDST"

cd "$TGRSRC"

mkdir 01
cd 01

tgrdltxt "https://support.apple.com/kb/DL441?locale=en_US" "Java 1.3.1 and 1.4.2 Release 2 | Version: 2.0.html"

tgrdlbin "https://download.info.apple.com/Mac_OS_X/061-2072.20050913.jVTr2/Java131and142Release2.dmg"

tgrdltxt "https://support.apple.com/kb/dl170?locale=en_US" "Mac OS X 10.4.11 Combo Update (PPC).html"

tgrdlbin "https://download.info.apple.com/Mac_OS_X/061-3461.20071114.8Uy45/MacOSXUpdCombo10.4.11PPC.dmg"

cd "$TGRSRC"

mkdir 02
cd 02

tgrdltxt "https://support.apple.com/kb/dl304?locale=en_US" "X11 Update 2006.html"

tgrdlbin "https://download.info.apple.com/Mac_OS_X/061-2901.20061113.iUnrq/X11Update2006.dmg"

tgrdltxt "https://support.apple.com/kb/DL713?locale=en_US" "Migration and DVD-CD Sharing Update.html"

tgrdlbin "https://download.info.apple.com/Mac_OS_X/061-5623.20081016.mju2Q/MigrationDVDCDSharingUp.dmg"

tgrdltxt "https://support.apple.com/kb/dl838?locale=en_US" "QuickTime.html"

tgrdlbin "https://secure-appldnld.apple.com/QuickTime/061-6742.20090909.TgQt4/QuickTime764_Tiger.dmg"

tgrdltxt "https://support.apple.com/kb/DL931?locale=en_US" "Security Update 2009-005 (PowerPC).html"

tgrdlbin "https://download.info.apple.com/Mac_OS_X/061-7100.20090910.Scdfr/SecUpd2009-005PPC.dmg"

cd "$TGRSRC"

mkdir 03
cd 03

tgrdltxt "https://support.apple.com/kb/DL380?locale=en_US" "J2SE 5.0 Release 4.html"

tgrdlbin "https://download.info.apple.com/Mac_OS_X/061-2243.20060417.JvpPc/J2SE50Release4.dmg"

tgrdltxt "https://web.archive.org/web/20130616225610/http://support.apple.com/kb/dl1069" "Safari.html"

tgrdlbin "https://web.archive.org/web/20130616225610/http://appldnld.apple.com/Safari4/061-9485.20101118.Vfr455/Safari4.1.3Tiger.dmg"

cd "$TGRSRC"

mkdir 04
cd 04

tgrdltxt "https://support.apple.com/kb/dl281?locale=en_US" "Java for Mac OS X 10.4 Release 5.html"

tgrdlbin "https://download.info.apple.com/Mac_OS_X/061-2829.20070215.Tj5Up/JavaForMacOSX10.4Release5.dmg"

tgrdltxt "https://support.apple.com/kb/dl152?locale=en_US" "Java for Mac OS X 10.4, Release 6.html"

tgrdlbin "https://download.info.apple.com/Mac_OS_X/061-4073.20071213.b64Us/JavaForMacOSX10.4Release6.dmg"

tgrdltxt "https://support.apple.com/kb/DL699?locale=en_US" "Java for Mac OS X 10.4, Release 7.html"

tgrdlbin "https://download.info.apple.com/Mac_OS_X/061-4472.20080918.l9a3n/JavaForMacOSX10.4Release7.dmg"

tgrdltxt "https://support.apple.com/kb/DL776?locale=en_US" "Java for Mac OS X 10.4, Release 8.html"

tgrdlbin "https://download.info.apple.com/Mac_OS_X/061-5909.20090212.wqErt/JavaForMacOSX10.4Release8.dmg"

tgrdltxt "https://support.apple.com/kb/dl847?locale=en_US" "Java for Mac OS X 10.4, Release 9.html"

tgrdlbin "https://download.info.apple.com/Mac_OS_X/061-6614.20090615.jVa9r/JavaForMacOSX10.4Release9.dmg"

cd "$TGRSRC"

cd "$TGRSRC"
tgrdltxt "https://web.archive.org/web/20141111085423/https://support.apple.com/en-us/HT201259" "Mac OS X: How to verify a SHA-1 digest.html"

open "$TGRDST"

cd "$TGRDST"
tgrmkdmg "$TGRSRC"

hdiutil verify "tigerupdates.dmg"

hdiutil attach "tigerupdates.dmg"
