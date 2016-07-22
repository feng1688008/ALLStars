//  FirstTableViewCell.m
//  FactoryTest

#import "FirstTableViewCell.h"
#import "First.h"

@implementation FirstTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{

    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 30)];
        self.titleLabel.center = self.contentView.center;
        [self.contentView addSubview:self.titleLabel];
    }
    return self;
}
//当需要调整子视图的位置的时候才能调用这个方法
-(void)layoutSubviews{
    
    [super layoutSubviews];
    self.titleLabel.frame = CGRectMake(0, 0, 100, 30);
    self.titleLabel.center = self.contentView.center;

}

-(void)setModel:(Model *)model{
    
    First *firstModel = (First *)model;
    self.titleLabel.text = firstModel.title;

}

@end
