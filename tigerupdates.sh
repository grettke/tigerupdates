# [[file:tigerupdates.org::org_grant_2022-07-03T23-41-50-05-00_donutron_7C3C14BA-36E2-4C56-8D00-09B9EAB9D148][org_grant_2022-07-03T23-41-50-05-00_donutron_7C3C14BA-36E2-4C56-8D00-09B9EAB9D148]]
function tgrdltxt {
  curl "$1" --limit-rate "1M" --progress-bar --styled-output --output "$2"
  printf "Sleeping 5 seconds.\n"
  sleep 5
  printf "Done sleeping.\n"
}

function tgrdlbin {
  curl --remote-name "$1" --limit-rate "1M" --progress-bar --styled-output
  printf "Sleeping 5 seconds.\n"
  sleep 5
  printf "Done sleeping.\n"
}
# org_grant_2022-07-03T23-41-50-05-00_donutron_7C3C14BA-36E2-4C56-8D00-09B9EAB9D148 ends here

# [[file:tigerupdates.org::org_grant_2022-07-03T23-41-50-05-00_donutron_E12169DB-B584-45B7-8367-AB8330E60DC9][org_grant_2022-07-03T23-41-50-05-00_donutron_E12169DB-B584-45B7-8367-AB8330E60DC9]]
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
# org_grant_2022-07-03T23-41-50-05-00_donutron_E12169DB-B584-45B7-8367-AB8330E60DC9 ends here

# [[file:tigerupdates.org::org_grant_2022-07-03T23-41-50-05-00_donutron_8883AB7F-5F2F-4B60-92FD-EF695D867A3F][org_grant_2022-07-03T23-41-50-05-00_donutron_8883AB7F-5F2F-4B60-92FD-EF695D867A3F]]
export TGRSRC="/Users/grant/tmp/tigerupdates"
export TGRDST="/Users/grant/tmp/tigerdmg"
# org_grant_2022-07-03T23-41-50-05-00_donutron_8883AB7F-5F2F-4B60-92FD-EF695D867A3F ends here

# [[file:tigerupdates.org::org_grant_2022-07-03T23-41-50-05-00_donutron_DBFCADD4-1533-4270-AFAA-E8B2C7DB1128][org_grant_2022-07-03T23-41-50-05-00_donutron_DBFCADD4-1533-4270-AFAA-E8B2C7DB1128]]
rm -rf "$TGRSRC"
rm -rf "$TGRDST"

mkdir "$TGRSRC"
mkdir "$TGRDST"
# org_grant_2022-07-03T23-41-50-05-00_donutron_DBFCADD4-1533-4270-AFAA-E8B2C7DB1128 ends here

# [[file:tigerupdates.org::org_grant_2022-07-03T23-41-50-05-00_donutron_C28E24DA-CDE2-48E9-B42E-7C02A3231DA7][org_grant_2022-07-03T23-41-50-05-00_donutron_C28E24DA-CDE2-48E9-B42E-7C02A3231DA7]]
cd "$TGRSRC"
# org_grant_2022-07-03T23-41-50-05-00_donutron_C28E24DA-CDE2-48E9-B42E-7C02A3231DA7 ends here

# [[file:tigerupdates.org::org_grant_2022-07-03T23-41-50-05-00_donutron_51FF1A44-2F66-4AB7-9722-11F7C2AD1F3F][org_grant_2022-07-03T23-41-50-05-00_donutron_51FF1A44-2F66-4AB7-9722-11F7C2AD1F3F]]
mkdir 01
cd 01
# org_grant_2022-07-03T23-41-50-05-00_donutron_51FF1A44-2F66-4AB7-9722-11F7C2AD1F3F ends here

# [[file:tigerupdates.org::org_grant_2022-07-03T23-41-50-05-00_donutron_B1CA0C4E-A027-4F7D-96DD-31326BED2078][org_grant_2022-07-03T23-41-50-05-00_donutron_B1CA0C4E-A027-4F7D-96DD-31326BED2078]]
tgrdltxt "https://support.apple.com/kb/DL441?locale=en_US" "Java 1.3.1 and 1.4.2 Release 2 | Version: 2.0.html"

tgrdlbin "https://download.info.apple.com/Mac_OS_X/061-2072.20050913.jVTr2/Java131and142Release2.dmg"
# org_grant_2022-07-03T23-41-50-05-00_donutron_B1CA0C4E-A027-4F7D-96DD-31326BED2078 ends here

