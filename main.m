#import <Foundation/Foundation.h>
#define RANDON_NUM	7
@interface myClass : NSObject
{
	int num1 ,num2 ;
	int total;
}
@property int num1,num2;
-(int) sum;
@end

@implementation myClass

@synthesize num1 ,num2;
- (int) sum
{
	return (num1 + num2);
}
@end
int main (int argc , char * argv)
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	//--------------------------------------
	int total;
	myClass *obj= [[myClass alloc] init];
	[obj setNum1:100];
	[obj setNum1:200];
	total = [obj sum];
	NSLog (@"total =%i",total);
		//--------------------------------------
	int i=RANDON_NUM;
	double expa = exp(1);
	NSLog (@"exponential %lf sizeof (long double)=|%-8i|",expa,sizeof (long double));
	NSLog(@"BOOLEAN =%d ",sizeof (bool));
	[pool drain];
}