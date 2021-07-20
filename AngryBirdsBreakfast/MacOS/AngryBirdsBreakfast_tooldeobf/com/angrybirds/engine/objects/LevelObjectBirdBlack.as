package com.angrybirds.engine.objects
{
   import com.rovio.graphics.Animation;
   import com.angrybirds.data.level.item.LevelItem;
   import com.rovio.Box2D.Dynamics.b2World;
   import starling.display.Sprite;
   import com.angrybirds.data.level.object.LevelObjectModel;
   
   public class LevelObjectBirdBlack extends LevelObjectBird
   {
      
      private static const DEFAULT_EXPLOSION_DELAY:int = 2000;
       
      
      private var mSelfExplosionCounterMilliSeconds:Number = -1;
      
      private var mSelfExplosionTimeMilliSeconds:Number = -1;
      
      private var mExplosion:Boolean = false;
      
      public function LevelObjectBirdBlack(param1:Sprite, param2:Animation, param3:b2World, param4:LevelItem, param5:LevelObjectModel, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return super.specialPowerUsed || this.mExplosion;
      }
      
      override public function activateSpecialPower(param1:ILevelObjectUpdateManager, param2:Number, param3:Number) : Boolean
      {
         if(isFlying)
         {
            if(!super.activateSpecialPower(param1,param2,param3))
            {
               return false;
            }
         }
         this.startSelfExplosion(0,param1);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:ILevelObjectUpdateManager, param3:LevelObject, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(!this.specialPowerUsed)
         {
            this.startSelfExplosion(DEFAULT_EXPLOSION_DELAY,param2);
         }
         return _loc5_;
      }
      
      protected function startSelfExplosion(param1:Number, param2:ILevelObjectUpdateManager) : void
      {
         if(param1 != 0 && this.mSelfExplosionTimeMilliSeconds > 0)
         {
            return;
         }
         this.mSelfExplosionCounterMilliSeconds = 0;
         if(param1 == 0)
         {
            this.mSelfExplosionTimeMilliSeconds = 0;
            this.update(0,param2);
         }
         else if(param1 > 0)
         {
            this.mSelfExplosionTimeMilliSeconds = param1;
         }
         else
         {
            this.mSelfExplosionTimeMilliSeconds = DEFAULT_EXPLOSION_DELAY;
         }
      }
      
      override public function update(param1:Number, param2:ILevelObjectUpdateManager) : void
      {
         super.update(param1,param2);
         if(this.mSelfExplosionCounterMilliSeconds >= 0)
         {
            this.mSelfExplosionCounterMilliSeconds += param1;
            if(this.mSelfExplosionCounterMilliSeconds >= this.mSelfExplosionTimeMilliSeconds)
            {
               this.mExplosion = true;
               this.mSelfExplosionCounterMilliSeconds = -1;
               param2.addExplosion(LevelExplosion.TYPE_BLACK_BIRD,getBody().GetPosition().x,getBody().GetPosition().y);
            }
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(this.specialPowerUsed && this.mSelfExplosionCounterMilliSeconds < 0)
         {
            return true;
         }
         if(this.mSelfExplosionCounterMilliSeconds >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
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
