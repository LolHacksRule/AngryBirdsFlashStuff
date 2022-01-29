package com.angrybirds.engine.objects
{
   import com.rovio.graphics.Animation;
   import com.angrybirds.data.level.item.LevelItemSoundResource;
   import com.angrybirds.data.level.item.LevelItem;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2World;
   import starling.display.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.LevelSlingshotObject;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.AngryBirdsEngine;
   
   public class LevelObjectBird extends LevelObjectAnimal
   {
      
      public static const ANIMATION_SPECIAL:String = "special";
      
      public static const ANIMATION_FLY:String = "fly";
      
      public static const ANIMATION_FLY_SCREAM:String = "fly_yell";
      
      protected static const BIRDS_NO_DAMAGE_TIME_BEFORE_REMOVAL:Number = 20000;
      
      protected static const BIRDS_SLEEP_TIME_BEFORE_REMOVAL:Number = 3000;
      
      protected static const TRAILING_FEATHER_FREQUENCY:Number = 0.2;
       
      
      private var mSleepingDuration:Number;
      
      protected var mSpecialPowerUsed:Boolean = false;
      
      protected var mNextParticleIndex:int = 0;
      
      protected var mTrailSpecial:Boolean = false;
      
      protected var mLastDamageTimeMilliSeconds:int;
      
      private var mIsLeavingTrail:Boolean = false;
      
      private var mIsFacingFlyingDirection:Boolean = false;
      
      public function LevelObjectBird(param1:Sprite, param2:Animation, param3:b2World, param4:LevelItem, param5:LevelObjectModel, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6);
         if(param7)
         {
            this.scream();
            this.playScreamingSoundEffect();
         }
         else
         {
            this.fly();
         }
      }
      
      public function set isFacingFlyingDirection(param1:Boolean) : void
      {
         this.mIsFacingFlyingDirection = param1;
      }
      
      public function get specialPowerUsed() : Boolean
      {
         return this.mSpecialPowerUsed;
      }
      
      public function get launchForce() : Number
      {
         return LevelSlingshotObject.LAUNCH_SPEED_DEFAULT;
      }
      
      public function get isFlying() : Boolean
      {
         if(getBody().IsAwake() && health == healthMax)
         {
            return true;
         }
         return false;
      }
      
      override public function get isNormal() : Boolean
      {
         return !isBlinking && !isScreaming && !this.specialPowerUsed;
      }
      
      override protected function initializeHealth(param1:Number) : void
      {
         if(param1 < 2)
         {
            param1 = 2;
         }
         super.initializeHealth(param1);
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.categoryBits = BIRD_BIT_CATEGORY;
         _loc1_.maskBits = 65535 & ~WHITE_BIRD_EGG_BIT_CATEGORY;
         return _loc1_;
      }
      
      override protected function normalize() : void
      {
         if(this.mSpecialPowerUsed || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.normalize();
      }
      
      override public function scream() : void
      {
         if(this.mSpecialPowerUsed || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.scream();
         if(this.isFlying)
         {
            mRenderer.setAnimation(ANIMATION_FLY_SCREAM,false);
         }
      }
      
      override public function blink() : void
      {
         if(this.mSpecialPowerUsed || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.blink();
      }
      
      protected function fly() : void
      {
         mRenderer.setAnimation(ANIMATION_FLY,false);
      }
      
      protected function specialPower(param1:ILevelObjectUpdateManager, param2:Number = 0, param3:Number = 0) : void
      {
         mRenderer.setAnimation(ANIMATION_SPECIAL,false);
      }
      
      override protected function setDamageState(param1:Number, param2:ILevelObjectUpdateManager) : Boolean
      {
         if(param1 > 0)
         {
            param1 = 1;
         }
         return super.setDamageState(param1,param2);
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.bullet = true;
         _loc3_.angularDamping = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(health < healthMax && (considerSleeping() || !this.isCausingDamage))
         {
            this.mSleepingDuration += param1;
            if(this.mSleepingDuration >= BIRDS_SLEEP_TIME_BEFORE_REMOVAL)
            {
               return true;
            }
         }
         else
         {
            this.mSleepingDuration = 0;
         }
         return false;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         if(health < healthMax || getBody() == null)
         {
            return false;
         }
         return this.mIsLeavingTrail;
      }
      
      override public function set isLeavingTrail(param1:Boolean) : void
      {
         this.mIsLeavingTrail = param1;
      }
      
      override protected function handleInitialCollision() : void
      {
         this.mIsLeavingTrail = false;
         super.handleInitialCollision();
      }
      
      override protected function addTrail(param1:ILevelObjectUpdateManager) : Boolean
      {
         var _loc4_:String = null;
         if(!this.isLeavingTrail)
         {
            return false;
         }
         if(!param1)
         {
            return true;
         }
         var _loc2_:Number = x * LevelMain.PIXEL_TO_B2_SCALE;
         var _loc3_:Number = y * LevelMain.PIXEL_TO_B2_SCALE;
         if(this.mTrailSpecial)
         {
            param1.addParticle(LevelParticle.PARTICLE_NAME_BIRD_TRAIL_BIG,LevelParticleManager.PARTICLE_GROUP_TRAILS,LevelParticle.PARTICLE_TYPE_TRAIL_PARTICLE,_loc2_,_loc3_,-1,"",LevelParticle.PARTICLE_MATERIAL_BIRD_RED);
            this.mNextParticleIndex = 0;
            this.mTrailSpecial = false;
         }
         else if(powerUpDamageMultiplier > 1)
         {
            param1.addParticle(LevelParticle.PARTICLE_NAME_BIRD_TRAIL_SPARKLE,LevelParticleManager.PARTICLE_GROUP_TRAILS,LevelParticle.PARTICLE_TYPE_TRAIL_PARTICLE,_loc2_,_loc3_,-1,"",LevelParticle.PARTICLE_MATERIAL_BIRD_RED);
         }
         else
         {
            _loc4_ = LevelParticle.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.mNextParticleIndex == 1)
            {
               _loc4_ = LevelParticle.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.mNextParticleIndex == 2)
            {
               _loc4_ = LevelParticle.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.mNextParticleIndex = (this.mNextParticleIndex + 1) % 3;
            param1.addParticle(_loc4_,LevelParticleManager.PARTICLE_GROUP_TRAILS,LevelParticle.PARTICLE_TYPE_TRAIL_PARTICLE,_loc2_,_loc3_,-1,"",LevelParticle.PARTICLE_MATERIAL_BIRD_RED);
         }
         this.dropHighSpeedfeathers(param1);
         return true;
      }
      
      protected function dropHighSpeedfeathers(param1:ILevelObjectUpdateManager) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = getSpeedVectorMagnitude();
         var _loc3_:Number = LevelSlingshotObject.LAUNCH_SPEED_GREEN_BIRD;
         if(_loc2_ > _loc3_ && Math.random() < TRAILING_FEATHER_FREQUENCY)
         {
            _loc4_ = -Math.PI / 2;
            _loc5_ = Math.random();
            param1.addParticle(LevelParticle.PARTICLE_NAME_BIRD_DESTRUCTION,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",LevelParticle.getParticleMaterialFromEngineMaterial(itemName),_loc5_ * Math.cos(_loc4_) * scale,-_loc5_ * Math.sin(_loc4_) * scale,5,_loc5_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(this.isFlying)
         {
            playSoundEffect(LevelItemSoundResource.SOUND_FLYING);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      public function activateSpecialPower(param1:ILevelObjectUpdateManager, param2:Number, param3:Number) : Boolean
      {
         if(this.mSpecialPowerUsed)
         {
            return false;
         }
         if(this.canActivateSpecialPower)
         {
            this.mSpecialPowerUsed = true;
            playSoundEffect(LevelItemSoundResource.SOUND_SPECIAL_EFFECT);
            this.specialPower(param1,param2,param3);
            this.mTrailSpecial = this.shouldShowCloudOnSpecialPowerUse;
            return true;
         }
         return false;
      }
      
      public function get canActivateSpecialPower() : Boolean
      {
         return this.isFlying;
      }
      
      protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      private function limitParticleCount(param1:int) : int
      {
         return Math.min(AngryBirdsEngine.smLevelMain.damageParticleLimit,param1);
      }
      
      override public function update(param1:Number, param2:ILevelObjectUpdateManager) : void
      {
         if(getSpecialAnimationProgress() >= 0)
         {
            this.specialPower(param2);
         }
         super.update(param1,param2);
         if(this.isFlying)
         {
            this.updateFlying();
         }
         this.addTrail(param2);
      }
      
      protected function updateFlying() : void
      {
         var _loc2_:b2Vec2 = null;
         var _loc1_:Number = 0;
         if(this.mIsFacingFlyingDirection)
         {
            _loc2_ = getBody().GetLinearVelocity();
            if(_loc2_.x != 0 || _loc2_.y != 0)
            {
               _loc1_ = Math.atan2(_loc2_.y,_loc2_.x);
            }
         }
         setAngle(_loc1_);
      }
      
      override public function applyDamage(param1:Number, param2:ILevelObjectUpdateManager, param3:LevelObject, param4:Boolean = true) : Number
      {
         if(health == healthMax)
         {
            decreaseHealth(-1);
         }
         this.addDamageParticles(param2,param1);
         this.setDamageState(0.5,param2);
         if(param1 > defence)
         {
            param1 = defence;
         }
         playDamagedSound();
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override public function causedDamageToObjects() : void
      {
         this.mLastDamageTimeMilliSeconds = lifeTimeMilliSeconds;
      }
      
      protected function get isCausingDamage() : Boolean
      {
         return lifeTimeMilliSeconds - this.mLastDamageTimeMilliSeconds < BIRDS_NO_DAMAGE_TIME_BEFORE_REMOVAL;
      }
      
      override protected function addDestructionParticles(param1:ILevelObjectUpdateManager) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = getVolume(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.limitParticleCount(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -mRenderer.width * LevelMain.PIXEL_TO_B2_SCALE) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -mRenderer.height * LevelMain.PIXEL_TO_B2_SCALE) + Math.random() * -_loc8_ * 2;
            param1.addParticle(LevelParticle.PARTICLE_NAME_BIRD_DESTRUCTION,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,1500,"",LevelParticle.getParticleMaterialFromEngineMaterial(itemName),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:ILevelObjectUpdateManager, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = getSpeedVectorMagnitude() / 10;
         var _loc4_:int = 1 + _loc3_ * getVolume(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.limitParticleCount(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_CORE,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(LevelParticle.PARTICLE_NAME_BIRD_DESTRUCTION,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",LevelParticle.getParticleMaterialFromEngineMaterial(itemName),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
