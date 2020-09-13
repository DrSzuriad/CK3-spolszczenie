:: BUILDER SETTINGS
set language="pl"
set charset="empty"
set project_folder="Spolszczenie_CK3"
set parser_version="0.1.10"

:: LOGIC
echo "Starting conversion of translated files from Transifex into the EU4 format for workshop delivery and automated mod building."
echo "Removing temp directory - might say does not exist. That is normal, just a precaution."
rd /s /q temp
echo "Starting compiling latest source strings directory for CK3 format into the temp supply directory"
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_supply" "pliki\\%language%" "pliki\\en" "temp\\supply" yaml
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_supply" "pliki\\%language%\\bookmark" "pliki\\en\\bookmark" "temp\\supply\\bookmark" yaml
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_supply" "pliki\\%language%\\credits" "pliki\\en\\credits" "temp\\supply\\credits" yaml
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_supply" "pliki\\%language%\\culture" "pliki\\en\\culture" "temp\\supply\\culture" yaml
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_supply" "pliki\\%language%\\custom_localization" "pliki\\en\\custom_localization" "temp\\supply\\custom_localization" yaml
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_supply" "pliki\\%language%\\dynasties" "pliki\\en\\dynasties" "temp\\supply\\dynasties" yaml
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_supply" "pliki\\%language%\\dynasty_legacies" "pliki\\en\\dynasty_legacies" "temp\\supply\\dynasty_legacies" yaml
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_supply" "pliki\\%language%\\enum" "pliki\\en\\enum" "temp\\supply\\enum" yaml
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_supply" "pliki\\%language%\\event_localization" "pliki\\en\\event_localization" "temp\\supply\\event_localization" yaml
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_supply" "pliki\\%language%\\gui" "pliki\\en//gui" "temp\\supply\\gui" yaml
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_supply" "pliki\\%language%\\interactions" "pliki\\en\\interactions" "temp\\supply\\interactions" yaml
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_supply" "pliki\\%language%\\lifestyles" "pliki\\en\\lifestyles" "temp\\supply\\lifestyles" yaml
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_supply" "pliki\\%language%\\load_tips" "pliki\\en\\load_tips" "temp\\supply\\load_tips" yaml
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_supply" "pliki\\%language%\\modifiers" "pliki\\en\\modifiers" "temp\\supply\\modifiers" yaml
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_supply" "pliki\\%language%\\names" "pliki\\en\\names" "temp\\supply\\names" yaml
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_supply" "pliki\\%language%\\opinions" "pliki\\en\\opinions" "temp\\supply\\opinions" yaml
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_supply" "pliki\\%language%\\portraits" "pliki\\en\\portraits" "temp\\supply\\portraits" yaml
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_supply" "pliki\\%language%\\religion" "pliki\\en\\religion" "temp\\supply\\religion" yaml
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_supply" "pliki\\%language%\\triggers" "pliki\\en\\triggers" "temp\\supply\\triggers" yaml
echo "Starting compiling latest translations to desired language - in this case - polish."
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_to_eu4" "temp\\supply" "temp\\ck3" "%charset%"
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_to_eu4" "temp\\supply\\bookmark" "temp\\ck3\\bookmark" "%charset%"
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_to_eu4" "temp\\supply\\credits" "temp\\ck3\\credits" "%charset%"
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_to_eu4" "temp\\supply\\culture" "temp\\ck3\\culture" "%charset%"
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_to_eu4" "temp\\supply\\custom_localization" "temp\\ck3\\custom_localization" "%charset%"
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_to_eu4" "temp\\supply\\dynasties" "temp\\ck3\\dynasties" "%charset%"
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_to_eu4" "temp\\supply\\dynasty_legacies" "temp\\ck3\\dynasty_legacies" "%charset%"
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_to_eu4" "temp\\supply\\enum" "temp\\ck3\\enum" "%charset%"
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_to_eu4" "temp\\supply\\event_localization" "temp\\ck3\\event_localization" "%charset%"
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_to_eu4" "temp\\supply\\gui" "temp\\ck3\\gui" "%charset%"
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_to_eu4" "temp\\supply\\interactions" "temp\\ck3\\interactions" "%charset%"
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_to_eu4" "temp\\supply\\lifestyles" "temp\\ck3\\lifestyles" "%charset%"
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_to_eu4" "temp\\supply\\load_tips" "temp\\ck3\\load_tips" "%charset%"
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_to_eu4" "temp\\supply\\modifiers" "temp\\ck3\\modifiers" "%charset%"
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_to_eu4" "temp\\supply\\names" "temp\\ck3\\names" "%charset%"
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_to_eu4" "temp\\supply\\opinions" "temp\\ck3\\opinions" "%charset%"
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_to_eu4" "temp\\supply\\portraits" "temp\\ck3\\portraits" "%charset%"
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_to_eu4" "temp\\supply\\religion" "temp\\ck3\\religion" "%charset%"
java -jar "tools\\LocaleParser\\bin\\LocaleParser-%parser_version%-SNAPSHOT.jar" "folder_to_eu4" "temp\\supply\\triggers" "temp\\ck3\\triggers" "%charset%"
cd "%project_folder%"
echo "Removing old localisations"
del /s /f /q english
mkdir english
cd ../
echo "Copying new localisation"
xcopy /s temp\\ck3 "%project_folder%\\english"
echo "Cleaning up temp directory."
rd /s /q temp
echo "Temp directory cleaned up, goodbye, have a nice day! :smile:
pause