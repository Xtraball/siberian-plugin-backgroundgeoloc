//
//  CDVBackgroundGeoloc.m
//
//  Created by BEGUE Florent on 2016-05-25
//

#import "CDVBackgroundGeoloc.h"

@implementation CDVBackgroundGeoloc
@synthesize locationManager;

- (void) initialize {
    locationManager = [[CLLocationManager alloc] init];
    locationManager.delegate = self;
    if ([locationManager respondsToSelector:@selector(requestAlwaysAuthorization)]) {
        [locationManager requestAlwaysAuthorization];
    }
    locationManager.distanceFilter = kCLDistanceFilterNone;
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
}

- (void) getCurrentPosition:(CDVInvokedUrlCommand*)command {
    [locationManager startUpdatingLocation];
}

/*- (void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status {

    if (status == kCLAuthorizationStatusAuthorized ||
      status == kCLAuthorizationStatusAuthorizedWhenInUse ||
      status == kCLAuthorizationStatusAuthorizedAlways) {
        [self.locationManager startUpdatingLocation];
    } else if (status == kCLAuthorizationStatusDenied || status == kCLAuthorizationStatusRestricted) {
        //[webView stringByEvaluatingJavaScriptFromString:@"setCoordinates('error')"];
    }
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)location {
    CLLocation *currentLocation = [location objectAtIndex:0];
    [locationManager stopUpdatingLocation];
    NSLog(@"position: %@", currentLocation);
    //NSString *coordinates = [[NSString alloc] initWithFormat:@"setCoordinates('success', %f, %f)", currentLocation.coordinate.latitude, currentLocation.coordinate.longitude];
    // return the fucking coordinates to ionic
}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
    [locationManager stopUpdatingLocation];
    NSLog(@"position: %@", newLocation);
    //NSString *coordinates = [[NSString alloc] initWithFormat:@"setCoordinates('success', %f, %f)", newLocation.coordinate.latitude, newLocation.coordinate.longitude];
    // return the fucking coordinates to ionic
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    // callback error to ionic
    NSLog(@"Can't access user's position");
}

@end