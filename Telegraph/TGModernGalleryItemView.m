/*
 * This is the source code of Telegram for iOS v. 1.1
 * It is licensed under GNU GPL v. 2 or later.
 * You should have received a copy of the license in this archive (see LICENSE).
 *
 * Copyright Peter Iakovlev, 2013.
 */

#import "TGModernGalleryItemView.h"

#import "TGModernGalleryDefaultFooterView.h"

@implementation TGModernGalleryItemView

- (void)prepareForRecycle
{
}

- (void)prepareForReuse
{
}

- (UIView *)headerView
{
    return nil;
}

- (UIView *)footerView
{
    return nil;
}

- (UIView *)transitionView
{
    return nil;
}

- (bool)dismissControllerNowOrSchedule
{
    return true;
}

- (void)setItem:(id<TGModernGalleryItem>)item
{
    [self setItem:item synchronously:false];
}

- (void)setItem:(id<TGModernGalleryItem>)item synchronously:(bool)__unused synchronously
{
    _item = item;
    [self.defaultFooterView setItem:_item];
}

@end