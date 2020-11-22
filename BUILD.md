# Build instructions

For compilation instructions, I suggest to check script for continuous integration script (TODO link). This is how to read it:
- required packages can be found at addons/apt/packages
- additionally you will need: g++ cmake git

At this point only Ubuntu 20.04 and 64-bit version and system default versions of tools have been verified. Versions of tools:
- cmake 3.16.3
- g++ 9.3.0.

First clone the engine. Note that unlike original code and other forks OALWrapper is added as a submodule, so it has to be initialized:
```
git clone https://github.com/Kristian-Popov/AmnesiaTheDarkDescent
cd AmnesiaTheDarkDescent
git submodule update --init --recursive
```
Now dependencies archive has to be unpacked. Note that if you unpack also both 64-bit and 32-bit libraries, build will break later, so unpack only folder *lib64*. commands for that can be found in Travis file in *install* section.

After doing this compile the whole thing using commands from *script* section.

If your build succeeded, you will have a bunch of executables in current *build* folder. Copy game resources from the bought game copy. In case of GOG version, data we need are in *game* subfolder, copy all folders and all **.cfg* files to *build folder* (*Amnesia.bin.x86_64* and **.cfg* files should be in the same folder).

Main game executable doesn't know path to libraries in dependencies folder, but it's easy to suggest the correct path:

```
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/krystian/code/AmnesiaTheDarkDescent/HPL2/dependencies/lib/linux/lib64 ./Amnesia.bin.x86_64
```
