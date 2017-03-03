//
//  YahooAPITests.m
//  YahooAPITests
//
//  Created by Srinath Bose on 3/3/17.
//  Copyright © 2017 Trimble. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "RESTCallForWeather.h"

@interface YahooAPITests : XCTestCase

@property(nonatomic,strong) RESTCallForWeather *restWeather;

@end

@implementation YahooAPITests

- (void)setUp {
    [super setUp];

    _restWeather = [[RESTCallForWeather alloc]init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testCheckNetworkConnection {
    bool isNetworkEnable = [_restWeather isNetworkAvailable];
    XCTAssertEqual(true, isNetworkEnable,@"Network Is Not Available");
}

@end
