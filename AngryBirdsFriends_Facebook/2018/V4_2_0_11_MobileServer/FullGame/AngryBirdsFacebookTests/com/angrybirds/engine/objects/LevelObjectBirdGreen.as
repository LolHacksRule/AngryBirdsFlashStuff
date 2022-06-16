package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.LevelSlingshotObject;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import com.rovio.sound.SoundEngine;
   import starling.display.Sprite;
   
   public class LevelObjectBirdGreen extends LevelObjectBird
   {
       
      
      private var mTargetHorizontalSpeed:Number = 0;
      
      public function LevelObjectBirdGreen(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number = 1.0, tryToScream:Boolean = true)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale,tryToScream);
      }
      
      override public function get launchForce() : Number
      {
         return LevelSlingshotObject.LAUNCH_SPEED_GREEN_BIRD;
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         var velocityX:Number = NaN;
         var velocityY:Number = NaN;
         var angleDelta:Number = NaN;
         super.update(deltaTimeMilliSeconds,updateManager);
         if(this.mTargetHorizontalSpeed != 0 && health < healthMax)
         {
            this.mTargetHorizontalSpeed = 0;
         }
         if(this.mTargetHorizontalSpeed != 0)
         {
            velocityX = getBody().GetLinearVelocity().x;
            velocityY = getBody().GetLinearVelocity().y;
            if(this.mTargetHorizontalSpeed < velocityX)
            {
               getBody().SetLinearVelocity(new b2Vec2(velocityX - deltaTimeMilliSeconds / 10,velocityY));
               if(this.mTargetHorizontalSpeed >= velocityX)
               {
                  this.mTargetHorizontalSpeed = 0;
               }
            }
            else if(this.mTargetHorizontalSpeed > velocityX)
            {
               getBody().SetLinearVelocity(new b2Vec2(velocityX + deltaTimeMilliSeconds / 10,velocityY));
               if(this.mTargetHorizontalSpeed <= velocityX)
               {
                  this.mTargetHorizontalSpeed = 0;
               }
            }
         }
         if(health == healthMax)
         {
            angleDelta = deltaTimeMilliSeconds * (!!specialPowerUsed ? 2 : 1) * Math.PI * 2 / 1000;
            setAngle(getAngle() + angleDelta);
         }
      }
      
      override public function activateSpecialPower(updateManager:ILevelObjectUpdateManager, targetX:Number, targetY:Number) : Boolean
      {
         if(!super.activateSpecialPower(updateManager,targetX,targetY))
         {
            return false;
         }
         SoundEngine.playSound("boomerang_swish");
         var velocityX:Number = getBody().GetLinearVelocity().x;
         if(velocityX != 0)
         {
            this.mTargetHorizontalSpeed = -velocityX * 1.5;
         }
         return true;
      }
   }
}
