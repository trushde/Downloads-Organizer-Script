# Downloads-Organizer-Script
Description: Wrote a shell script using grep, awk, and sed to automatically sort files in the Downloads folder (macOS) by file extension (e.g., PDF, JPG). Implemented filename cleanup, logging, and automation using macOS Automator Folder Actions, enabling the script to run automatically whenever new files are downloaded.

## Features:
- Automatically sorts files in Downloads by file extension (e.g., PDF, JPG)
- Filters files using `grep`
- Cleans filenames with `sed` (e.g., replaces spaces)
- Logs all file moves using `awk`
- Auto-runs using macOS Automator Folder Actions

## How to Use: 

1. Clone the repository:
   ```bash
   git clone https://github.com/trushde/Downloads-Organizer-Script.git
   cd Downloads-Organizer-Script

2. Open Terminal and Run: 
- chmod +x organize_downloads.sh (To make it executable)
- ./organize_downloads.sh (Run it Manually)

3. Automate it using Automator.

Author - Tajrian Rushat 

