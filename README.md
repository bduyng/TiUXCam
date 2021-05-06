<h1 align="center">TiUXCAM</h1>

<div align="center">
	<strong>Titanium native module for UXCam</strong>
</div>
<div align="center">
  <sub>
  	for Appcelerator Titanium Framework <br />
  	<img src="https://jira.appcelerator.org/secure/attachment/62974/Axwaylog%20icon.png" height="20px">
  </sub>
</div>
<br />

<div align="center">
  <a href="https://img.shields.io/badge/platform-ios-blue.svg">
  	<img src="https://img.shields.io/badge/platform-ios-blue.svg?style=flat-square">
  </a>
  <a href="https://opensource.org/licenses/Apache-2.0">
  	<img src="https://img.shields.io/badge/license-apache_2-lightgrey.svg?style=flat-square">
  </a>
</div>

<div align="center">
  <h3>
    <a href="#installation">Installation</a>
    <span> | </span>
    <a href="#api">API</a>
    <span> | </span>
    <a href="#usage">Usage</a>
  </h3>
</div>

## Installation

To use your module locally inside an app you can copy the zip file into the app root folder and compile your app.
The file will automatically be extracted and copied into the correct `modules/` folder.

If you want to use your module globally in all your apps you have to do the following:

### macOS

Copy the distribution zip file into the `~/Library/Application Support/Titanium` folder

### Linux

Copy the distribution zip file into the `~/.titanium` folder

### Windows

Copy the distribution zip file into the `C:\ProgramData\Titanium` folder

## Project Usage

Register your module with your application by editing `tiapp.xml` and adding your module.
Example:

<modules>
  <module version="1.0.0">com.bduyng.TiUXCam</module>
</modules>

When you run your project, the compiler will combine your module along with its dependencies
and assets into the application.

## Building

Simply run `ti build -p [ios|android] --build-only` which will compile and package your module.

## Usage

The `example` directory contains a skeleton application test harness that can be
used for testing and providing an example of usage to the users of your module.

To use your module in code, you will need to require it.

### ES6+ (recommended)

```js
import TiUXCam from 'com.bduyng.TiUXCam';
TiUXCam.startWithKey('YOUR_UXCAM_KEY');
```

### ES5

```js
var TiUXCam = require('com.bduyng.TiUXCam');
TiUXCam.startWithKey('YOUR_UXCAM_KEY');
```

## Testing

To test your module with the example, use:

```js
ti build -p [ios|android]
```

This will execute the app.js in the example/ folder as a Titanium application.

## Distribution

You have a variety of choises for distributing your module

- [Gitt.io](http://gitt.io/)
- [Axway Marketplace](https://marketplace.axway.com/home)

Code strong!

```
ti build -p ios --build-only --project-dir ./ios && cp '/Users/bduyng/Developer/TitaniumHome/TiUXCam/ios/dist/com.bduyng.TiUXCam-iphone-1.0.0.zip' '/Users/bduyng/Developer/TitaniumHome/TiUXCam/testing/com.bduyng.TiUXCam-iphone-1.0.0.zip' && rm -rf ./testing/modules && rm -rf ./testing/build && ti build -p ios --project-dir ./testing -C 04C8286F-8010-4383-BB1D-E3AABBD4C103
```
