//
//  StreamScreen.h
//  iReporter
//
//
//

#import <UIKit/UIKit.h>


@interface StreamScreen : UIViewController
{
   
}

@property (strong, nonatomic) IBOutlet UIButton *buttonLoginLogout;


- (IBAction)buttonClickHandler:(id)sender;
- (void)updateView;






@end
