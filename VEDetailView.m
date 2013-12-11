#import "VEDetailView.h"

@implementation VEDetailView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.annotatedGauge = [[MSAnnotatedGauge alloc] initWithFrame:CGRectMake(0, 0, 300, 76)];
        self.annotatedGauge.minValue = 0;
        self.annotatedGauge.maxValue = 10;
        self.annotatedGauge.startRangeLabel.text = @"Votes";
        self.annotatedGauge.endRangeLabel.text = @"Average";
        self.annotatedGauge.fillArcFillColor = [UIColor clearColor];
        self.annotatedGauge.fillArcStrokeColor = [UIColor clearColor];
        [self addSubview:self.annotatedGauge];
    }
    return self;
}

- (void)updatePannel:(NSNumber *)average totalVotes:(NSInteger)votes totalTags:(NSInteger)tags
{
    [self.annotatedGauge setValue:[average floatValue] + 5 animated:YES];
    self.annotatedGauge.startRangeLabel.text = [NSString stringWithFormat:@"Votes %d/%d", votes, tags];
    
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    [formatter setRoundingMode:NSNumberFormatterDecimalStyle];
    [formatter setMaximumFractionDigits:1];
    [formatter setMinimumIntegerDigits:1];
    if (votes > 0) {
        self.annotatedGauge.endRangeLabel.text = [NSString stringWithFormat:@"Average %@", [formatter stringFromNumber:average]];
    } else
        self.annotatedGauge.endRangeLabel.text = @"Average n.a.";
}

@end
