//
//  RoundedWaitingView.m
//
//  Code generated using QuartzCode 1.36.2 on 16/3/21.
//  www.quartzcodeapp.com
//

#import "RoundedWaitingView.h"
#import "QCMethod.h"

@interface RoundedWaitingView ()

@property (nonatomic, strong) NSMutableDictionary * layers;
@property (nonatomic, strong) NSMapTable * completionBlocks;
@property (nonatomic, assign) BOOL  updateLayerValueForCompletedAnimation;


@end

@implementation RoundedWaitingView

#pragma mark - Life Cycle

- (instancetype)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:frame];
	if (self) {
		[self setupProperties];
		[self setupLayers];
	}
	return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
	self = [super initWithCoder:coder];
	if (self) {
		[self setupProperties];
		[self setupLayers];
	}
	return self;
}

- (void)setFrame:(CGRect)frame{
	[super setFrame:frame];
	[self setupLayerFrames];
}

- (void)setBounds:(CGRect)bounds{
	[super setBounds:bounds];
	[self setupLayerFrames];
}

- (void)setupProperties{
	self.completionBlocks = [NSMapTable mapTableWithKeyOptions:NSPointerFunctionsOpaqueMemory valueOptions:NSPointerFunctionsStrongMemory];;
	self.layers = [NSMutableDictionary dictionary];
	self.updateLayerValueForCompletedAnimation = YES;
	
}

- (void)setupLayers{
	CAShapeLayer * backgroundTrack = [CAShapeLayer layer];
	[self.layer addSublayer:backgroundTrack];
	self.layers[@"backgroundTrack"] = backgroundTrack;
	
	CALayer * imageLayer = [CALayer layer];
	[self.layer addSublayer:imageLayer];
	self.layers[@"imageLayer"] = imageLayer;
	
	CALayer * replicatorContainer = [CALayer layer];
	[self.layer addSublayer:replicatorContainer];
	self.layers[@"replicatorContainer"] = replicatorContainer;
	{
		CAReplicatorLayer * replicator = [CAReplicatorLayer layer];
		[replicatorContainer addSublayer:replicator];
		self.layers[@"replicator"] = replicator;
		{
			CAShapeLayer * roundedRect = [CAShapeLayer layer];
			[replicator addSublayer:roundedRect];
			self.layers[@"roundedRect"] = roundedRect;
		}
		
		CAReplicatorLayer * replicatorUpsiteDown = [CAReplicatorLayer layer];
		[replicatorContainer addSublayer:replicatorUpsiteDown];
		self.layers[@"replicatorUpsiteDown"] = replicatorUpsiteDown;
		{
			CAShapeLayer * roundedRectReplicator = [CAShapeLayer layer];
			[replicatorUpsiteDown addSublayer:roundedRectReplicator];
			self.layers[@"roundedRectReplicator"] = roundedRectReplicator;
		}
		
	}
	
	
	CALayer * maskLayer = [CALayer layer];
    replicatorContainer.mask = maskLayer;
	self.layers[@"maskLayer"] = maskLayer;
	
	[self resetLayerPropertiesForLayerIdentifiers:nil];
	[self setupLayerFrames];
}

