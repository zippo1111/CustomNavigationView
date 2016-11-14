# CustomNavigationView
ios NavBar with search button and search bar

<Simple implementation file example>

add:
#import "CustomNavigationView.h"

in your # viewWillAppear;
add:

-(void)viewWillAppear:(BOOL)animated {

   [self someMethod:@"Flowers"];
   
}

-(void) someMethod:(NSString *)titleText {  

    CustomNavigViewController *navcntrl = [[CustomNavigViewController alloc] init];
    UIViewController *someview = [navcntrl generator:self title:titleText actionName:@"runSearch"];
    [self.navigationController addChildViewController:someview];  
    
}

+add (if you wish) the cancelling/searching operations: 

-(void) cancelMethod {

    self.navigationItem.titleView = nil;
    UIBarButtonItem *searchOne = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(runSearch)];
    [searchOne setTintColor:[UIColor colorWithWhite:1.0 alpha:1.0]];
    self.navigationItem.rightBarButtonItem = searchOne;
    
}

- (void)searchBarTextDidEndEditing:(UISearchBar *)aSearchBar {

    [self cancelMethod];
    [table reloadData];
    [search resignFirstResponder];
    
}

-(void) runSearch {
    
    CustomNavigViewController *cnvc = [[CustomNavigViewController alloc] init];
    UISearchController *srchCntrl = [cnvc searchcntrl];
    srchCntrl.delegate = self;
    srchCntrl.searchBar.delegate = self;
    self.navigationItem.titleView = srchCntrl.searchBar;
    [srchCntrl.searchBar becomeFirstResponder];    
    self.navigationItem.rightBarButtonItem = [CustomNavigViewController setCancelButton:self];
    
}
