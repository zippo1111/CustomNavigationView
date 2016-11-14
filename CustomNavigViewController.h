//
//  CustomNavigViewController.h
//
//  Copyright (c) 2016 Magnolia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface CustomNavigViewController : UIViewController <UISearchControllerDelegate> {
    UISearchController *searchBar;
}

@property(nonatomic, retain) UISearchController *searchBar;

- (UIViewController *)generator:(UIViewController *)inpView title:(NSString *)titleText actionName:(NSString *) actionName;

- (UISearchController *)searchcntrl;
+ (UIBarButtonItem *) setCancelButton:(UIViewController *)iView ;

- (UIViewController *)titleGenerator:(UIViewController *)inpView;

@end
