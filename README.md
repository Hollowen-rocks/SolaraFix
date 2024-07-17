# Cleanup and Check Script

This batch script performs a series of maintenance and security tasks on a Windows machine. It checks for administrative privileges, deletes a specified temporary directory, forcefully closes all running Roblox applications, checks the status of Windows Defender real-time protection, and runs several system health checks in the background. Upon completion, it redirects the user to a specified Discord server.

## Features

- **Admin Elevation Check**: Ensures the script is run with administrative privileges.
- **Directory Cleanup**: Deletes `C:\Users\\AppData\Local\Temp\Solara.Dir`.
- **Application Management**: Force closes all running Roblox applications.
- **Antivirus Status Check**: Verifies if Windows Defender real-time protection is enabled.
- **System Health Checks**: Runs `DISM`, `CHKDSK`, and `SFC` commands in the background.
- **Redirect**: Opens a Discord invite link upon completion.

## Prerequisites

- **Windows OS**: This script is designed for use on Windows operating systems.
- **Administrative Privileges**: The script requires administrative privileges to execute certain commands.

## Usage

1. **Download the Script**: Save the batch script as `cleanup_and_check.bat`.
2. **Run the Script**:
   - Right-click the `cleanup_and_check.bat` file.
   - Select "Run as administrator".
3. **Observe Output**:
   - The script will perform the tasks and display relevant messages in the command prompt.
   - Upon completion, your default web browser will open the specified Discord URL.

## Script Breakdown

- **Admin Check**: Prompts for elevation if not already running as an administrator.
- **Directory Deletion**: Removes the `Solara.Dir` directory from the temporary files.
- **Roblox Application Closure**: Ensures all Roblox-related processes are terminated.
- **Antivirus Check**: Confirms the status of Windows Defender real-time protection.
- **Background Health Checks**: Executes system health commands silently in the background.
- **Redirect**: Opens a Discord invite link (`https://discord.gg/realsolara`).

## Notes

- **Running Time**: Some commands, especially `CHKDSK` and `SFC`, may take several minutes to complete.
- **Background Execution**: The system health checks (`DISM`, `CHKDSK`, `SFC`) are executed in the background to allow the script to complete other tasks without waiting.

## Disclaimer

Use this script at your own risk. Ensure you understand the commands being executed and their potential impact on your system. This script is provided "as-is" without any warranties or guarantees.

---

For any issues or questions, please join our [Discord server](https://discord.gg/realsolara).
