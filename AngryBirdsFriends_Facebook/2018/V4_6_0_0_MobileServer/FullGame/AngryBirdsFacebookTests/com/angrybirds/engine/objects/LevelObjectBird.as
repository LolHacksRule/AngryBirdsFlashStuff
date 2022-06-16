package com.angrybirds.engine.objects
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.engine.LevelSlingshotObject;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import starling.display.Sprite;
   
   public class LevelObjectBird extends LevelObjectAnimal
   {
      
      public static const ANIMATION_SPECIAL:String = "special";
      
      public static const ANIMATION_FLY:String = "fly";
      
      public static const ANIMATION_FLY_SCREAM:String = "fly_yell";
      
      protected static const BIRDS_NO_DAMAGE_TIME_BEFORE_REMOVAL:Number = 20000;
      
      protected static const BIRDS_SLEEP_TIME_BEFORE_REMOVAL:Number = 3000;
      
      protected static const TRAILING_FEATHER_FREQUENCY:Number = 0.2;
      
      public static var TRAIL_PARTICLE_DEFAULT_COUNT:int = 4;
      
      public static var TRAIL_PARTICLE_BASE_SPEED:int = 12;
       
      
      private var mSleepingDuration:Number;
      
      protected var mSpecialPowerUsed:Boolean = false;
      
      protected var mNextParticleIndex:int = 0;
      
      protected var mTrailSpecial:Boolean = false;
      
      protected var mLastDamageTimeMilliSeconds:int;
      
      private var mIsLeavingTrail:Boolean = false;
      
      private var mIsFacingFlyingDirection:Boolean = false;
      
      protected var mTrailParticleNames:Array;
      
      protected var mTrailParticleCount:int;
      
      private var mLevelEndCheckPerformed:Boolean;
      
      public function LevelObjectBird(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number = 1.0, tryToScream:Boolean = true)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale);
         if(tryToScream)
         {
            this.scream();
            this.playScreamingSoundEffect();
         }
         else
         {
            this.fly();
         }
         this.mTrailParticleCount = TRAIL_PARTICLE_DEFAULT_COUNT;
         this.mLevelEndCheckPerformed = false;
      }
      
      public function set isFacingFlyingDirection(value:Boolean) : void
      {
         this.mIsFacingFlyingDirection = value;
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return this.mSpecialPowerUsed;
      }
      
      public function get launchForce() : Number
      {
         return LevelSlingshotObject.LAUNCH_SPEED_DEFAULT;
      }
      
      override public function get isFlying() : Boolean
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
      
      override protected function createFixture() : b2Fixture
      {
         var normalDensity:Number = NaN;
         var newRadius:Number = NaN;
         var normalRadius:Number = NaN;
         var defaultMass:Number = NaN;
         var newDensity:Number = NaN;
         var fixture:b2Fixture = super.createFixture();
         if(scale > 1)
         {
            normalDensity = mLevelItem.getItemDensity();
            newRadius = (mB2Body.GetFixtureList().GetShape() as b2CircleShape).GetRadius();
            normalRadius = newRadius / scale;
            defaultMass = normalDensity * Math.PI * normalRadius * normalRadius;
            newDensity = defaultMass / (Math.PI * newRadius * newRadius);
            fixture.SetDensity(newDensity);
            fixture.GetBody().ResetMassData();
         }
         return fixture;
      }
      
      override protected function initializeHealth(health:Number) : void
      {
         if(health < 2)
         {
            health = 2;
         }
         super.initializeHealth(health);
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var filterData:b2FilterData = super.createFilterData();
         filterData.categoryBits = BIRD_BIT_CATEGORY;
         filterData.maskBits = 65535;
         return filterData;
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
      
      protected function specialPower(updateManager:ILevelObjectUpdateManager, targetX:Number = 0, targetY:Number = 0) : void
      {
         mRenderer.setAnimation(ANIMATION_SPECIAL,false);
      }
      
      override protected function setDamageState(damageState:Number, updateManager:ILevelObjectUpdateManager) : Boolean
      {
         if(damageState > 0)
         {
            damageState = 1;
         }
         return super.setDamageState(damageState,updateManager);
      }
      
      override protected function createBodyDefinition(x:Number, y:Number) : b2BodyDef
      {
         var bodyDefinition:b2BodyDef = super.createBodyDefinition(x,y);
         bodyDefinition.bullet = true;
         bodyDefinition.angularDamping = 2;
         return bodyDefinition;
      }
      
      override public function isReadyToBeRemoved(deltaTime:Number) : Boolean
      {
         if(health < healthMax && (considerSleeping() || !this.isCausingDamage))
         {
            this.mSleepingDuration += deltaTime;
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
         if(isInPortalQueue)
         {
            return false;
         }
         return this.mIsLeavingTrail;
      }
      
      override public function set isLeavingTrail(value:Boolean) : void
      {
         this.mIsLeavingTrail = value;
      }
      
      override protected function handleInitialCollision() : void
      {
         this.mIsLeavingTrail = false;
         super.handleInitialCollision();
      }
      
      override protected function addTrail(updateManager:ILevelObjectUpdateManager) : Boolean
      {
         var particleType:String = null;
         if(!this.isLeavingTrail)
         {
            return false;
         }
         if(!updateManager)
         {
            return true;
         }
         var birdX:Number = x * LevelMain.PIXEL_TO_B2_SCALE;
         var birdY:Number = y * LevelMain.PIXEL_TO_B2_SCALE;
         if(this.mTrailSpecial)
         {
            updateManager.addParticle(LevelParticle.PARTICLE_NAME_BIRD_TRAIL_BIG,LevelParticleManager.PARTICLE_GROUP_TRAILS,LevelParticle.PARTICLE_TYPE_TRAIL_PARTICLE,birdX,birdY,-1,"",LevelParticle.PARTICLE_MATERIAL_BIRD_RED);
            this.mNextParticleIndex = 0;
            this.mTrailSpecial = false;
         }
         else
         {
            particleType = LevelParticle.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.mNextParticleIndex == 1)
            {
               particleType = LevelParticle.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.mNextParticleIndex == 2)
            {
               particleType = LevelParticle.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.mNextParticleIndex = (this.mNextParticleIndex + 1) % 3;
            updateManager.addParticle(particleType,LevelParticleManager.PARTICLE_GROUP_TRAILS,LevelParticle.PARTICLE_TYPE_TRAIL_PARTICLE,birdX,birdY,-1,"",LevelParticle.PARTICLE_MATERIAL_BIRD_RED);
         }
         this.dropHighSpeedfeathers(updateManager);
         this.addTrailParticles(birdX,birdY);
         return true;
      }
      
      protected function dropHighSpeedfeathers(updateManager:ILevelObjectUpdateManager) : void
      {
         var featherAngle:Number = NaN;
         var featherSpeed:Number = NaN;
         var speed:Number = getSpeedVectorMagnitude();
         var speedLimit:Number = LevelSlingshotObject.LAUNCH_SPEED_GREEN_BIRD;
         if(speed > speedLimit && Math.random() < TRAILING_FEATHER_FREQUENCY)
         {
            featherAngle = -Math.PI / 2;
            featherSpeed = Math.random();
            updateManager.addParticle(LevelParticle.PARTICLE_NAME_BIRD_DESTRUCTION,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",LevelParticle.getParticleMaterialFromEngineMaterial(itemName),featherSpeed * Math.cos(featherAngle) * scale,-featherSpeed * Math.sin(featherAngle) * scale,5,featherSpeed * 20,Math.sqrt(scale));
         }
      }
      
      protected function playScreamingSoundEffect() : void
      {
         if(this.isFlying)
         {
            playLaunchSound();
         }
      }
      
      override public function activateSpecialPower(updateManager:ILevelObjectUpdateManager, targetX:Number, targetY:Number) : Boolean
      {
         if(this.canActivateSpecialPower)
         {
            this.mSpecialPowerUsed = true;
            playSpecialSound();
            this.specialPower(updateManager,targetX,targetY);
            this.mTrailSpecial = this.shouldShowCloudOnSpecialPowerUse;
            return true;
         }
         return false;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return this.isFlying && !this.specialPowerUsed;
      }
      
      protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      private function limitParticleCount(count:int) : int
      {
         return Math.min(AngryBirdsEngine.smLevelMain.damageParticleLimit,count);
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         if(getSpecialAnimationProgress() >= 0)
         {
            this.specialPower(updateManager);
         }
         super.update(deltaTimeMilliSeconds,updateManager);
         if(this.isFlying)
         {
            this.updateFlying();
         }
         this.addTrail(updateManager);
      }
      
      protected function updateFlying() : void
      {
         var velocity:b2Vec2 = null;
         var angle:Number = 0;
         if(this.mIsFacingFlyingDirection)
         {
            velocity = getBody().GetLinearVelocity();
            if(velocity.x != 0 || velocity.y != 0)
            {
               angle = Math.atan2(velocity.y,velocity.x);
            }
         }
         setAngle(angle);
      }
      
      override public function applyDamage(damage:Number, updateManager:ILevelObjectUpdateManager, damagingObject:LevelObject, addScore:Boolean = true) : Number
      {
         if(health == healthMax)
         {
            decreaseHealth(-1);
         }
         this.addDamageParticles(updateManager,damage);
         this.setDamageState(0.5,updateManager);
         if(damage > 3)
         {
            playCollisionSound();
         }
         if(damage > defence)
         {
            damage = defence;
         }
         this.handleLevelEndCheck();
         return super.applyDamage(damage,updateManager,damagingObject,addScore);
      }
      
      override public function causedDamageToObjects() : void
      {
         this.mLastDamageTimeMilliSeconds = lifeTimeMilliSeconds;
      }
      
      protected function get isCausingDamage() : Boolean
      {
         return lifeTimeMilliSeconds - this.mLastDamageTimeMilliSeconds < BIRDS_NO_DAMAGE_TIME_BEFORE_REMOVAL;
      }
      
      override protected function addDestructionParticles(updateManager:ILevelObjectUpdateManager) : void
      {
         var angleRad:Number = NaN;
         var randomX:Number = NaN;
         var randomY:Number = NaN;
         if(!updateManager)
         {
            return;
         }
         var count:int = getVolume(false) + 1;
         var angle:Number = 90;
         count = this.limitParticleCount(count);
         for(var p:int = 0; p < count; p++)
         {
            angle += Math.random() * (720 / count);
            angleRad = angle / (180 / Math.PI);
            randomX = -mRenderer.width * LevelMain.PIXEL_TO_B2_SCALE;
            randomX += Math.random() * -randomX * 2;
            randomY = -mRenderer.height * LevelMain.PIXEL_TO_B2_SCALE;
            randomY += Math.random() * -randomY * 2;
            updateManager.addParticle(LevelParticle.PARTICLE_NAME_BIRD_DESTRUCTION,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + randomX,getBody().GetPosition().y + randomY,1500,"",LevelParticle.getParticleMaterialFromEngineMaterial(itemName),5 * Math.cos(angleRad),-5 * Math.sin(angleRad),5,5 * 20);
         }
      }
      
      override public function addDamageParticles(updateManager:ILevelObjectUpdateManager, damage:int) : void
      {
         var i:int = 0;
         var angle2:Number = NaN;
         var featherSpeed:Number = NaN;
         if(damage < 6)
         {
            return;
         }
         var speed:Number = getSpeedVectorMagnitude() / 10;
         var count:int = 1 + speed * getVolume(false) * 0.12;
         var angle:Number = 90;
         damage /= scale * scale;
         count *= 3 + damage / 20;
         count = this.limitParticleCount(count);
         for(i = 0; i < count / 3; i++)
         {
            angle += Math.random() * (720 / count);
            updateManager.addParticle(destructionBlockName,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1000,"",0,Math.cos(angle) * scale,0,5,speed * 5,1);
         }
         for(i = 0; i < count; i++)
         {
            angle += Math.random() * (720 / count);
            angle2 = angle / (180 / Math.PI);
            featherSpeed = 0.5 * speed + speed * (Math.random() * 0.5);
            updateManager.addParticle(LevelParticle.PARTICLE_NAME_BIRD_DESTRUCTION,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",LevelParticle.getParticleMaterialFromEngineMaterial(itemName),featherSpeed * Math.cos(angle2) * scale,-featherSpeed * Math.sin(angle2) * scale,5,featherSpeed * 20,Math.sqrt(scale));
         }
      }
      
      override protected function addTrailParticles(centerXB2:Number, centerYB2:Number) : void
      {
         var angle:Number = NaN;
         var particleSpeed:Number = NaN;
         var particleIndex:int = 0;
         if(!this.mTrailParticleNames)
         {
            return;
         }
         var particleCount:int = Math.random() * this.mTrailParticleCount;
         var particleScale:Number = 0.5;
         for(var i:int = 0; i < particleCount; i++)
         {
            angle = Math.random() * (Math.PI * 2);
            particleSpeed = 0.5 * TRAIL_PARTICLE_BASE_SPEED + TRAIL_PARTICLE_BASE_SPEED * (Math.random() * 0.5);
            particleIndex = 0;
            if(this.mTrailParticleNames.length > 1)
            {
               particleIndex = Math.random() * this.mTrailParticleNames.length;
            }
            if(this.mTrailParticleNames[particleIndex] == "POWERUP_POWERPOTION_TRAIL")
            {
               particleScale = 0.2 + Math.random() * 0.2;
            }
            AngryBirdsEngine.smLevelMain.particles.addSimpleParticle(this.mTrailParticleNames[particleIndex],LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,centerXB2,centerYB2,750,"",LevelParticle.getParticleMaterialFromEngineMaterial("BIRD_RED"),particleSpeed * Math.cos(angle) * particleScale,-particleSpeed * Math.sin(angle) * particleScale,5,particleSpeed * 20,Math.sqrt(particleScale));
         }
      }
      
      override public function addTrailParticleName(name:String) : void
      {
         if(!this.mTrailParticleNames)
         {
            this.mTrailParticleNames = [];
         }
         this.mTrailParticleNames.push(name);
      }
      
      override public function setTrailParticleCount(value:int) : void
      {
         this.mTrailParticleCount = value;
      }
      
      protected function handleLevelEndCheck() : void
      {
         if(!this.mLevelEndCheckPerformed)
         {
            AngryBirdsEngine.controller.checkForLevelEnd();
            this.mLevelEndCheckPerformed = true;
         }
      }
      
      override public function updateBeforeRemoving(updateManager:ILevelObjectUpdateManager, countScore:Boolean) : void
      {
         super.updateBeforeRemoving(updateManager,countScore);
         this.handleLevelEndCheck();
      }
   }
}
