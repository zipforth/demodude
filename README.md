Thanks for checking out my pet project! It's very much a work in progress, but it's functional for two players sharing a keyboard.
# About
This is my take on an arcade game called bomberman, or rather my take on the flash game copycat of bomberman that I had played too much of in middle school. Demodude is a portmanteau of demolition dude, and I attempted to design the characters to look like they're wearing those huge bomb squad suits.

The current implementation is designed to be built as a docker image, however it can be run standalone on linux or WSL. See below for an explainer of each run type.

The game is playable between 2 players, one using WASD to move and left shift to place bombs, and the other using arrow keys and the space bar. Other multiplayer functions, or singleplayer against bots, is unimplemented.

## Run standalone
- Open your favorite flavor of linux, as long as it has python3 (WSL should work as well)
- Clone this repo and step into the demodude directory (where all the html files are)
- run the standalone shell script via `sh startlocal`
- Open a browser and go to localhost:9999 to play.

## Run via docker container
In the following commands, replace \<available-port\> with whatever available port on the local machine is preferred. 9999 is probably open on most machines.
- Clone the repo
- Any image builder should work, but for the sake of example, docker will be used.
- From the directory where the Dockerfile is, run `docker build -t demodude:v0.1.0 .`
- Run `docker run -p <available-port>:9999 demodude:v0.1.0`
- Open a browser and go to localhost:\<available-port\> to play.

