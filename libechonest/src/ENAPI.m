//
//  ENAPI.m
//  libechonest
//
//  Created by Art Gillespie on 3/15/11. art@tapsquare.com
//

#import "ENAPI.h"

NSString * const ENLicenseEchoSource = @"echo-source";
NSString * const ENLicenseAllRightsReserved = @"all-rights-reserved";
NSString * const ENLicenseCreativeCommonsBy_SA = @"cc-by-sa";
NSString * const ENLicenseCreativeCommonsBy_NC = @"cc-by-nc";
NSString * const ENLicenseCreativeCommonsBy_NC_ND = @"cc-by-nc-nd";
NSString * const ENLicenseCreativeCommonsBy_NC_SA = @"cc-by-nc-sa";
NSString * const ENLicenseCreativeCommonsBy_ND = @"cc-by-nd";
NSString * const ENLicenseCreativeCommonsBy = @"cc-by";
NSString * const ENLicensePublicDomain = @"public-domain";
NSString * const ENLicenseUnknown = @"unknown";

NSString * const ENSortFamiliarityAscending = @"familiarity-asc";
NSString * const ENSortFamiliarityDescending = @"familiarity-desc";
NSString * const ENSortHotttnesssAscending = @"hotttnesss-asc";
NSString * const ENSortHotttnesssDescending = @"hotttnesss-desc";
NSString * const ENSortWeight = @"weight";
NSString * const ENSortFrequency = @"frequency";

static NSString *EN_API_KEY = nil;
static NSString *EN_CONSUMER_KEY = nil;
static NSString *EN_SHARED_SECRET = nil;

@implementation ENAPI

+ (void)initWithApiKey:(NSString *)apiKey {
    EN_API_KEY = [apiKey retain];
}

+ (void)initWithApiKey:(NSString *)apiKey ConsumerKey:(NSString *)consumerKey
       AndSharedSecret:(NSString *)secret {
    [ENAPI initWithApiKey:apiKey];
    [ENAPI setConsumerKey:consumerKey];
    [ENAPI setSharedSecret:secret];
}

+ (NSString *)apiKey {
    return EN_API_KEY;
}

+ (NSString *)consumerKey {
    return EN_CONSUMER_KEY;
}

+ (void)setConsumerKey:(NSString *)key {
    EN_CONSUMER_KEY = [key retain];
}

+ (NSString *)sharedSecret {
    return EN_SHARED_SECRET;
}

+ (void)setSharedSecret:(NSString *)secret {
    EN_SHARED_SECRET = [secret retain];
}

@end
