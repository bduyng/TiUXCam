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
    <a href="#usage">Usage</a>
    <span> | </span>
    <a href="#api">API</a>
    <span> | </span>
    <a href="#distribution">Distribution</a>
  </h3>
</div>

## Usage

Unpack the module [here](https://github.com/bduyng/TiUXCam/blob/main/ios/dist/com.bduyng.TiUXCam-iphone-1.0.0.zip) and place it inside the modules/iphone folder of your project.

Register your module with your application by editing `tiapp.xml` and adding your module.
Example:

<modules>
  <module version="1.0.0">com.bduyng.TiUXCam</module>
</modules>

When you run your project, the compiler will combine your module along with its dependencies
and assets into the application.

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

## API

#### Methods

| Name         | Parameter | Return |
| ------------ | --------- | ------ |
| startWithKey | String    | Void   |

## Building

Simply run `ti build -p [ios|android] --build-only` which will compile and package your module.

## Testing

To test your module with the example, use:

```js
ti build -p [ios|android]
```

This will execute the app.js in the example/ folder as a Titanium application.

## Distribution

If you enjoy this module, feel free to contribute with your PR or [donate](https://paypal.me/bduyng) :-)
