#import "CustomNavigViewController.h"

@implementation CustomNavigViewController

@synthesize searchBar = _searchBar;

- (id)init {
    if (self = [super init]) {
        
    }
    return self;
}

- (NSDictionary *)setStartingNavBarAttributes {
    NSDictionary *textAttributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                    [UIColor whiteColor],NSForegroundColorAttributeName,
                                    [UIFont fontWithName:@"SF-UI-Text-Light" size:21.0],NSFontAttributeName,nil];
    return textAttributes;
}

- (UIViewController *)generator:(UIViewController *)inpView title:(NSString *)titleText actionName:(NSString *) actionName {
    inpView.navigationController.navigationBar.barStyle = UIBarStyleBlackOpaque;
    inpView.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.21 green:0.36 blue:0.65 alpha:1.0];
    //Параметры шрифта: размер, цвет
    //inpView.navigationController.navigationBar.titleTextAttributes = [self setStartingNavBarAttributes];
    UIBarButtonItem *searchBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:inpView action:NSSelectorFromString(@"runSearch")];
    [searchBtn setTintColor:[UIColor whiteColor]];
    //
    inpView.navigationItem.rightBarButtonItem = searchBtn;
    inpView.navigationItem.title = titleText;
    return inpView;
}

- (UIViewController *)titleGenerator:(UIViewController *)inpView titleText:(NSString *)titleText {
    inpView.navigationController.navigationBar.titleTextAttributes = [self setStartingNavBarAttributes];
    [inpView.navigationItem.leftBarButtonItem setTintColor:[UIColor whiteColor]];
    inpView.navigationItem.title = titleText;
    return inpView;
}

+ (UIBarButtonItem *) setCancelButton:(UIViewController *)iView {
    UIBarButtonItem *cancelOne = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemStop target:iView action:NSSelectorFromString(@"cancelMethod")];
    [cancelOne setTintColor:[UIColor colorWithWhite:1.0 alpha:1.0]];
    return cancelOne;
}

- (UISearchController *)searchcntrl {
    if (_searchBar == nil) {
        UISearchController *searchcontroller = [[UISearchController alloc] initWithSearchResultsController:nil];
        [searchcontroller.searchBar setValue:@"" forKey:@"_cancelButtonText"];
        searchcontroller.hidesNavigationBarDuringPresentation = false;
        searchcontroller.dimsBackgroundDuringPresentation = true;
        _searchBar = searchcontroller;
    }
    
    return _searchBar;
    
}

@end
