Running tests
=============

This file documents how to run the unit tests for different backends.

Controls
--------

First make sure you have make and qmltestrunner installed.

Then just run:

::

   make test


Silica
------

At the moment we expect the unit tests to be run on a Sailfish OS
device. First become root ad install the needed dependencies:

::

   pkcon install make qt5-qtdeclarative-qtquicktest qt5-qtdeclarative-import-qttest qt5-qtdeclarative-devel-tools

Then run the tests via the makefile & pointing to the silica backend:

::

   make test BACKEND=silica
