//
//  MyTableViewCell.h
//  FactoryTest
//


#import <UIKit/UIKit.h>
@class Model;

@interface MyTableViewCell : UITableViewCell

//在父类中声明出一个model类对象，在它的子类中重写set方法，在set方法内部去实现赋值操作
@property(nonatomic,strong) Model *model;

//根据不同类型的model创建不同的cell
+(instancetype)initWithModel:(Model *)model;


@end
