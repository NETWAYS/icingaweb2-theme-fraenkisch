Frankish Theme for Icinga Web 2
=================================

<!-- TOC -->

- [Features](#features)
  - [Custom theme](#custom-theme)
  - [Custom language](#custom-language)
- [How to install](#how-to-install)

<!-- /TOC -->

## Features

### Custom theme

* Main logo in the interface replaced by a Frankish Icinga Logo
* Colors of Icinga tuned for a frankish look
* Login background changed
* Background to menu added

![Screenshot Login](doc/screenshots/login.png)
![Screenshot Tactical Overview](doc/screenshots/about.png)

### Custom language

 * This theme brings its own language which you can choose in your settings (de_FR)

## How to install

Install these theme repository like any other Icinga Web 2 module at:

    /usr/share/icingaweb2/modules/fraenkisch
    
After installing the module you have to execcute the following installation script.

    /usr/share/icingaweb2/modules/fraenkisch/installation/installation.sh

If the module is not already enabled, enable the module:

    icingacli module enable fraenkisch

Then you can select the theme in the admin or user UI.
