#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// Test-only helper for code in an app you own.
/// It delays a completion callback locally; it does not alter system networking.
@interface TWXDelayGate : NSObject
+ (void)runWithDelayMilliseconds:(NSUInteger)milliseconds
                      probability:(double)dropProbability
                        completion:(dispatch_block_t)completion;
@end

NS_ASSUME_NONNULL_END
