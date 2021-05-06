/**
 * TiUXCam
 *
 * Created by Your Name
 * Copyright (c) 2021 Your Company. All rights reserved.
 */

#import "ComBduyngTiUXCamModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"
#import <UXCam/UXCam.h>

@implementation ComBduyngTiUXCamModule

#pragma mark Internal

// This is generated for your module, please do not change it
- (id)moduleGUID
{
  return @"d8041909-c2ba-4ec2-b923-dbbe598c26dd";
}

// This is generated for your module, please do not change it
- (NSString *)moduleId
{
  return @"com.bduyng.TiUXCam";
}

#pragma mark Lifecycle

- (void)startup
{
  // This method is called when the module is first loaded
  // You *must* call the superclass
  [super startup];
  DebugLog(@"[DEBUG] %@ loaded", self);
}

#pragma Public APIs

- (void)startWithKey:(id)arg
{
  ENSURE_SINGLE_ARG(arg, NSString)
  [UXCam optIntoSchematicRecordings];
  [UXCam startWithKey:arg];
}

- (NSString *)example:(id)args
{
  // Example method. 
  // Call with "MyModule.example(args)"
  return @"hello world";
}

- (NSString *)exampleProp
{
  // Example property getter. 
  // Call with "MyModule.exampleProp" or "MyModule.getExampleProp()"
  return @"Titanium rocks!";
}

- (void)setExampleProp:(id)value
{
  // Example property setter. 
  // Call with "MyModule.exampleProp = 'newValue'" or "MyModule.setExampleProp('newValue')"
}

@end