- (void)resetLayerPropertiesForLayerIdentifiers:(NSArray *)layerIds{
	[CATransaction begin];
	[CATransaction setDisableActions:YES];
	
	if(!layerIds || [layerIds containsObject:@"backgroundTrack"]){
		CAShapeLayer * backgroundTrack = self.layers[@"backgroundTrack"];
		backgroundTrack.lineCap     = kCALineCapRound;
		backgroundTrack.lineJoin    = kCALineJoinRound;
		backgroundTrack.fillColor   = [UIColor whiteColor].CGColor;
		backgroundTrack.strokeColor = [UIColor colorWithRed:0 green: 0 blue:0 alpha:0.08].CGColor;
		backgroundTrack.lineWidth   = 5;
	}
	if(!layerIds || [layerIds containsObject:@"imageLayer"]){
		CALayer * imageLayer = self.layers[@"imageLayer"];
		imageLayer.backgroundColor = [UIColor colorWithRed:0 green: 0 blue:0 alpha:0].CGColor;
		imageLayer.contents        = (id)[UIImage imageNamed:@"pair_tizhongcheng_search_loading"].CGImage;
		imageLayer.contentsGravity = kCAGravityResizeAspectFill;
	}
	if(!layerIds || [layerIds containsObject:@"replicatorContainer"]){
		CALayer * replicatorContainer = self.layers[@"replicatorContainer"];
		replicatorContainer.backgroundColor = [UIColor colorWithRed:0.522 green: 0.749 blue:1 alpha:0].CGColor;
	}
	if(!layerIds || [layerIds containsObject:@"replicator"]){
		CAReplicatorLayer * replicator = self.layers[@"replicator"];
		replicator.instanceCount       = 40;
		replicator.instanceDelay       = 0.01;
		replicator.instanceColor       = [UIColor colorWithRed:1 green: 0.373 blue:0 alpha:0.99].CGColor;
		replicator.instanceRedOffset   = 0.005;
		replicator.instanceGreenOffset = 0.005;
		replicator.instanceBlueOffset  = 0.005;
		replicator.instanceAlphaOffset = -0.03;
		replicator.instanceTransform   = CATransform3DIdentity;
	}
	if(!layerIds || [layerIds containsObject:@"roundedRect"]){
		CAShapeLayer * roundedRect = self.layers[@"roundedRect"];
		roundedRect.lineCap     = kCALineCapRound;
		roundedRect.lineJoin    = kCALineJoinRound;
		roundedRect.fillColor   = nil;
		roundedRect.strokeColor = [UIColor whiteColor].CGColor;
		roundedRect.lineWidth   = 5;
		roundedRect.strokeEnd   = 0.025;
	}
	if(!layerIds || [layerIds containsObject:@"replicatorUpsiteDown"]){
		CAReplicatorLayer * replicatorUpsiteDown = self.layers[@"replicatorUpsiteDown"];
		[replicatorUpsiteDown setValue:@(-180 * M_PI/180) forKeyPath:@"transform.rotation"];
		replicatorUpsiteDown.instanceCount     = 40;
		replicatorUpsiteDown.instanceDelay     = 0.01;
		replicatorUpsiteDown.instanceColor     = [UIColor colorWithRed:1 green: 0.373 blue:0 alpha:0.99].CGColor;
		replicatorUpsiteDown.instanceRedOffset = 0.005;
		replicatorUpsiteDown.instanceGreenOffset = 0.005;
		replicatorUpsiteDown.instanceBlueOffset = 0.005;
		replicatorUpsiteDown.instanceAlphaOffset = -0.03;
		replicatorUpsiteDown.instanceTransform = CATransform3DIdentity;
	}
	if(!layerIds || [layerIds containsObject:@"roundedRectReplicator"]){
		CAShapeLayer * roundedRectReplicator = self.layers[@"roundedRectReplicator"];
		roundedRectReplicator.lineCap     = kCALineCapRound;
		roundedRectReplicator.lineJoin    = kCALineJoinRound;
		roundedRectReplicator.fillColor   = nil;
		roundedRectReplicator.strokeColor = [UIColor whiteColor].CGColor;
		roundedRectReplicator.lineWidth   = 5;
		roundedRectReplicator.strokeEnd   = 0.025;
	}
	if(!layerIds || [layerIds containsObject:@"maskLayer"]){
		CALayer * maskLayer = self.layers[@"maskLayer"];
		maskLayer.anchorPoint     = CGPointMake(0.5, 0);
		[maskLayer setValue:@(-268.43 * M_PI/180) forKeyPath:@"transform.rotation"];
		maskLayer.backgroundColor = [UIColor blackColor].CGColor;
	}
	
	[CATransaction commit];
}

