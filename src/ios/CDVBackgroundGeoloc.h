//
//  CDVBackgroundGeoloc.h
//
//  Created by BEGUE Florent on 2016-05-25
//

#import <Cordova/CDVPlugin.h>
#import <CoreLocation/CoreLocation.h>

@interface CDVBackgroundGeoloc : CDVPlugin <CLLocationManagerDelegate> {
    CLLocationManager *locationManager;
}

@property (nonatomic, strong) CLLocationManager *locationManager;

- (void) getCurrentPosition:(CDVInvokedUrlCommand *)command;

@end
