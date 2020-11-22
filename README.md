# Amnesia: The Dark Descent Source Code

Build status, Ubuntu 20.04 x64 | [![Build Status](https://travis-ci.org/Kristian-Popov/AmnesiaTheDarkDescent.svg?branch=improvements-v2)](https://travis-ci.org/Kristian-Popov/AmnesiaTheDarkDescent)
----------------- | ---------------

This fork aims to improve code for Linux version, get rid of precompiled libraries, fix errors along the way and give way for future expansion.

Main focus is Linux, so versions for other platforms may be broken (for improved code for other platforms I suggest to visit other forks). Primary testing environment is **Ubuntu 20.04 x64**.

For solution for Arch, I suggest to check [this pull request](https://github.com/FrictionalGames/AmnesiaTheDarkDescent/pull/2) and video by Mudbill [here](https://youtu.be/sW9aDVUPCUM).

Build and run instructions can be found [here](BUILD.md).

Enjoy your game!
-------------------
Differences from original code:
 - fbx sdk was disabled because of licensing restrictions, but also it is not used by Amnesia: The Dark Descent (all models are in collada format).
 Huge thanks to Bryan Steele for [this great commit](https://github.com/brynet/Amnesia64/commit/4579f129622cf5607ba39e1fb99ff0cab440870c)
 - hopefully precompiled libraries will be removed and libraries will be either compiled from code during build or system ones will be used, so dependencies archive will not be necessary

Note that game is the primary focus, so launcher and editors may not work as expected (at the moment of writing this, they can be compiled but crash at start, but main game works as expected and can be played at least for a couple starting locations).

Contributing Code
-----------------
We encourage everyone to contribute code to this project, so just sign up for a github account, create a fork and hack away at the codebase.

License Information
-------------------
All code is under the GPL Version 3 license. Read the LICENSE file for terms of use of the license.