- (void)setupLayerFrames{
	[CATransaction begin];
	[CATransaction setDisableActions:YES];
	
	CAShapeLayer * backgroundTrack       = self.layers[@"backgroundTrack"];
	backgroundTrack.frame                = CGRectMake(0, 0,  CGRectGetWidth(backgroundTrack.superlayer.bounds),  CGRectGetHeight(backgroundTrack.superlayer.bounds));
	backgroundTrack.path                 = [self roundedRectPathWithBounds:[self.layers[@"backgroundTrack"] bounds]].CGPath;
	
	CALayer * imageLayer                 = self.layers[@"imageLayer"];
	imageLayer.frame                     = CGRectMake(-0.00102 * CGRectGetWidth(imageLayer.superlayer.bounds), 0,  CGRectGetWidth(imageLayer.superlayer.bounds),  CGRectGetHeight(imageLayer.superlayer.bounds));
	
	CALayer * replicatorContainer        = self.layers[@"replicatorContainer"];
	replicatorContainer.frame            = CGRectMake(0, 0, 1.00294 * CGRectGetWidth(replicatorContainer.superlayer.bounds), 1.00294 * CGRectGetHeight(replicatorContainer.superlayer.bounds));
	
	CAReplicatorLayer * replicator       = self.layers[@"replicator"];
	replicator.frame                     = CGRectMake(0, 0, 0.99787 * CGRectGetWidth(replicator.superlayer.bounds), 0.99707 * CGRectGetHeight(replicator.superlayer.bounds));
	
	CAShapeLayer * roundedRect           = self.layers[@"roundedRect"];
	roundedRect.frame                    = CGRectMake(0.0004 * CGRectGetWidth(roundedRect.superlayer.bounds), 0, 0.99919 * CGRectGetWidth(roundedRect.superlayer.bounds),  CGRectGetHeight(roundedRect.superlayer.bounds));
	roundedRect.path                     = [self roundedRectPathWithBounds:[self.layers[@"roundedRect"] bounds]].CGPath;
	
	CAReplicatorLayer * replicatorUpsiteDown = self.layers[@"replicatorUpsiteDown"];
	replicatorUpsiteDown.transform       = CATransform3DIdentity;
	replicatorUpsiteDown.frame           = CGRectMake(0, 0, 0.99787 * CGRectGetWidth(replicatorUpsiteDown.superlayer.bounds), 0.99707 * CGRectGetHeight(replicatorUpsiteDown.superlayer.bounds));
	[replicatorUpsiteDown setValue:@(-180 * M_PI/180) forKeyPath:@"transform.rotation"];
	
	CAShapeLayer * roundedRectReplicator = self.layers[@"roundedRectReplicator"];
	roundedRectReplicator.frame          = CGRectMake(0.0004 * CGRectGetWidth(roundedRectReplicator.superlayer.bounds), 0, 0.99919 * CGRectGetWidth(roundedRectReplicator.superlayer.bounds),  CGRectGetHeight(roundedRectReplicator.superlayer.bounds));
	roundedRectReplicator.path           = [self roundedRectPathWithBounds:[self.layers[@"roundedRectReplicator"] bounds]].CGPath;
	
	CALayer * maskLayer                  = self.layers[@"maskLayer"];
	maskLayer.transform                  = CATransform3DIdentity;
	maskLayer.frame                      = CGRectMake(-0.33756 * CGRectGetWidth(maskLayer.superlayer.bounds), 0.5 * CGRectGetHeight(maskLayer.superlayer.bounds), 1.69945 * CGRectGetWidth(maskLayer.superlayer.bounds), 0.70051 * CGRectGetHeight(maskLayer.superlayer.bounds));
	[maskLayer setValue:@(-268.43 * M_PI/180) forKeyPath:@"transform.rotation"];
	
	[CATransaction commit];
}

#pragma mark - Animation Setup

- (void)addRotationAnimation{
	NSString * fillMode = kCAFillModeForwards;
	
	////An infinity animation
	
	////RoundedRect animation
	CAKeyframeAnimation * roundedRectStrokeStartAnim = [CAKeyframeAnimation animationWithKeyPath:@"strokeStart"];
	roundedRectStrokeStartAnim.values   = @[@0.475, @0.975];
	roundedRectStrokeStartAnim.keyTimes = @[@0, @1];
	roundedRectStrokeStartAnim.duration = 1;
	
	CAKeyframeAnimation * roundedRectStrokeEndAnim = [CAKeyframeAnimation animationWithKeyPath:@"strokeEnd"];
	roundedRectStrokeEndAnim.values   = @[@0.5, @1];
	roundedRectStrokeEndAnim.keyTimes = @[@0, @1];
	roundedRectStrokeEndAnim.duration = 1;
	
	CAAnimationGroup * roundedRectRotationAnim = [QCMethod groupAnimations:@[roundedRectStrokeStartAnim, roundedRectStrokeEndAnim] fillMode:fillMode];
	roundedRectRotationAnim.repeatCount = INFINITY;
	[self.layers[@"roundedRect"] addAnimation:roundedRectRotationAnim forKey:@"roundedRectRotationAnim"];
	
	////RoundedRectReplicator animation
	CAKeyframeAnimation * roundedRectReplicatorStrokeStartAnim = [CAKeyframeAnimation animationWithKeyPath:@"strokeStart"];
	roundedRectReplicatorStrokeStartAnim.values = @[@0.475, @0.975];
	roundedRectReplicatorStrokeStartAnim.keyTimes = @[@0, @1];
	roundedRectReplicatorStrokeStartAnim.duration = 1;
	
	CAKeyframeAnimation * roundedRectReplicatorStrokeEndAnim = [CAKeyframeAnimation animationWithKeyPath:@"strokeEnd"];
	roundedRectReplicatorStrokeEndAnim.values = @[@0.5, @1];
	roundedRectReplicatorStrokeEndAnim.keyTimes = @[@0, @1];
	roundedRectReplicatorStrokeEndAnim.duration = 1;
	
	CAAnimationGroup * roundedRectReplicatorRotationAnim = [QCMethod groupAnimations:@[roundedRectReplicatorStrokeStartAnim, roundedRectReplicatorStrokeEndAnim] fillMode:fillMode];
	roundedRectReplicatorRotationAnim.repeatCount = INFINITY;
	[self.layers[@"roundedRectReplicator"] addAnimation:roundedRectReplicatorRotationAnim forKey:@"roundedRectReplicatorRotationAnim"];
	
	////MaskLayer animation
	CAKeyframeAnimation * maskLayerTransformAnim = [CAKeyframeAnimation animationWithKeyPath:@"transform.rotation.z"];
	maskLayerTransformAnim.values   = @[@(-210 * M_PI/180), 
		 @(-510 * M_PI/180)];
	maskLayerTransformAnim.keyTimes = @[@0, @1];
	maskLayerTransformAnim.duration = 2;
	
	CAAnimationGroup * maskLayerRotationAnim = [QCMethod groupAnimations:@[maskLayerTransformAnim] fillMode:fillMode];
	maskLayerRotationAnim.repeatCount = INFINITY;
	[self.layers[@"maskLayer"] addAnimation:maskLayerRotationAnim forKey:@"maskLayerRotationAnim"];
}

