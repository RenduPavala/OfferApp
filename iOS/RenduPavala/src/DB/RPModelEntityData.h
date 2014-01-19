//
//  RPModelEntityData.h
//  RenduPavala
//
//  Created by Prasad Adireddi on 07/01/14.
//  Copyright (c) 2014 FreeLancer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface RPModelEntityData : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * offertype;
@property (nonatomic, retain) NSNumber * offervalue;
@property (nonatomic, retain) NSString * info;
@property (nonatomic, retain) NSString * bankinfo;
@property (nonatomic, retain) NSString * offerurl;
@property (nonatomic, retain) NSString * smallimageurl;
@property (nonatomic, retain) NSString * largeimageurl;
@property (nonatomic, retain) NSNumber * ratings;
@property (nonatomic, retain) NSNumber * followers;
@property (nonatomic, retain) NSString * header;
@property (nonatomic, retain) NSString * footer;

@end
