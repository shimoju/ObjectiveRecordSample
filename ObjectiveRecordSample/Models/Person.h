//
//  Person.h
//  ObjectiveRecordSample
//
//  Created by Hiroshi Shimoju on 2013/12/12.
//  Copyright (c) 2013年 shimoju. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Person : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * age;

@end
