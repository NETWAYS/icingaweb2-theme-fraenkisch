#copy the existing german language and rename it
cp /usr/share/i18n/locales/de_DE /usr/share/i18n/locales/de_FR 2> /dev/null
localedef -i de_FR -f UTF-8 de_FR.UTF-8 2> /dev/null

#To use the langage in Icingaweb2. We need to create sym links into icingaweb2, the monitoring module and the director module
ln -s /usr/share/icingaweb2/modules/fraenkisch/translation/monitoring/de_FR/ /usr/share/icingaweb2/modules/monitoring/application/locale/ 2> /dev/null
ln -s /usr/share/icingaweb2/modules/fraenkisch/translation/icingaweb2/de_FR/ /usr/share/icingaweb2/application/locale/ 2> /dev/null
ln -s /usr/share/icingaweb2/modules/fraenkisch/translation/director/de_FR/ /usr/share/icingaweb2/modules/director/application/locale 2> /dev/null
ln -s /usr/share/icingaweb2/modules/fraenkisch/translation/map/de_FR/ /usr/share/icingaweb2/modules/map/application/locale 2> /dev/null

# Enable the module
icingacli module enable fraenkisch 2> /dev/null

echo -e "\033[33mTo make the frankish language available you have to restart your webserver.\033[0m"
echo -e "\033[33mIf you have a running PHP Service. Restart this, too.\033[0m"

