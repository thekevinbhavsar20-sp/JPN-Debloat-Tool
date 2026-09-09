@echo off
setlocal enabledelayedexpansion
title JPN - Debloat Tool by K.S.
color 0A

:: ============================================================
::  Jio Phone Next Debloat Tool
::  Uses: adb shell pm uninstall -k --user 0 <package>
::  This removes the app from the CURRENT user profile only.
::  It does NOT touch the system partition, so it is fully
::  reversible with a factory reset if something goes wrong.
::
::  NOTE: "Device Financing" (com.rjio.lockunlock) and
::  "Subsidy Lock" (com.rjio.slc) are intentionally NOT
::  included in this script.
:: ============================================================

adb get-state >nul 2>&1
if errorlevel 1 (
    echo.
    echo [ERROR] No device detected, or ADB is not installed / not in PATH.
    echo Make sure USB debugging is enabled and the device is connected.
    echo.
    pause
    exit /b
)

:menu
cls
echo ================================================================
echo   JIO PHONE NEXT - DEBLOAT TOOL
echo ================================================================
echo   1. Raw Device        (aggressive strip - power users)
echo   2. Minimal Features  (Raw list + Chrome/GMS/Play Store/Messages etc.)
echo   3. Exit
echo ================================================================
set /p choice="Select an option (1-3): "

if "%choice%"=="1" goto raw
if "%choice%"=="2" goto most
if "%choice%"=="3" exit /b
goto menu

:raw
cls
title Debloat in Process
echo Applying RAW DEVICE profile...
echo ----------------------------------------------------------------

echo Android S Easter Egg
adb shell pm uninstall -k --user 0 com.android.egg

echo Android Setup
adb shell pm uninstall -k --user 0 com.google.android.setupwizard

echo ANH
adb shell pm uninstall -k --user 0 com.jio.adc.embedded

echo CarrierDefaultApp
adb shell pm uninstall -k --user 0 com.android.carrierdefaultapp

echo Carrier Services
adb shell pm uninstall -k --user 0 com.google.android.ims

echo ConfigUpdater
adb shell pm uninstall -k --user 0 com.google.android.configupdater

echo Default Print Service
adb shell pm uninstall -k --user 0 com.android.bips

echo Duo
adb shell pm uninstall -k --user 0 com.google.android.apps.tachyon

echo Emergency Information
adb shell pm uninstall -k --user 0 com.android.emergency

echo FM Radio
adb shell pm uninstall -k --user 0 com.caf.fmradio

echo FmTest
adb shell pm uninstall -k --user 0 com.mmigroup.fmradio

echo Glance
adb shell pm uninstall -k --user 0 com.glance.lockscreenJioNext

echo Google Assistant Go
adb shell pm uninstall -k --user 0 com.google.android.apps.assistant

echo Google Location History
adb shell pm uninstall -k --user 0 com.google.android.gms.location.history

echo Google Partner Setup
adb shell pm uninstall -k --user 0 com.google.android.partnersetup

echo Google TV
adb shell pm uninstall -k --user 0 com.google.android.videos

echo GPay
adb shell pm uninstall -k --user 0 com.google.android.apps.nbu.paisa.user

echo JioChat
adb shell pm uninstall -k --user 0 com.jiochat.jiochatapp

echo JioCinema
adb shell pm uninstall -k --user 0 com.jio.media.ondemand.go

echo JioGames
adb shell pm uninstall -k --user 0 com.jio.jiogameslite

echo JioHealthHub
adb shell pm uninstall -k --user 0 com.jio.hh.lite

echo JioMart
adb shell pm uninstall -k --user 0 com.jpl.jiomart

echo JioMeet
adb shell pm uninstall -k --user 0 com.jio.meet.lite

echo JioMMI
adb shell pm uninstall -k --user 0 com.jio.jmmi

echo JioSaavn
adb shell pm uninstall -k --user 0 com.jio.media.jiobeats.lite

echo JioTV
adb shell pm uninstall -k --user 0 com.jio.jioplay.tv.go

echo Maps
adb shell pm uninstall -k --user 0 com.google.android.apps.maps

echo Meta App Installer
adb shell pm uninstall -k --user 0 com.facebook.system

echo Meta App Manager
adb shell pm uninstall -k --user 0 com.facebook.appmanager

echo Meta Services
adb shell pm uninstall -k --user 0 com.facebook.services

echo MyJio
adb shell pm uninstall -k --user 0 com.jio.myjio

echo NFC Service
adb shell pm uninstall -k --user 0 com.android.nfc

echo OsuLogin
adb shell pm uninstall -k --user 0 com.android.hotspot2.osulogin

echo Work Setup
adb shell pm uninstall -k --user 0 com.android.managedprovisioning

echo YouTube
adb shell pm uninstall -k --user 0 com.google.android.youtube

echo YouTube Music
adb shell pm uninstall -k --user 0 com.google.android.apps.youtube.music

echo Tips
adb shell pm uninstall -k --user 0 com.google.android.apps.nbu.rani

echo ----------------------------------------------------------------
echo RAW DEVICE profile complete.
goto done

:most
cls
title Debloat in Process
echo Applying MINIMAL FEATURES profile...
echo ----------------------------------------------------------------

