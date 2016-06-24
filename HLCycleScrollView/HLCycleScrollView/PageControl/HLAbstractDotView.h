//
//  HLAbstractDotView.h
//  HLPageControl
//
//  Created by lhl on 2014-12-22.
//  Copyright (c) 2014 LHL. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface HLAbstractDotView : UIView


/**
 *  A method call let view know which state appearance it should take. Active meaning it's current page. Inactive not the current page.
 *
 *  @param active BOOL to tell if view is active or not
 */
- (void)changeActivityState:(BOOL)active;


@end

