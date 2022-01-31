package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import starling.display.Sprite;
   
   public class LevelObjectBirdBlack extends LevelObjectBird
   {
      
      private static const DEFAULT_EXPLOSION_DELAY:int = 2000;
       
      
      private var mSelfExplosionCounterMilliSeconds:Number = -1;
      
      private var mSelfExplosionTimeMilliSeconds:Number = -1;
      
      private var mExplosion:Boolean = false;
      
      public function LevelObjectBirdBlack(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number = 1.0, tryToScream:Boolean = true)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale,tryToScream);
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return super.specialPowerUsed || this.mExplosion;
      }
      
      override public function activateSpecialPower(updateManager:ILevelObjectUpdateManager, targetX:Number, targetY:Number) : Boolean
      {
         if(isFlying)
         {
            if(!super.activateSpecialPower(updateManager,targetX,targetY))
            {
               return false;
            }
         }
         this.startSelfExplosion(0,updateManager);
         handleLevelEndCheck();
         return true;
      }
      
      override public function applyDamage(damage:Number, updateManager:ILevelObjectUpdateManager, damagingObject:LevelObject, addScore:Boolean = true, ignoreDefence:Boolean = false) : Number
      {
         var returnValue:Number = super.applyDamage(damage,updateManager,damagingObject,addScore,ignoreDefence);
         if(!this.specialPowerUsed && damagingObject && !damagingObject.levelItem.specialtyAvailableAfterCollision)
         {
            this.startSelfExplosion(DEFAULT_EXPLOSION_DELAY,updateManager);
         }
         return returnValue;
      }
      
      protected function startSelfExplosion(timeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         if(timeMilliSeconds != 0 && this.mSelfExplosionTimeMilliSeconds > 0)
         {
            return;
         }
         this.mSelfExplosionCounterMilliSeconds = 0;
         if(timeMilliSeconds == 0)
         {
            this.mSelfExplosionTimeMilliSeconds = 0;
            this.update(0,updateManager);
         }
         else if(timeMilliSeconds > 0)
         {
            this.mSelfExplosionTimeMilliSeconds = timeMilliSeconds;
         }
         else
         {
            this.mSelfExplosionTimeMilliSeconds = DEFAULT_EXPLOSION_DELAY;
         }
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         super.update(deltaTimeMilliSeconds,updateManager);
         if(this.mSelfExplosionCounterMilliSeconds >= 0)
         {
            this.mSelfExplosionCounterMilliSeconds += deltaTimeMilliSeconds;
            if(this.mSelfExplosionCounterMilliSeconds >= this.mSelfExplosionTimeMilliSeconds)
            {
               this.mExplosion = true;
               this.mSelfExplosionCounterMilliSeconds = -1;
               updateManager.addExplosion(LevelExplosion.TYPE_BLACK_BIRD,getBody().GetPosition().x,getBody().GetPosition().y);
            }
         }
      }
      
      override public function isReadyToBeRemoved(deltaTime:Number) : Boolean
      {
         if(this.specialPowerUsed && this.mSelfExplosionCounterMilliSeconds < 0)
         {
            return true;
         }
         if(this.mSelfExplosionCounterMilliSeconds >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(deltaTime);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.mSelfExplosionCounterMilliSeconds > 0)
         {
            return this.mSelfExplosionCounterMilliSeconds / this.mSelfExplosionTimeMilliSeconds;
         }
         return -1;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return isFlying || this.mSelfExplosionTimeMilliSeconds > 0;
      }
   }
}
