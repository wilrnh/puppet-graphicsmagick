# graphicsmagick

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with graphicsmagick](#setup)
    * [What graphicsmagick affects](#what-graphicsmagick-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with graphicsmagick](#beginning-with-graphicsmagick)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

Puppet module to help manage GraphicsMagick on your systems.

## Module Description

GraphicsMagick is the swiss army knife of image processing. Comprised of 265K physical lines (according to David A. Wheeler's SLOCCount) of source code in the base package (or 1,220K including 3rd party libraries) it provides a robust and efficient collection of tools and libraries which support reading, writing, and manipulating an image in over 88 major formats including important formats like DPX, GIF, JPEG, JPEG-2000, PNG, PDF, PNM, and TIFF.

This module installs and configures GraphicsMagick on your systems.

## Setup

### What graphicsmagick affects

* Packages: binaries, developments libraries and debug symbols. ImageMagick compatibility packages, and GraphicsMagick C and C++ bindings are also installed.

### Setup Requirements

This module requires that GraphicsMagick is available via package repositories. This module *does not* manage any package repositories.

### Beginning with graphicsmagick

Simply include the main class to get started with the default options:

```puppet
include '::graphicsmagick'
```

## Usage

```puppet
class {'graphicsmagick':
  package_ensure     => '1.3.18-1ubuntu3', # specify a version
  package_ensure_dev => '1.3.18-1ubuntu3', # install development libraries
  package_ensure_dbg => '1.3.18-1ubuntu3', # install debug symbols
}
```

## Reference

### Classes
#### Public Classes

`::graphicsmagick`: Installs GraphicsMagick.

#### Private Classes

`::graphicsmagick::install`: Installs GraphicsMagick packages.

### Parameters
#### graphicsmagick

`package_ensure`
Passed directly on to Puppet's `package` type `ensure` parameter. Defaults to `present`.

`package_ensure_dev`
Whether to include development libraries. eg., `libgraphicsmagick1-dev`. Passed directly on to Puppet's `package` type `ensure` parameter. Defaults to `absent`.

`package_ensure_dbg`
Whether to include debug symbols. eg., `graphicsmagick-dbg`. Passed directly on to Puppet's `package` type `ensure` parameter. Defaults to `absent`.

## Limitations

This module currently only supports Ubuntu.

## Development

Pull requests are always awesome.
