//
//  DataStoreSupprt.m
//  AnswerMemo
//
//  Created by hourunjing on 2016/9/3.
//  Copyright © 2016年 com.hbzsios.answermemo. All rights reserved.
//

#import "DataStoreSupprt.h"

@implementation DataStoreSupprt

static DataStoreSupprt* _instance = nil;

+ (instancetype)dataStore {
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    _instance = [[self alloc] init] ;
  }) ;
  
  return _instance;
}

+ (void)registerDataStore {
  [AVOSCloud setApplicationId:@"NvytfEbV8H1DzpC8IRbxLCJ5-gzGzoHsz" clientKey:@"qAvIpXwciuUcOmQQQJf7v9yv"];
}

+ (void)saveQuestion:(NSString *)question answer:(NSString *)answer {
  AVObject *testObject = [DataStoreSupprt dataStore].avObject;
  [testObject setObject:answer forKey:question];
  [testObject save];
}

#pragma mark - setter & getter

- (AVObject *)avObject {
  if (!_avObject) {
    _avObject = [AVObject objectWithClassName:@"TestObject"];
  }
  return _avObject;
}

@end