# [[file:tigerupdates.org::org_grant_2022-07-03T23-41-50-05-00_donutron_DB267147-EBEE-4736-8038-2DD45BCF4689][org_grant_2022-07-03T23-41-50-05-00_donutron_DB267147-EBEE-4736-8038-2DD45BCF4689]]
tgrdltxt "https://support.apple.com/kb/dl170?locale=en_US" "Mac OS X 10.4.11 Combo Update (PPC)"

tgrdlbin "https://download.info.apple.com/Mac_OS_X/061-3461.20071114.8Uy45/MacOSXUpdCombo10.4.11PPC.dmg"
# org_grant_2022-07-03T23-41-50-05-00_donutron_DB267147-EBEE-4736-8038-2DD45BCF4689 ends here

# [[file:tigerupdates.org::org_grant_2022-07-03T23-41-50-05-00_donutron_B9DD0E13-A1C0-4489-85D9-AAB07FDE7604][org_grant_2022-07-03T23-41-50-05-00_donutron_B9DD0E13-A1C0-4489-85D9-AAB07FDE7604]]
cd "$TGRSRC"
# org_grant_2022-07-03T23-41-50-05-00_donutron_B9DD0E13-A1C0-4489-85D9-AAB07FDE7604 ends here

# [[file:tigerupdates.org::org_grant_2022-07-05T20-54-38-05-00_donutron_95AD38F8-9C9A-4C2B-AED4-8D111247BEFE][org_grant_2022-07-05T20-54-38-05-00_donutron_95AD38F8-9C9A-4C2B-AED4-8D111247BEFE]]
mkdir 02
cd 02
# org_grant_2022-07-05T20-54-38-05-00_donutron_95AD38F8-9C9A-4C2B-AED4-8D111247BEFE ends here

# [[file:tigerupdates.org::org_grant_2022-07-05T20-54-38-05-00_donutron_92042180-3F86-4211-80D3-8600F3A136D6][org_grant_2022-07-05T20-54-38-05-00_donutron_92042180-3F86-4211-80D3-8600F3A136D6]]
tgrdltxt "https://support.apple.com/kb/dl304?locale=en_US" "X11 Update 2006.html"

tgrdlbin "https://download.info.apple.com/Mac_OS_X/061-2901.20061113.iUnrq/X11Update2006.dmg"
# org_grant_2022-07-05T20-54-38-05-00_donutron_92042180-3F86-4211-80D3-8600F3A136D6 ends here

# [[file:tigerupdates.org::org_grant_2022-07-05T20-54-38-05-00_donutron_27F92313-0879-425C-8F8F-4B7D0789FF7E][org_grant_2022-07-05T20-54-38-05-00_donutron_27F92313-0879-425C-8F8F-4B7D0789FF7E]]
tgrdltxt "https://support.apple.com/kb/DL713?locale=en_US" "Migration and DVD/CD Sharing Update.html"

tgrdlbin "https://download.info.apple.com/Mac_OS_X/061-5623.20081016.mju2Q/MigrationDVDCDSharingUp.dmg"
# org_grant_2022-07-05T20-54-38-05-00_donutron_27F92313-0879-425C-8F8F-4B7D0789FF7E ends here

# [[file:tigerupdates.org::org_grant_2022-07-05T20-54-38-05-00_donutron_F22C2F4E-B97C-46E6-85BE-5E6B33DBA96B][org_grant_2022-07-05T20-54-38-05-00_donutron_F22C2F4E-B97C-46E6-85BE-5E6B33DBA96B]]
tgrdltxt "https://support.apple.com/kb/dl838?locale=en_US" "QuickTime"

tgrdlbin "https://secure-appldnld.apple.com/QuickTime/061-6742.20090909.TgQt4/QuickTime764_Tiger.dmg"
# org_grant_2022-07-05T20-54-38-05-00_donutron_F22C2F4E-B97C-46E6-85BE-5E6B33DBA96B ends here

# [[file:tigerupdates.org::org_grant_2022-07-05T20-54-38-05-00_donutron_4870AD67-D534-4B6B-89AF-8059319C3D40][org_grant_2022-07-05T20-54-38-05-00_donutron_4870AD67-D534-4B6B-89AF-8059319C3D40]]
tgrdltxt "https://support.apple.com/kb/DL931?locale=en_US" "Security Update 2009-005 (PowerPC)"

