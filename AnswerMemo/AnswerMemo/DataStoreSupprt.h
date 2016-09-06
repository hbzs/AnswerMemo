//
//  DataStoreSupprt.h
//  AnswerMemo
//
//  Created by hourunjing on 2016/9/3.
//  Copyright © 2016年 com.hbzsios.answermemo. All rights reserved.
//

#import <AVOSCloud/AVOSCloud.h>

@interface DataStoreSupprt : NSObject

@property (nonatomic, strong) AVObject *avObject;

+ (void)registerDataStore;
+ (void)saveQuestion:(NSString *)question answer:(NSString *)answer;

@end
