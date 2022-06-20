package com.angrybirds.engine.beams
{
   import com.angrybirds.data.level.item.LevelItemSpaceLua;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.engine.objects.LevelObjectBase;
   import com.rovio.graphics.Animation;
   import starling.display.Sprite;
   
   public class LevelLaserBeam extends LevelBeamBase
   {
       
      
      protected var mHealth:Number = 0.0;
      
      protected var mDamageOnBounce:Number = 0.0;
      
      protected var mImpulseOnBird:Number = 0.0;
      
      protected var mReflectingScore:int = 0;
      
      protected var mTurboLaser:Boolean = false;
      
      protected var mLevelItem:LevelItemSpaceLua;
      
      public function LevelLaserBeam(x:Number, y:Number, angle:Number, speed:Number, levelItem:LevelItemSpaceLua, sprite:Sprite, animation:Animation, scale:Number, shotByBird:Boolean)
      {
         super(x,y,angle,speed,sprite,animation,scale);
         var damageOnBounce:Number = levelItem.getNumberProperty("damageDoneOnBounce");
         if(isNaN(damageOnBounce))
         {
            damageOnBounce = 0;
         }
         var strength:Number = levelItem.getNumberProperty("strength");
         if(isNaN(strength))
         {
            strength = 0;
         }
         var impulseOnBird:Number = levelItem.getNumberProperty("impulseGivenOnBirdCollision");
         if(isNaN(impulseOnBird))
         {
            impulseOnBird = 0;
         }
         impulseOnBird *= LevelMain.PIXEL_TO_B2_SCALE;
         if(shotByBird)
         {
            impulseOnBird = 0;
         }
         this.mHealth = strength;
         this.mDamageOnBounce = damageOnBounce;
         this.mImpulseOnBird = impulseOnBird;
         var collidedScoreInc:Number = levelItem.getNumberProperty("collidedScoreInc");
         if(isNaN(collidedScoreInc))
         {
            collidedScoreInc = 0;
         }
         this.mReflectingScore = collidedScoreInc;
         this.mTurboLaser = levelItem.getBooleanProperty("turboLaser");
         this.mLevelItem = levelItem;
         var soundName:String = this.mLevelItem.getProperty("createSound");
         if(soundName)
         {
            this.mLevelItem.playSoundLua(soundName);
         }
      }
      
      public function get health() : Number
      {
         return this.mHealth;
      }
      
      public function get impulseOnBird() : Number
      {
         return this.mImpulseOnBird;
      }
      
      public function get reflectingScore() : int
      {
         return this.mReflectingScore;
      }
      
      public function get damageOnBounce() : Number
      {
         if(this.mHealth < this.mDamageOnBounce)
         {
            return this.mHealth;
         }
         return this.mDamageOnBounce;
      }
      
      public function get isBouncing() : Boolean
      {
         return !this.mTurboLaser;
      }
      
      override public function reflectToAngle(angle:Number, speed:Number) : void
      {
         super.reflectToAngle(angle,speed);
         var soundName:String = this.mLevelItem.getProperty("deflectionSound");
         if(soundName)
         {
            this.mLevelItem.playSoundLua(soundName);
         }
      }
      
      public function applyDamage(damage:Number) : void
      {
         if(damage > 0)
         {
            this.mHealth -= damage;
            if(this.mHealth < 0)
            {
               this.mHealth = 0;
            }
         }
      }
      
      public function getDamageFactor(object:LevelObjectBase) : Number
      {
         return this.mLevelItem.getDamageMultiplier(object.levelItem.materialName);
      }
      
      public function get collisionParticle() : String
      {
         if(this.mLevelItem.particlesCollisionCount > 0)
         {
            return this.mLevelItem.getParticleCollision(0);
         }
         return null;
      }
      
      public function get destructionParticle() : String
      {
         if(this.mLevelItem.particlesDestroyedCount > 0)
         {
            return this.mLevelItem.getParticleDestroyed(0);
         }
         return null;
      }
   }
}
