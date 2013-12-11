#import <UIKit/UIKit.h>
#import "MSAnnotatedGauge.h"

@interface VEDetailView : UIView {
    UILabel *visual;
}

@property (nonatomic) MSAnnotatedGauge *annotatedGauge;

- (void)updatePannel:(NSNumber *)average totalVotes:(NSInteger)votes totalTags:(NSInteger)tags;

@end