#pragma mark - Animation Cleanup

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag{
	void (^completionBlock)(BOOL) = [self.completionBlocks objectForKey:anim];;
	if (completionBlock){
		[self.completionBlocks removeObjectForKey:anim];
		if ((flag && self.updateLayerValueForCompletedAnimation) || [[anim valueForKey:@"needEndAnim"] boolValue]){
			[self updateLayerValuesForAnimationId:[anim valueForKey:@"animId"]];
			[self removeAnimationsForAnimationId:[anim valueForKey:@"animId"]];
		}
		completionBlock(flag);
	}
}

- (void)updateLayerValuesForAnimationId:(NSString *)identifier{
	if([identifier isEqualToString:@"rotation"]){
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"roundedRect"] animationForKey:@"roundedRectRotationAnim"] theLayer:self.layers[@"roundedRect"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"roundedRectReplicator"] animationForKey:@"roundedRectReplicatorRotationAnim"] theLayer:self.layers[@"roundedRectReplicator"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"maskLayer"] animationForKey:@"maskLayerRotationAnim"] theLayer:self.layers[@"maskLayer"]];
	}
}

- (void)removeAnimationsForAnimationId:(NSString *)identifier{
	if([identifier isEqualToString:@"rotation"]){
		[self.layers[@"roundedRect"] removeAnimationForKey:@"roundedRectRotationAnim"];
		[self.layers[@"roundedRectReplicator"] removeAnimationForKey:@"roundedRectReplicatorRotationAnim"];
		[self.layers[@"maskLayer"] removeAnimationForKey:@"maskLayerRotationAnim"];
	}
}

- (void)removeAllAnimations{
	[self.layers enumerateKeysAndObjectsUsingBlock:^(id key, CALayer *layer, BOOL *stop) {
		[layer removeAllAnimations];
	}];
}

#pragma mark - Bezier Path

- (UIBezierPath*)roundedRectPathWithBounds:(CGRect)bound{
	UIBezierPath *roundedRectPath = [UIBezierPath bezierPath];
	CGFloat minX = CGRectGetMinX(bound), minY = CGRectGetMinY(bound), w = CGRectGetWidth(bound), h = CGRectGetHeight(bound);
	
	[roundedRectPath moveToPoint:CGPointMake(minX + 0.17647 * w, minY)];
	[roundedRectPath addCurveToPoint:CGPointMake(minX, minY + 0.17647 * h) controlPoint1:CGPointMake(minX + 0.07901 * w, minY) controlPoint2:CGPointMake(minX, minY + 0.07901 * h)];
	[roundedRectPath addLineToPoint:CGPointMake(minX, minY + 0.82353 * h)];
	[roundedRectPath addCurveToPoint:CGPointMake(minX + 0.17647 * w, minY + h) controlPoint1:CGPointMake(minX, minY + 0.92099 * h) controlPoint2:CGPointMake(minX + 0.07901 * w, minY + h)];
	[roundedRectPath addLineToPoint:CGPointMake(minX + 0.82353 * w, minY + h)];
	[roundedRectPath addCurveToPoint:CGPointMake(minX + w, minY + 0.82353 * h) controlPoint1:CGPointMake(minX + 0.92099 * w, minY + h) controlPoint2:CGPointMake(minX + w, minY + 0.92099 * h)];
	[roundedRectPath addLineToPoint:CGPointMake(minX + w, minY + 0.17647 * h)];
	[roundedRectPath addCurveToPoint:CGPointMake(minX + 0.82353 * w, minY) controlPoint1:CGPointMake(minX + w, minY + 0.07901 * h) controlPoint2:CGPointMake(minX + 0.92099 * w, minY)];
	[roundedRectPath closePath];
	[roundedRectPath moveToPoint:CGPointMake(minX + 0.17647 * w, minY)];
	
	return roundedRectPath;
}


@end