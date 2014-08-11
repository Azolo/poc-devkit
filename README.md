# Devkit - Proof-of-Concept

Proof of concept to show how the RubyInstaller DevKit can be used with an inside-out approach instead of the current outside-in.

## Installation

The only supported installation method will be to install from source.

## Usage

**REMEMBER: This is only a proof on concept**

From a clean RubyInstaller Install:  
The Devkit Path is going to be hard coded as `C:\Ruby\Devkit` make sure you have the proper DevKit installed there.
Also you have to delete the contents of the `operating_system.rb` file @ `<Ruby_ROOT>\lib\ruby\2.0.0\rubygems\defaults\operating_system.rb`

*This was used with the most recent RubyInstaller 2.0 23-Bit release, replace 2.0.0 with 1.9.3 if you would rather test that version.*

From there the only method to get a DevKit interacting with a Ruby installation will be to install this gem. In other words it replaces the current `dk.rb` script.

## Why?

The point is to make things easier by doing currently manual processes in a mechanical way.

The end product would hopefully be gem with customized options, like location, that will download the correct DevKit and place it in a default or user provided location.
This would also mean tracking that info in a dot-file or something similar.