tgrdlbin "https://download.info.apple.com/Mac_OS_X/061-7100.20090910.Scdfr/SecUpd2009-005PPC.dmg"
# org_grant_2022-07-05T20-54-38-05-00_donutron_4870AD67-D534-4B6B-89AF-8059319C3D40 ends here

# [[file:tigerupdates.org::org_grant_2022-07-03T23-41-50-05-00_donutron_B9DD0E13-A1C0-4489-85D9-AAB07FDE7604][org_grant_2022-07-03T23-41-50-05-00_donutron_B9DD0E13-A1C0-4489-85D9-AAB07FDE7604]]
cd "$TGRSRC"
# org_grant_2022-07-03T23-41-50-05-00_donutron_B9DD0E13-A1C0-4489-85D9-AAB07FDE7604 ends here

# [[file:tigerupdates.org::org_grant_2022-07-05T20-54-38-05-00_donutron_97A238EF-F8CA-46D7-B557-20A793056DEF][org_grant_2022-07-05T20-54-38-05-00_donutron_97A238EF-F8CA-46D7-B557-20A793056DEF]]
mkdir 03
cd 03
# org_grant_2022-07-05T20-54-38-05-00_donutron_97A238EF-F8CA-46D7-B557-20A793056DEF ends here

# [[file:tigerupdates.org::org_grant_2022-07-05T20-54-38-05-00_donutron_F5208760-7B5E-4315-90E1-E987BD4D7EDE][org_grant_2022-07-05T20-54-38-05-00_donutron_F5208760-7B5E-4315-90E1-E987BD4D7EDE]]
tgrdltxt "" ".html"

tgrdlbin ""
# org_grant_2022-07-05T20-54-38-05-00_donutron_F5208760-7B5E-4315-90E1-E987BD4D7EDE ends here

# [[file:tigerupdates.org::org_grant_2022-07-05T20-54-38-05-00_donutron_B26742C5-C3AE-4B9A-8500-D7F2FB3559AA][org_grant_2022-07-05T20-54-38-05-00_donutron_B26742C5-C3AE-4B9A-8500-D7F2FB3559AA]]
tgrdltxt "" ".html"

tgrdlbin ""
# org_grant_2022-07-05T20-54-38-05-00_donutron_B26742C5-C3AE-4B9A-8500-D7F2FB3559AA ends here

# [[file:tigerupdates.org::org_grant_2022-07-03T23-41-50-05-00_donutron_B9DD0E13-A1C0-4489-85D9-AAB07FDE7604][org_grant_2022-07-03T23-41-50-05-00_donutron_B9DD0E13-A1C0-4489-85D9-AAB07FDE7604]]
cd "$TGRSRC"
# org_grant_2022-07-03T23-41-50-05-00_donutron_B9DD0E13-A1C0-4489-85D9-AAB07FDE7604 ends here

# [[file:tigerupdates.org::org_grant_2022-07-05T20-54-38-05-00_donutron_14779636-F814-4EDC-9D90-50A0182A2AC8][org_grant_2022-07-05T20-54-38-05-00_donutron_14779636-F814-4EDC-9D90-50A0182A2AC8]]
mkdir 04
cd 04
# org_grant_2022-07-05T20-54-38-05-00_donutron_14779636-F814-4EDC-9D90-50A0182A2AC8 ends here

# [[file:tigerupdates.org::org_grant_2022-07-05T20-54-38-05-00_donutron_B64C035C-C48F-4D20-9851-028051118218][org_grant_2022-07-05T20-54-38-05-00_donutron_B64C035C-C48F-4D20-9851-028051118218]]
tgrdltxt "" ".html"

tgrdlbin ""
# org_grant_2022-07-05T20-54-38-05-00_donutron_B64C035C-C48F-4D20-9851-028051118218 ends here

# [[file:tigerupdates.org::org_grant_2022-07-05T20-54-38-05-00_donutron_05D6B582-4746-4BD8-932D-C2000C5206D4][org_grant_2022-07-05T20-54-38-05-00_donutron_05D6B582-4746-4BD8-932D-C2000C5206D4]]
tgrdltxt "" ".html"

tgrdlbin ""
# org_grant_2022-07-05T20-54-38-05-00_donutron_05D6B582-4746-4BD8-932D-C2000C5206D4 ends here

# [[file:tigerupdates.org::org_grant_2022-07-05T20-54-38-05-00_donutron_5320C890-0206-407B-8282-57781BBD2B0C][org_grant_2022-07-05T20-54-38-05-00_donutron_5320C890-0206-407B-8282-57781BBD2B0C]]
tgrdltxt "" ".html"

