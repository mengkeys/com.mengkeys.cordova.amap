/********* ToolkitAMap.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

// 引入高德基础库
#import <AMapFoundationKit/AMapFoundationKit.h>
// 引入高德定位库
#import <AMapLocationKit/AMapLocationKit.h>

@interface ToolkitAMap : CDVPlugin {
  // Member variables go here.
}

- (void)getCurrentLocation:(CDVInvokedUrlCommand*)command;
@end

@implementation ToolkitAMap

- (void)getCurrentLocation:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* echo = [command.arguments objectAtIndex:0];

    if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
