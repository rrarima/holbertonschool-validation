# Prerequisites:
- Golang should be installed in the environment where the application will be built and run.
- Basic understanding of Makefile and command-line interface.

## Project Life-cycle:
- `build`: compile the source code of the application to a binary named `awesome-api` using the command `go build`.
- `run`: run the application in the background by executing the binary `awesome-api` and write logs into a file named `awesome-api.log` using the command `./awesome-api >./awesome-api.log 2>&1 &`.
- `stop`: stop the application using the command `kill XXXXX` where XXXXX is the Process ID of the application.
- `clean`: stop the application and delete the binary `awesome-api` and the log file `awesome-api.log`.
- `test`: test the application to ensure that it behaves as expected.
