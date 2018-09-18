//
//  CTRestClient.h
//  CarTrawler
//
//  Created by Silva Ortiz, Rafael on 18/09/2018.
//  Copyright © 2018 Rafael Silva Ortiz. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

typedef void(^CTRestClientCompletionBlock)(id response, NSError *error);

@interface CTRestClient : AFHTTPSessionManager

+ (instancetype)sharedClient;
- (void)doGET:(NSString *)endpoint params:(id)params completion:(CTRestClientCompletionBlock)completion;

@end

