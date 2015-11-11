//
//  ViewController.m
//  DropDownWithTableView
//
//  Created by New User on 11/10/15.
//  Copyright © 2015 Linh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.data = [[NSArray alloc] initWithObjects:@"Guava",@"Apple",@"Banana",@"Carot",@"Mango",@"Lemon",@"Coconut",@"Papaya", nil];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.data count];
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *simple = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simple];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simple];
    }
    
    cell.textLabel.text = [self.data objectAtIndex:indexPath.row];
    [cell.textLabel setFont:[UIFont systemFontOfSize:10]];
    
    return cell;
}

// should return table row height
-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 30;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
//    [self.btnOutlet setTitle:cell.textLabel.text];
    [self.btnSelect setTitle:cell.textLabel.text forState:UIControlStateNormal];
    self.tableView.hidden = YES;
    
}
- (IBAction)btnSelectAction:(id)sender {
    if(self.tableView.hidden == YES){
        self.tableView.hidden = NO;
    }else{
        self.tableView.hidden = YES;
        
    }
}

@end
