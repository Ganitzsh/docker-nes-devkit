# docker-nes-devkit

## Introduction

This docker is meant to help people willing to start developing NES homebrews
on any platform as the final binary is a `.nes` file that runs inside an
emulator. And also because I'm using macOS as my main development platform 🙃

## What's inside

The following executables are packed inside the docker image:

  - The [cc65](https://www.cc65.org/) compiler (v2.13.9)
  - The [cc65-nes](https://www.cc65.org/) compiler (v2.13.9)
  - The [nesasm3](http://www.nespowerpak.com/nesasm/) assembler

## Getting started

### Building the image

To build the image it's pretty straightforward, all you need to do is:

```
git clone git@github.com:Ganitzsh/docker-nes-devkit.git
cd docker-nes-devkit
docker build -t <cute_little_name> .
```

### How to use

Go to your source directory and use

```
docker run -v $PWD:/src -w /src <cute_little_name> nesasm3 file.asm ...
```

It's basically like it would be installed on your machine thanks to docker 🤙
