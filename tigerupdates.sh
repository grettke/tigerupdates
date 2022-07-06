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
