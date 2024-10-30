<div align="center">
  <img src="file:///C:/Users/Nahh/Downloads/DALL·E%202024-10-30%2012.40.48%20-%20A%20high-resolution%20image%20with%20the%20text%20'Takka'%20in%20a%20simple,%20normal%20font%20style%20and%20a%20white%20color.%20The%20background%20is%20a%20clean,%20minimalistic%20black%20and%20whit.webp" height="250" />

[![Total](https://shields.io/github/downloads/rhunk/SnapEnhance/total?logo=Bookmeter&label=Downloads&logoColor=Green&color=Green)]([https://github.com/rhunk/snapenhance/releases](https://github.com/Nahh2/Takka/releases)) 

# Takka
This project provides a command-line batch script `Run.bat` that offers a range of Windows system utilities, including Windows debloating, KMS activation, and additional PowerShell utilities. The menu-driven interface is designed to help users perform these tasks from a single, centralized script..<br/><br/>
</div>

## Quick Start
Requirements:
- Windows OS - Designed for Windows 10/11.
- PowerShell - Required for running certain commands within the script.
- 7-Zip - Necessary for the WinRAR Password Cracker functionality (located at C:\Program Files\7-Zip).




## Download
To download the latest stable release, please visit the [Releases](https://github.com/rhunk/SnapEnhance/releases) page.<br/>
You can also download the latest debug build from the [Actions](https://github.com/rhunk/SnapEnhance/actions) section.<br/>
We no longer offer official `LSPatch` binaries for obvious reasons. However, you're welcome to patch them yourself, as they should theoretically work without any issues.

> [!TIP]  
> Snapchat has locked many user accounts that used SnapEnhance or its related forks due to new detections. It's recommended to use Snapchat [v12.81.0.44](https://www.apkmirror.com/apk/snap-inc/snapchat/snapchat-12-81-0-44-release/) or earlier. Only use signed builds or builds you've modified yourself to avoid compromising the security of your account.

## Main Features
<details closed>
  <summary>Media Downloader</summary>
   
1. Debloat Windows 11/10 - Removes unnecessary apps and services from Windows 10/11 to optimize system performance.
2. KMS Activation - Activates Microsoft products using KMS (Key Management Service).
3. SMB Bruteforce Attack - Tests a list of potential passwords to gain access to SMB shares on a network.
4. WinRAR Password Cracker - Attempts to crack the password of a protected WinRAR archive using a dictionary attack.
5. MAS Script - Runs the Microsoft Activation Script to manage activation.
6. Chris Titus PowerShell Utilities - Launches Chris Titus Tech PowerShell utilities for Windows optimization and customization.

## FAQ
<details>
  <summary>How to report a bug?</summary>

  - Check that the bug has not already been reported in [Issues](https://github.com/rhunk/SnapEnhance/issues?q=).
  - Make sure the bug is not occurring when you use Snapchat without SnapEnhance.
  - Make sure you have logs before reporting (go to the SnapEnhance application -> click on the debug icon at the top right and then on the 3 vertical dots -> export logs).
</details>

<details>
  <summary>My Snapchat keeps crashing/doesn't want to open after installing</summary>

  - In some cases, because of Android's signature verification, you **must install Snapchat before SnapEnhance**, so that the two can communicate with each other.
  - You may use [LSPatch](https://github.com/LSPosed/LSPatch/forks) or [LSPosed](https://github.com/LSPosed/LSPosed/forks) forks to ensure compatibility with new Android versions, as original projects are no longer updated.
</details>

<details>
  <summary>AI wallpapers and the Snapchat+ badge aren't working!</summary>

  - Yeah, they're server-sided and will probably never work.
</details>

<details>
  <summary>Can you add this feature, please?</summary>
  
  - Open an issue on our Github repo.
</details>

<details>
  <summary>Can I PM the developers?</summary>
  
  - No.
</details>

<details>
  <summary>My phone isn't rooted; how do I use this?</summary>
  
  - You can use `LSPatch` in combination with `SnapEnhance` to run this on an unrooted device, however this is unrecommended and not considered safe.
</details>

<details>
  <summary>Can I use HideMyApplist with this?</summary>
  
  - No, this will cause some severe issues, and the mod will not be able to inject.
</details>

<details>
  <summary>How can I translate SnapEnhance into my language?</summary>
  
  - We have a [Weblate](https://hosted.weblate.org/projects/snapenhance/app/) hosted repo, feel free to submit your translations there.
</details>

## Privacy
We do not collect any user information. However, please be aware that third-party libraries may collect data as described in their respective privacy policies.
<details>
  <summary>Permissions</summary>
  
  - [android.permission.INTERNET](https://developer.android.com/reference/android/Manifest.permission#INTERNET)
  - [android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS](https://developer.android.com/reference/android/Manifest.permission.html#REQUEST_IGNORE_BATTERY_OPTIMIZATIONS)
  - [android.permission.POST_NOTIFICATIONS](https://developer.android.com/reference/android/Manifest.permission.html#POST_NOTIFICATIONS)
  - [android.permission.SYSTEM_ALERT_WINDOW](https://developer.android.com/reference/android/Manifest.permission#SYSTEM_ALERT_WINDOW)
  - [android.permission.USE_BIOMETRIC](https://developer.android.com/reference/android/Manifest.permission#USE_BIOMETRIC)
</details>

<details>
  <summary>Third-party libraries used</summary>
  
  - [libxposed](https://github.com/libxposed/api)
  - [ffmpeg-kit-full-gpl](https://github.com/arthenica/ffmpeg-kit)
  - [osmdroid](https://github.com/osmdroid/osmdroid)
  - [coil](https://github.com/coil-kt/coil)
  - [Dobby](https://github.com/jmpews/Dobby)
  - [rhino](https://github.com/mozilla/rhino)
  - [rhino-android](https://github.com/F43nd1r/rhino-android)
  - [libsu](https://github.com/topjohnwu/libsu)
  - [colorpicker-compose](https://github.com/skydoves/colorpicker-compose)
</details>

## Contributors
Thanks to everyone involved including the [third-party libraries](https://github.com/rhunk/SnapEnhance?tab=readme-ov-file#privacy) used!
- [rathmerdominik](https://github.com/rathmerdominik)
- [Flole998](https://github.com/Flole998)
- [authorisation](https://github.com/authorisation/)
- [RevealedSoulEven](https://github.com/revealedsouleven)
- [iBasim](https://github.com/ibasim)
- [xerta555](https://github.com/xerta555)
- [VendorAttestation](https://github.com/VendorAttestation)
- [CanerKaraca23](https://github.com/CanerKaraca23)
- [bocajthomas](https://github.com/bocajthomas)
- [w451](https://github.com/w451)
- [sn-o-w](https://github.com/sn-o-w)

## Donate
**@rhunk**
- LTC: LbBnT9GxgnFhwy891EdDKqGmpn7XtduBdE
- BCH: qpu57a05kqljjadvpgjc6t894apprvth9slvlj4vpj
- BTC: bc1qaqnfn6mauzhmx0e6kkenh2wh4r6js0vh5vel92
- ETH: 0x0760987491e9de53A73fd87F092Bd432a227Ee92
- XMR: 49W4Xp7QKdUdVw4otEctWZDC8gnW9nnhoiqMJzY6sKuZBD9xrh9BG4sjdE3r1Jt78j27R6x7522YUA9JVvh892CAJLeKaMu

**@authorisation**
- XMR: 82kPkAgG2zxQYnSdoFSWzvbSEtEP63NBDh9hgLqp6LgBhPNhZ4dDGv8gVFUEuUhDoi1U14ZgE71teJXo2eBe8iERRRmhcUW
