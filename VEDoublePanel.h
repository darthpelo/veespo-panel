//
//  VEDoublePanel.h
//  Veespo
//
//  Created by Alessio Roberto on 07/03/14.
//  Copyright (c) 2014 Veespo Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VEDoublePanel : UIView

/**
 *    Using this method you enable an animated view where is possible to put a text. After the first vote, the view disappears.
 *
 *    @param frame    Panel dimension (see documentation).
 *    @param question The text put on the animated view.
 *
 *    @return The VEDoublePanel istance.
 */
- (id)initWithFrame:(CGRect)frame withPanelQuestion:(NSString *)question;

@end