tgrdlbin ""
# org_grant_2022-07-05T20-54-38-05-00_donutron_5320C890-0206-407B-8282-57781BBD2B0C ends here

# [[file:tigerupdates.org::org_grant_2022-07-05T20-54-38-05-00_donutron_9F1134B6-4CD0-4071-89B8-15381EAC99C6][org_grant_2022-07-05T20-54-38-05-00_donutron_9F1134B6-4CD0-4071-89B8-15381EAC99C6]]
tgrdltxt "" ".html"

tgrdlbin ""
# org_grant_2022-07-05T20-54-38-05-00_donutron_9F1134B6-4CD0-4071-89B8-15381EAC99C6 ends here

# [[file:tigerupdates.org::org_grant_2022-07-05T20-54-38-05-00_donutron_F61CA741-C1BE-41F1-BF01-34FD3C4F1EA0][org_grant_2022-07-05T20-54-38-05-00_donutron_F61CA741-C1BE-41F1-BF01-34FD3C4F1EA0]]
tgrdltxt "" ".html"

tgrdlbin ""
# org_grant_2022-07-05T20-54-38-05-00_donutron_F61CA741-C1BE-41F1-BF01-34FD3C4F1EA0 ends here

# [[file:tigerupdates.org::org_grant_2022-07-05T20-54-38-05-00_donutron_E22EAB2E-136C-4108-8193-435A1E23F9D2][org_grant_2022-07-05T20-54-38-05-00_donutron_E22EAB2E-136C-4108-8193-435A1E23F9D2]]
tgrdltxt "" ".html"

tgrdlbin ""
# org_grant_2022-07-05T20-54-38-05-00_donutron_E22EAB2E-136C-4108-8193-435A1E23F9D2 ends here

# [[file:tigerupdates.org::org_grant_2022-07-03T23-41-50-05-00_donutron_B9DD0E13-A1C0-4489-85D9-AAB07FDE7604][org_grant_2022-07-03T23-41-50-05-00_donutron_B9DD0E13-A1C0-4489-85D9-AAB07FDE7604]]
cd "$TGRSRC"
# org_grant_2022-07-03T23-41-50-05-00_donutron_B9DD0E13-A1C0-4489-85D9-AAB07FDE7604 ends here

# [[file:tigerupdates.org::org_grant_2022-07-03T23-41-50-05-00_donutron_6C089E9B-5709-4E75-B1F7-93F24510FA18][org_grant_2022-07-03T23-41-50-05-00_donutron_6C089E9B-5709-4E75-B1F7-93F24510FA18]]
open "$TGRDST"
# org_grant_2022-07-03T23-41-50-05-00_donutron_6C089E9B-5709-4E75-B1F7-93F24510FA18 ends here

# [[file:tigerupdates.org::org_grant_2022-07-03T23-41-50-05-00_donutron_39D17A7C-F94A-491C-8C00-1D8591D547F1][org_grant_2022-07-03T23-41-50-05-00_donutron_39D17A7C-F94A-491C-8C00-1D8591D547F1]]
cd "$TGRDST"
tgrmkdmg "$TGRSRC"
# org_grant_2022-07-03T23-41-50-05-00_donutron_39D17A7C-F94A-491C-8C00-1D8591D547F1 ends here

# [[file:tigerupdates.org::org_grant_2022-07-03T23-41-50-05-00_donutron_B07F222C-9C03-4F59-9B01-F67CAE8E3DC6][org_grant_2022-07-03T23-41-50-05-00_donutron_B07F222C-9C03-4F59-9B01-F67CAE8E3DC6]]
hdiutil verify "tigerupdates.dmg"
# org_grant_2022-07-03T23-41-50-05-00_donutron_B07F222C-9C03-4F59-9B01-F67CAE8E3DC6 ends here

# [[file:tigerupdates.org::org_grant_2022-07-03T23-41-50-05-00_donutron_4E24DA9D-2E62-45CE-B9F7-4AD81CC6678F][org_grant_2022-07-03T23-41-50-05-00_donutron_4E24DA9D-2E62-45CE-B9F7-4AD81CC6678F]]
hdiutil attach "tigerupdates.dmg"
# org_grant_2022-07-03T23-41-50-05-00_donutron_4E24DA9D-2E62-45CE-B9F7-4AD81CC6678F ends here
