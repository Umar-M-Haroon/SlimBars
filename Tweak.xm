#import <UIKit/UIKit.h>


%hook UINavigationBar
	-(void)setIsCondensed:(BOOL)isCondensed
		{
			%orig(TRUE);
		}
	-(CGSize)defaultSizeForOrientation:(long long)arg1
		{
			CGSize size;
			size.width = %orig.width;
			size.height = 32.0f;
			return size;
		}
	- (void)setFrame:(CGRect)arg1 
		{
	    	%orig(CGRectMake(arg1.origin.x, arg1.origin.y, arg1.size.width, 32.0f));
	    }		

	%end
// %hook UIToolBar

// 	-(CGSize)defaultSizeForOrientation:(long long)arg1
// 		{
// 			CGSize size;
// 			size.width = %orig.width;
// 			size.height = 32.0f;
// 			return size;
// 		}
// 	- (void)setFrame:(CGRect)arg1 
// 		{
// 	    	%orig(CGRectMake(arg1.origin.x, arg1.origin.y, arg1.size.width, 20.0));
// 	    }
// %end
