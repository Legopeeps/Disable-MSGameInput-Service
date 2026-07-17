# Tool to Disable The GameInput Service(s)
To be ideally used with Windows Task Scheduler, however the script can be run by itself 

## Description
I made this because there is a bug that occurs when using an Xbox Controller on Windows 10 & 11. The API that Windows makes use of now is "GameInput", which for some users slowly tanks performance whilst the service is in use, i.e. when using an Xbox controller. 
There are some small fixes, for example reconnecting the controller reportedly fixes the issue (although temporarily), as well as faffing about with disabling the service per user session.
This script, using a batch file's command-line prompts, will disable both the GameInput and GameInput Redist. services when run, or more optimally, based on the frequency you decide in Task Scheduler.

## How To Use (with Task Scheduler)
  - Download "DisableGameInput.bat" and make note of it's location
  - Open Task Scheduler (Press "WinKey" then type Task Scheduler)
  - Press "Create Basic Task..." from the Action dropdown 
  - Name & Describe as something you'd remember. I named mine "AutoDisable MS GameInput Services"
  - For Task Trigger, set ideally "When I log on" or "When the computer starts"
  - Select "Start a program" for action, then enter the location of the batch file specifically, i.e."X:\Disable-MSGameInput-Service\DisableGameInput.bat"
  - Follow the wizard through to the end
  - restart user session to see results (check event viewer upon activating script to see the magic)

### Notes
A worse alternative would be deleting the files for it, however with each Windows update it will continuously reinstall itself, so disabling it is the best outcome.  
