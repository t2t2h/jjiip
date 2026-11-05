#import "TWXDelayGate.h"

@implementation TWXDelayGate

+ (void)runWithDelayMilliseconds:(NSUInteger)milliseconds
                      probability:(double)dropProbability
                        completion:(dispatch_block_t)completion {
    if (!completion) return;

    double p = MIN(1.0, MAX(0.0, dropProbability));
    if (((double)arc4random_uniform(1000000) / 1000000.0) < p) {
        // Simulated packet loss: intentionally suppress this test callback.
        return;
    }

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW,
                                 (int64_t)(milliseconds * NSEC_PER_MSEC)),
                   dispatch_get_main_queue(), completion);
}

@end
