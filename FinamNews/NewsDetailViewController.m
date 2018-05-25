//
//  NewsDetailViewController.m
//  FinamNews
//
//  Created by Muslim Kushiev on 25.05.2018.
//  Copyright © 2018 Muslim Kushiev. All rights reserved.
//

#import "NewsDetailViewController.h"

@interface NewsDetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *newsImage;
@property (weak, nonatomic) IBOutlet UILabel *newsTitle;
@property (weak, nonatomic) IBOutlet UITextView *newsDescription;
@property (weak, nonatomic) IBOutlet UIButton *sourceButton;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityView;

@end

@implementation NewsDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if(self.newsItem != nil){
        self.title = _newsItem.author;
        _newsTitle.text = _newsItem.title;
        _newsDescription.text = _newsItem.descriptionOfArticle;
        [_activityView startAnimating];
        
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0), ^{
            NSData * imageData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString: _newsItem.urlToImage]];
            _newsImage.image = [UIImage imageWithData:imageData];
            
            dispatch_async(dispatch_get_main_queue(), ^{
                [_activityView stopAnimating];
                [_activityView setHidden:YES];
            });
       });
            
        [_sourceButton setTitle:[NSString stringWithFormat:@"Источник: %@", _newsItem.url] forState:UIControlStateNormal];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)actionOpenSource:(id)sender {
    if([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:_newsItem.url]])
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:_newsItem.url]];
    else NSLog(@"😱");
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
