# JioPhoneNext Debloat Tool

A menu-driven Windows batch script to remove pre-installed bloatware from the **Jio Phone Next (JPN)**, a budget Android Go device running Pragati OS.

Built for power users comfortable with ADB — not a one-click consumer app.

## What it does

Two removal profiles, selectable from an in-terminal menu:

- **Raw Device** — strips Jio-branded apps, Meta/Facebook system components, and non-essential Google extras (Duo, YouTube, Maps, GPay, etc.) while keeping core phone functionality (calls, SMS, Play Store, GMS) intact.
- **Minimal Features** — everything in Raw Device, plus a deeper strip: Chrome, Gmail, Drive, Calendar, Google Play Services, Play Store, and Messages. Leaves the device close to bare AOSP. **After this profile, there is no default SMS app and no Play Store** — intentional, but know that going in.

Every removal uses:
```
adb shell pm uninstall -k --user 0 <package>
```
This removes the app from your current user profile only. It does **not** touch the system partition, so it's fully reversible with a factory reset if anything feels wrong afterward.

## Requirements

- ADB (Android Platform Tools) installed and added to your PATH
- USB debugging enabled on the device (Settings → About Phone → tap Build Number 7x → Developer Options → USB debugging)
- Device connected via USB and authorized for debugging

## How to run

1. Connect the phone, confirm the "Allow USB debugging" prompt on-device
2. Double-click `JioPhoneNext_Debloat.bat`
3. Pick `1` for Raw Device or `2` for Minimal Features
4. Let it run — each package prints `[REMOVED]` or `[SKIPPED]`
5. Reboot the device once it finishes

## What's intentionally NOT removed

Two packages are deliberately excluded from both profiles and always will be:

- `com.rjio.lockunlock` — **Device Financing**
- `com.rjio.slc` — **Subsidy Lock**

These aren't bloatware — they're the EMI/financing enforcement clients tied to the device's payment plan. This tool is for decluttering, not for bypassing financing agreements, so these stay untouched on principle regardless of profile.

## Known quirks / lessons learned

- Removing **Google Play Services** or **Play Store** mid-list can cause a system hiccup on some units — both profiles remove these *last*, after everything else, to reduce that risk.
- `com.google.android.setupwizard` (Android Setup) has been observed to trigger a soft reboot on some devices when removed. If you hit an unexpected reboot mid-run, this is the most likely cause — just re-run the script afterward, already-removed packages will simply show as `[SKIPPED]`.
- A handful of packages (e.g. `com.android.systemui`, `android`, `com.android.launcher3`) are core OS components and are never touched by either profile — removing them can break the device outright.

## Disclaimer

Use at your own risk. While `pm uninstall -k --user 0` is reversible via factory reset, always understand what a package does before removing it. Not affiliated with Reliance Jio or Google.

## License

MIT — see [LICENSE](LICENSE)
