//
//  CTRestClient.m
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import "CTRestClient.h"

static NSString *const CTRestClientURLString = @"http://www.cartrawler.com/";

@implementation CTRestClient

+ (instancetype)sharedClient {
    static CTRestClient *_sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedClient = [[CTRestClient alloc] initWithBaseURL:[NSURL URLWithString:CTRestClientURLString]];
        _sharedClient.securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
    });
    
    return _sharedClient;
}

- (void)doGET:(NSString *)endpoint params:(id)params completion:(CTRestClientCompletionBlock)completion {
    [self GET:endpoint parameters:params progress:nil
      success:^(NSURLSessionDataTask *task, NSArray *response) {
          if (completion) {
              completion(response, nil);
          }
      } failure:^(NSURLSessionDataTask *task, NSError *error) {
          if (completion) {
              completion(nil, error);
          }
      }];
}

@end
