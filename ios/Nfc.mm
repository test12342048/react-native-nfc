#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(Nfc, NSObject)

RCT_EXTERN_METHOD(multiply:(int)a
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)
RCT_EXTERN_METHOD(add:(int)a
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)
RCT_EXTERN_METHOD(connectNfc)

+ (BOOL)requiresMainQueueSetup
{
  return NO;
}

@end