echo Android S Easter Egg
adb shell pm uninstall -k --user 0 com.android.egg

echo Android Setup
adb shell pm uninstall -k --user 0 com.google.android.setupwizard

echo ANH
adb shell pm uninstall -k --user 0 com.jio.adc.embedded

echo CarrierDefaultApp
adb shell pm uninstall -k --user 0 com.android.carrierdefaultapp

echo Carrier Services
adb shell pm uninstall -k --user 0 com.google.android.ims

echo ConfigUpdater
adb shell pm uninstall -k --user 0 com.google.android.configupdater

echo Default Print Service
adb shell pm uninstall -k --user 0 com.android.bips

echo Duo
adb shell pm uninstall -k --user 0 com.google.android.apps.tachyon

echo Emergency Information
adb shell pm uninstall -k --user 0 com.android.emergency

echo FM Radio
adb shell pm uninstall -k --user 0 com.caf.fmradio

echo FmTest
adb shell pm uninstall -k --user 0 com.mmigroup.fmradio

echo Glance
adb shell pm uninstall -k --user 0 com.glance.lockscreenJioNext

echo Google Assistant Go
adb shell pm uninstall -k --user 0 com.google.android.apps.assistant

echo Google Location History
adb shell pm uninstall -k --user 0 com.google.android.gms.location.history

echo Google Partner Setup
adb shell pm uninstall -k --user 0 com.google.android.partnersetup

echo Google TV
adb shell pm uninstall -k --user 0 com.google.android.videos

echo GPay
adb shell pm uninstall -k --user 0 com.google.android.apps.nbu.paisa.user

echo JioChat
adb shell pm uninstall -k --user 0 com.jiochat.jiochatapp

echo JioCinema
adb shell pm uninstall -k --user 0 com.jio.media.ondemand.go

echo JioGames
adb shell pm uninstall -k --user 0 com.jio.jiogameslite

echo JioHealthHub
adb shell pm uninstall -k --user 0 com.jio.hh.lite

echo JioMart
adb shell pm uninstall -k --user 0 com.jpl.jiomart

echo JioMeet
adb shell pm uninstall -k --user 0 com.jio.meet.lite

echo JioMMI
adb shell pm uninstall -k --user 0 com.jio.jmmi

echo JioSaavn
adb shell pm uninstall -k --user 0 com.jio.media.jiobeats.lite

echo JioTV
adb shell pm uninstall -k --user 0 com.jio.jioplay.tv.go

echo Maps
adb shell pm uninstall -k --user 0 com.google.android.apps.maps

echo Meta App Installer
adb shell pm uninstall -k --user 0 com.facebook.system

echo Meta App Manager
adb shell pm uninstall -k --user 0 com.facebook.appmanager

echo Meta Services
adb shell pm uninstall -k --user 0 com.facebook.services

echo MyJio
adb shell pm uninstall -k --user 0 com.jio.myjio

echo NFC Service
adb shell pm uninstall -k --user 0 com.android.nfc

echo Work Setup
adb shell pm uninstall -k --user 0 com.android.managedprovisioning

echo YouTube
adb shell pm uninstall -k --user 0 com.google.android.youtube

echo YouTube Music
adb shell pm uninstall -k --user 0 com.google.android.apps.youtube.music

echo Tips
adb shell pm uninstall -k --user 0 com.google.android.apps.nbu.rani

echo Calculator
adb shell pm uninstall -k --user 0 com.google.android.calculator

echo Calendar
adb shell pm uninstall -k --user 0 com.google.android.calendar

echo Calendar Storage
adb shell pm uninstall -k --user 0 com.android.providers.calendar

echo Chrome
adb shell pm uninstall -k --user 0 com.android.chrome

echo Data Restore Tool
adb shell pm uninstall -k --user 0 com.google.android.apps.restore

echo Digital Wellbeing
adb shell pm uninstall -k --user 0 com.google.android.apps.wellbeing

echo Drive
adb shell pm uninstall -k --user 0 com.google.android.apps.docs

echo Gallery Go
adb shell pm uninstall -k --user 0 com.google.android.apps.photosgo

echo Gmail
adb shell pm uninstall -k --user 0 com.google.android.gm

echo Google Go
adb shell pm uninstall -k --user 0 com.google.android.apps.searchlite

echo Lily Setup
adb shell pm uninstall -k --user 0 com.google.android.gmsintegration

echo Live Transcribe
adb shell pm uninstall -k --user 0 com.google.audio.hearing.visualization.accessibility.scribe

echo Messages
adb shell pm uninstall -k --user 0 com.jio.messageslite

echo Sound Amplifier
adb shell pm uninstall -k --user 0 com.google.android.accessibility.soundamplifier

echo Speech Services by Google
adb shell pm uninstall -k --user 0 com.google.android.tts

echo User Dictionary
adb shell pm uninstall -k --user 0 com.android.providers.userdictionary

:: GMS + Play Store removed LAST - too many other components stay
:: bound to these while active, removing them mid-list risks a
:: soft reboot. Everything else is already gone by this point.

echo ----------------------------------------------------------------
echo MINIMAL FEATURES profile complete.
goto done

:done
echo.
echo Done. Reboot the device for changes to fully apply.
echo (Restore anything via factory reset if needed.)
echo.
pause
exit /b
