//
//  ViewController.m
//  Alcolator
//
//  Created by Diego Aguirre on 2/6/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *beerPercentTextField;
@property (weak, nonatomic) IBOutlet UISlider *beerCountSlider;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UILabel *beerCountDisplay;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)textFieldDidChange:(UITextField *)sender {
    NSString *enteredText = sender.text;
    float enteredNumber = [enteredText floatValue];
    
    if (enteredNumber == 0) {
        sender.text = nil;
    }
    
}
- (IBAction)sliderValueDidChange:(UISlider *)sender {
    NSLog(@"Slider value changed to %f", sender.value);
    [self.beerPercentTextField resignFirstResponder];
    
    if (sender == _beerCountSlider) {
        _beerCountDisplay.text = [NSString stringWithFormat:@"%f", _beerCountSlider.value];
    }
    
}

- (IBAction)buttonPressed:(UIButton *)sender {
    [self.beerPercentTextField resignFirstResponder];
    int numberOfBeers = self.beerCountSlider.value;
    int ouncesInOneBeerGlass = 12;
    
    float alcoholPercentageOfBeer = [self.beerPercentTextField.text floatValue] / 100 ;
    float ouncesOfAlcoholPerBeer = ouncesInOneBeerGlass * alcoholPercentageOfBeer;
    float ouncesOfAlcoholTotal = ouncesOfAlcoholPerBeer * numberOfBeers;
    
    float ouncesInOneWineGlass = 5;
    float alcoholPercentageofWine = 0.13;
    
    float ouncesOfAlcoholPerWineGlass = ouncesInOneWineGlass * alcoholPercentageofWine;
    float numberOfWineGlassesPerEquivalentAlcoholAmount  = ouncesOfAlcoholTotal / ouncesOfAlcoholPerWineGlass;
    
    NSString *beerText;
    if (numberOfBeers == 1){
        beerText = NSLocalizedString(@"beer", @"singular beer");
    } else {
        beerText = NSLocalizedString(@"beers", @"plural of beer");
    }
    
    
    NSString *wineText;
    if (numberOfWineGlassesPerEquivalentAlcoholAmount ==1) {
        wineText = NSLocalizedString(@"glass", @"singular glass");
    } else {
        wineText = NSLocalizedString(@"glasses", @"plural of glass");
    }
    
    NSString *resultText = [NSString stringWithFormat:NSLocalizedString(@"%d %@ contains as much alcohol as if %.lf %@ of wine", nil), numberOfBeers, beerText, numberOfWineGlassesPerEquivalentAlcoholAmount, wineText];
    self.resultLabel.text = resultText;
    
}
- (IBAction)tapGestureDidFire:(UITapGestureRecognizer *)sender {
    [self.beerPercentTextField resignFirstResponder];
}

@end