This is my first attempt to port bee from http://foura.io to arm based, so expect many bugs

Bee is an backend platform as well as REST based enterprise solution with Lua application server.



Supported platforms are Linux/x86 and FreeBSD/x86, Mac OS X.

Bee is ideal for data-enriched components of
scalable Web architecture: queue servers, caches,
stateful Web applications.

## Compilation and install

Bee is written in C and C++.
To build, you will need GCC or Apple CLang compiler.

The build depends on the following external libraries:

- libreadline and libreadline-dev
- GNU bfd (part of GNU binutils).

Please follow these steps to compile Bee:

    bee $ cmake . -DENABLE_BACKTRACE=Off
    bee $ make install

'make' creates 'bee' executable in directory src/.

There is no 'make install' goal, but no installation
is required either.

To start the server, try:

    bee $ ./src/bee

This will start Bee in interactive mode.
# bee-pi
