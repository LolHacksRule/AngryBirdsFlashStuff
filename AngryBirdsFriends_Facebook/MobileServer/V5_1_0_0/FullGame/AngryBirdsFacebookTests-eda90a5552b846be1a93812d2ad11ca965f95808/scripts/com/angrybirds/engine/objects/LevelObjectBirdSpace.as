package com.angrybirds.engine.objects
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.item.LevelItemSpaceBirdLua;
   import com.angrybirds.data.level.item.LevelItemSpaceLua;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import starling.display.Sprite;
   
   public class LevelObjectBirdSpace extends LevelObjectBird
   {
      
      public static const DEFAULT_DAMPING_START_TIME_MILLISECONDS:Number = 3000;
      
      public static const LINEAR_DAMPING_AFTER_COLLISION:Number = 0.05;
      
      public static const LINEAR_DAMPING_AFTER_DELAY:Number = 0.15;
      
      public static const ANIMATION_COLLISION:String = "collision";
       
      
      protected var mDampingStartTimeMilliSeconds:Number = 3000;
      
      protected var mAnotherCollisionMilliSeconds:Number = 0.0;
      
      public function LevelObjectBirdSpace(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItemSpaceLua, levelObjectModel:LevelObjectModel, scale:Number = 1.0, tryToScream:Boolean = true)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale,tryToScream);
      }
      
      protected function get levelItemBirdSpace() : LevelItemSpaceBirdLua
      {
         return mLevelItem as LevelItemSpaceBirdLua;
      }
      
      override public function get isNormal() : Boolean
      {
         return this.timeSinceCollisionMilliSeconds < 0 && super.isNormal;
      }
      
      override protected function handleInitialCollision() : void
      {
         super.handleInitialCollision();
         getBody().SetLinearDamping(LINEAR_DAMPING_AFTER_COLLISION);
         mRenderer.setAnimation(ANIMATION_COLLISION,false);
      }
      
      override public function collidedWith(collidee:LevelObjectBase) : void
      {
         if(!(collidee is LevelObjectSensor) && !AngryBirdsEngine.smLevelMain.isCollisionExcluded(this,collidee))
         {
            isLeavingTrail = false;
         }
         super.collidedWith(collidee);
      }
      
      override public function getGravityMultiplier(worldMultiplier:Number) : Number
      {
         var multiplier:Number = NaN;
         if(this.timeSinceCollisionMilliSeconds >= 0)
         {
            multiplier = worldMultiplier - this.timeSinceCollisionMilliSeconds / 1000 * 1.3;
            if(multiplier > 1)
            {
               return multiplier;
            }
            return 1;
         }
         return worldMultiplier;
      }
      
      protected function get timeSinceFirstCollisionMilliSeconds() : Number
      {
         return mTimeSinceCollisionMilliSeconds;
      }
      
      override public function get timeSinceCollisionMilliSeconds() : Number
      {
         return mTimeSinceCollisionMilliSeconds + this.mAnotherCollisionMilliSeconds;
      }
      
      override protected function handleAnotherCollision() : void
      {
         this.mAnotherCollisionMilliSeconds = mTimeSinceCollisionMilliSeconds;
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         super.update(deltaTimeMilliSeconds,updateManager);
         if(this.mDampingStartTimeMilliSeconds >= 0 && lifeTimeMilliSeconds > this.mDampingStartTimeMilliSeconds)
         {
            getBody().SetLinearDamping(LINEAR_DAMPING_AFTER_DELAY);
         }
      }
      
      override protected function updateFlying() : void
      {
         var angle:Number = 0;
         var velocity:b2Vec2 = getBody().GetLinearVelocity();
         if(velocity.x != 0 || velocity.y != 0)
         {
            angle = Math.atan2(velocity.y,velocity.x);
         }
         setAngle(angle);
      }
   }
}
