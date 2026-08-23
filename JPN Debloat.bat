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

call :removeApp com.android.egg                          "Android S Easter Egg"
call :removeApp com.google.android.setupwizard            "Android Setup"
call :removeApp com.jio.adc.embedded                       "ANH"
call :removeApp com.android.carrierdefaultapp               "CarrierDefaultApp"
call :removeApp com.google.android.ims                      "Carrier Services"
call :removeApp com.google.android.configupdater             "ConfigUpdater"
call :removeApp com.android.bips                              "Default Print Service"
call :removeApp com.google.android.apps.tachyon                "Duo"
call :removeApp com.android.emergency                            "Emergency Information"
call :removeApp com.caf.fmradio                                   "FM Radio"
call :removeApp com.mmigroup.fmradio                                "FmTest"
call :removeApp com.glance.lockscreenJioNext                         "Glance"
call :removeApp com.google.android.apps.assistant                     "Google Assistant Go"
call :removeApp com.google.android.gms.location.history                "Google Location History"
call :removeApp com.google.android.partnersetup                         "Google Partner Setup"
call :removeApp com.google.android.videos                                "Google TV"
call :removeApp com.google.android.apps.nbu.paisa.user                    "GPay"
call :removeApp com.jiochat.jiochatapp                                     "JioChat"
call :removeApp com.jio.media.ondemand.go                                   "JioCinema"
call :removeApp com.jio.jiogameslite                                         "JioGames"
call :removeApp com.jio.hh.lite                                               "JioHealthHub"
call :removeApp com.jpl.jiomart                                                "JioMart"
call :removeApp com.jio.meet.lite                                               "JioMeet"
call :removeApp com.jio.jmmi                                                     "JioMMI"
call :removeApp com.jio.media.jiobeats.lite                                       "JioSaavn"
call :removeApp com.jio.jioplay.tv.go                                              "JioTV"
call :removeApp com.google.android.apps.maps                                        "Maps"
call :removeApp com.facebook.system                                                  "Meta App Installer"
call :removeApp com.facebook.appmanager                                               "Meta App Manager"
call :removeApp com.facebook.services                                                  "Meta Services"
call :removeApp com.jio.myjio                                                           "MyJio"
call :removeApp com.android.nfc                                                          "NFC Service"
call :removeApp com.android.hotspot2.osulogin                                             "OsuLogin"
call :removeApp com.android.managedprovisioning                                            "Work Setup"
call :removeApp com.google.android.youtube                                                  "YouTube"
call :removeApp com.google.android.apps.youtube.music                                        "YouTube Music"
call :removeApp com.google.android.apps.nbu.rani                                              "Tips"

echo ----------------------------------------------------------------
echo RAW DEVICE profile complete.
goto done

:most
cls
title Debloat in Process
echo Applying MINIMAL FEATURES profile...
echo ----------------------------------------------------------------

call :removeApp com.android.egg                          "Android S Easter Egg"
call :removeApp com.google.android.setupwizard            "Android Setup"
call :removeApp com.jio.adc.embedded                       "ANH"
call :removeApp com.android.carrierdefaultapp               "CarrierDefaultApp"
call :removeApp com.google.android.ims                      "Carrier Services"
call :removeApp com.google.android.configupdater             "ConfigUpdater"
call :removeApp com.android.bips                              "Default Print Service"
call :removeApp com.google.android.apps.tachyon                "Duo"
call :removeApp com.android.emergency                            "Emergency Information"
call :removeApp com.caf.fmradio                                   "FM Radio"
call :removeApp com.mmigroup.fmradio                                "FmTest"
call :removeApp com.glance.lockscreenJioNext                         "Glance"
call :removeApp com.google.android.apps.assistant                     "Google Assistant Go"
call :removeApp com.google.android.gms.location.history                "Google Location History"
call :removeApp com.google.android.partnersetup                         "Google Partner Setup"
call :removeApp com.google.android.videos                                "Google TV"
call :removeApp com.google.android.apps.nbu.paisa.user                    "GPay"
call :removeApp com.jiochat.jiochatapp                                     "JioChat"
call :removeApp com.jio.media.ondemand.go                                   "JioCinema"
call :removeApp com.jio.jiogameslite                                         "JioGames"
call :removeApp com.jio.hh.lite                                               "JioHealthHub"
call :removeApp com.jpl.jiomart                                                "JioMart"
call :removeApp com.jio.meet.lite                                               "JioMeet"
call :removeApp com.jio.jmmi                                                     "JioMMI"
call :removeApp com.jio.media.jiobeats.lite                                       "JioSaavn"
call :removeApp com.jio.jioplay.tv.go                                              "JioTV"
call :removeApp com.google.android.apps.maps                                        "Maps"
call :removeApp com.facebook.system                                                  "Meta App Installer"
call :removeApp com.facebook.appmanager                                               "Meta App Manager"
call :removeApp com.facebook.services                                                  "Meta Services"
call :removeApp com.jio.myjio                                                           "MyJio"
call :removeApp com.android.nfc                                                          "NFC Service"
call :removeApp com.android.hotspot2.osulogin                                             "OsuLogin"
call :removeApp com.android.managedprovisioning                                            "Work Setup"
call :removeApp com.google.android.youtube                                                  "YouTube"
call :removeApp com.google.android.apps.youtube.music                                        "YouTube Music"
call :removeApp com.google.android.apps.nbu.rani                                              "Tips"
call :removeApp com.google.android.calculator                                                   "Calculator"
call :removeApp com.google.android.calendar                                                      "Calendar"
call :removeApp com.android.providers.calendar                                                    "Calendar Storage"
call :removeApp com.android.chrome                                                                 "Chrome"
call :removeApp com.google.android.apps.restore                                                     "Data Restore Tool"
call :removeApp com.google.android.apps.wellbeing                                                    "Digital Wellbeing"
call :removeApp com.google.android.apps.docs                                                          "Drive"
call :removeApp com.google.android.apps.photosgo                                                       "Gallery Go"
call :removeApp com.google.android.gm                                                                   "Gmail"
call :removeApp com.google.android.apps.searchlite                                                       "Google Go"
call :removeApp com.google.android.gmsintegration                                                           "Lily Setup"
call :removeApp com.google.audio.hearing.visualization.accessibility.scribe                                  "Live Transcribe"
call :removeApp com.jio.messageslite                                                                           "Messages"
call :removeApp com.google.android.accessibility.soundamplifier                                                 "Sound Amplifier"
call :removeApp com.google.android.tts                                                                           "Speech Services by Google"
call :removeApp com.android.providers.userdictionary                                                              "User Dictionary"

:: GMS + Play Store removed LAST - too many other components stay
:: bound to these while active, removing them mid-list risks a
:: soft reboot. Everything else is already gone by this point.
call :removeApp com.google.android.gms                                                                    "Google Play Services"
call :removeApp com.android.vending                                                                        "Play Store"

echo ----------------------------------------------------------------
echo MINIMAL FEATURES profile complete.
goto done

:removeApp
adb shell pm uninstall -k --user 0 %~1 >nul 2>&1
if errorlevel 1 (
    echo [SKIPPED - not found/already removed] %~2  ^(%~1^)
) else (
    echo [REMOVED] %~2  ^(%~1^)
)
exit /b

:done
echo.
echo Done. Reboot the device for changes to fully apply.
echo (Restore anything via factory reset if needed.)
echo.
pause
exit /b