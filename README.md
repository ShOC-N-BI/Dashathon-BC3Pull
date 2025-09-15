# Starting the container
## Requirements
- Docker up & running
- VSCode
## Startup
1. Open VSCode Powershell Terminal
2. ```bash
   docker build -t bc32db
   docker run bc32db

## Takedown
1. Ctrl + C to stop container
2. Ensure container & image are deleted on docker*

*Logs from running tend to take up disk space and are generally useless, deleting the build after clears it. Smarter programmers than I can fix this issue
