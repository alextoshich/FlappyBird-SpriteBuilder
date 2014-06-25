#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    [self addObstacle];
    timeSinceObstacle = 0.0f
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];}

-(void)update:(CCTime)delta
{
    timeSinceObstacle += delta;
    
    if(timeSinceObstacle > 2.0f){
        [self addObstacle];
        timeSinceObstacle = 0.0f;
    }
    
}


- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {

 [character flap];
}
@end