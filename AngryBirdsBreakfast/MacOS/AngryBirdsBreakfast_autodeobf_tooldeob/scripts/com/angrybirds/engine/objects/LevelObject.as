package com.angrybirds.engine.objects
{
   import com.rovio.graphics.Animation;
   import com.angrybirds.data.level.item.CircleShapeDefinition;
   import com.angrybirds.data.level.item.LevelItemMaterial;
   import com.angrybirds.data.level.item.LevelItemSoundResource;
   import com.angrybirds.data.level.item.LevelItem;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.sound.SoundEngine;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import starling.display.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.ScoreCollector;
   import com.angrybirds.engine.Tuner;
   import com.angrybirds.engine.LevelMain;
   import flash.geom.Point;
   
   public class LevelObject extends LevelObjectInterpolated
   {
      
      public static const ANIMATION_NORMAL:String = "normal";
      
      public static const BIRD_BIT_CATEGORY:uint = 1 << 1;
      
      public static const WHITE_BIRD_EGG_BIT_CATEGORY:uint = 1 << 2;
      
      public static const GROUND_BIT_CATEGORY:uint = 1 << 3;
      
      public static const MIGHTY_EAGLE_BIT_CATEGORY:uint = 1 << 4;
       
      
      private var mObjectShape:int;
      
      private var mItemType:int;
      
      private var mNextLinearVelocity:b2Vec2;
      
      private var mPreviousLinearVelocity:b2Vec2;
      
      private var mHealth:Number;
      
      private var mHealthMax:Number;
      
      private var mDefence:Number;
      
      private var mPowerUpDamageMultiplier:Number = 1;
      
      private var mNotDamageAwarding:Boolean = false;
      
      protected var mRenderer:LevelObjectRenderer;
      
      private var mAnimation:Animation;
      
      private var mScale:Number = 1.0;
      
      private var mIsConcreteObject:Boolean = true;
      
      private var mIdSet:Boolean = false;
      
      private var mId:int = 0;
      
      protected var mTimeSinceCollisionMilliSeconds:Number = -1.0;
      
      private var mDestroyedOnCollision:Boolean = false;
      
      private var mOutOfBounds:Boolean = false;
      
      protected var mParticleJSONId:String = "";
      
      protected var mParticleVariationCount:int = 1;
      
      public function LevelObject(param1:Sprite, param2:Animation, param3:b2World, param4:LevelItem, param5:LevelObjectModel, param6:Number)
      {
         this.mPreviousLinearVelocity = new b2Vec2();
         super(param1,param3,param4,param5);
         this.mAnimation = param2;
         this.mScale = param6;
         this.mItemType = mLevelItem.itemType;
         param1.scaleX = param6;
         param1.scaleY = param6;
         this.mRenderer = this.initObjectRenderer();
         this.mRenderer.calculateWidthHeightRatio(mLevelItem.shape is CircleShapeDefinition);
         this.createPhysicsBody(mLevelObjectModel.x,mLevelObjectModel.y);
         gravityFilter = param5.gravityFilter;
         this.mDefence = mLevelItem.getItemDefence();
         if(mLevelItem.healthMax > 0)
         {
            this.initializeHealth(mLevelItem.healthMax);
         }
         else
         {
            this.initializeHealth(Math.round(this.getVolume(true) * mLevelItem.getItemStrength()));
         }
         if(mLevelItem.itemType == LevelItem.ITEM_TYPE_BORDER)
         {
            param1.visible = false;
         }
         else
         {
            this.setDamageState(0,null);
         }
         if(param5.angle != 0)
         {
            this.setAngle(param5.angle * (Math.PI / 180));
         }
         this.update(0,null);
         this.render(0,1,0);
         this.mRenderer.calculateImagePivotFromShapeObject(mLevelItem.shape);
      }
      
      public static function playSoundEffectStatic(param1:int, param2:LevelItemSoundResource, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.getPath(param1)).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.channelName;
            }
            SoundEngine.playSoundFromVariation(_loc4_,param3);
         }
      }
      
      public function get health() : Number
      {
         return this.mHealth;
      }
      
      public function set health(param1:Number) : void
      {
         this.mHealth = param1;
      }
      
      public function get healthMax() : Number
      {
         return this.mHealthMax;
      }
      
      public function get itemName() : String
      {
         return mLevelItem.itemName;
      }
      
      public function get powerUpDamageMultiplier() : Number
      {
         return this.mPowerUpDamageMultiplier;
      }
      
      public function get animation() : Animation
      {
         return this.mAnimation;
      }
      
      public function get x() : Number
      {
         return mX;
      }
      
      public function get y() : Number
      {
         return mY;
      }
      
      public function get scale() : Number
      {
         return this.mScale;
      }
      
      public function get id() : int
      {
         return this.mId;
      }
      
      public function get isDestroyable() : Boolean
      {
         return this.mDefence >= 0;
      }
      
      public function get defence() : Number
      {
         return this.mDefence;
      }
      
      public function get isConcreteObject() : Boolean
      {
         return this.mIsConcreteObject;
      }
      
      public function set isConcreteObject(param1:Boolean) : void
      {
         this.mIsConcreteObject = param1;
      }
      
      public function get timeSinceCollisionMilliSeconds() : Number
      {
         return this.mTimeSinceCollisionMilliSeconds;
      }
      
      public function get destroysCollidingObjects() : Boolean
      {
         return false;
      }
      
      public function get destroyedOnCollision() : Boolean
      {
         return this.mDestroyedOnCollision;
      }
      
      public function set destroyedOnCollision(param1:Boolean) : void
      {
         this.mDestroyedOnCollision = param1;
      }
      
      public function get notDamageAwarding() : Boolean
      {
         return this.mNotDamageAwarding;
      }
      
      public function set notDamageAwarding(param1:Boolean) : void
      {
         this.mNotDamageAwarding = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function get renderer() : LevelObjectRenderer
      {
         return this.mRenderer;
      }
      
      public final function assignId(param1:int) : void
      {
         if(!this.mIdSet)
         {
            this.mIdSet = true;
            this.mId = param1;
            return;
         }
         throw new Error("Trying to assign LevelObject id twice !!!");
      }
      
      protected function initializeHealth(param1:Number) : void
      {
         if(param1 < 1)
         {
            param1 = 1;
         }
         this.mHealthMax = param1;
         this.mHealth = param1;
      }
      
      protected function decreaseHealth(param1:Number) : void
      {
         if(param1 < 0)
         {
            this.mHealth += param1;
         }
      }
      
      protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = this.createBodyDefinition(param1,param2);
         mB2Body = mWorld.CreateBody(_loc3_);
         mB2Body.SetUserData(this);
         mFixture = this.createFixture();
         var _loc4_:b2FilterData = this.createFilterData();
         if(!mLevelItem.isColliding)
         {
            _loc4_.maskBits = 0;
         }
         this.setFilterData(_loc4_);
      }
      
      protected function createFixture() : b2Fixture
      {
         var _loc1_:b2Fixture = mB2Body.CreateFixture2(mLevelItem.shape.getB2Shape(),mLevelItem.getItemDensity());
         _loc1_.SetFriction(mLevelItem.getItemFriction());
         _loc1_.SetRestitution(mLevelItem.getItemRestitution());
         return _loc1_;
      }
      
      protected function createFilterData() : b2FilterData
      {
         return new b2FilterData();
      }
      
      protected function initObjectRenderer() : LevelObjectRenderer
      {
         return new LevelObjectRenderer(this.animation,sprite);
      }
      
      public function setFilterData(param1:b2FilterData) : void
      {
         if(mFixture)
         {
            mFixture.SetFilterData(param1);
         }
      }
      
      public function replaceLevelItem(param1:LevelItem) : void
      {
         mLevelItem = param1;
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = mLevelItem.getItemBodyType();
         _loc3_.allowSleep = true;
         _loc3_.active = true;
         _loc3_.awake = true;
         _loc3_.angularDamping = 1;
         _loc3_.bullet = false;
         return _loc3_;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.mRenderer.dispose();
         this.mNextLinearVelocity = null;
         mLevelItem = null;
      }
      
      public function setAngle(param1:Number) : void
      {
         getBody().SetAngle(param1);
      }
      
      public function getAngle() : Number
      {
         return getBody().GetAngle();
      }
      
      public function setLinearVelocity(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         getBody().SetLinearVelocity(param1);
         if(param2)
         {
            this.setAngularVelocityBasedOnLinear();
         }
         if(param3)
         {
            this.setRotationBasedOnLinear();
         }
      }
      
      public function setLinearVelocityForEndOfUpdateCycle(param1:b2Vec2) : void
      {
         this.mNextLinearVelocity = param1;
      }
      
      private function applyNextLinearVelocity() : void
      {
         if(this.mNextLinearVelocity)
         {
            this.setLinearVelocity(this.mNextLinearVelocity,false);
            this.mNextLinearVelocity = null;
         }
      }
      
      private function storeCurrentLinearVelocity() : void
      {
         if(mB2Body)
         {
            this.mPreviousLinearVelocity.SetV(mB2Body.GetLinearVelocity());
         }
      }
      
      public function getPreviousLinearVelocity() : b2Vec2
      {
         return this.mPreviousLinearVelocity;
      }
      
      public function setAngularVelocityBasedOnLinear(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = getBody().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            getBody().SetAngularVelocity(0);
         }
         else
         {
            getBody().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function setRotationBasedOnLinear(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = getBody().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x);
         this.setAngle(_loc2_);
      }
      
      public function setAngularVelocity(param1:Number) : void
      {
         getBody().SetAngularVelocity(param1);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.mRenderer.update(param1);
         sprite.x = mX;
         sprite.y = mY;
         sprite.rotation = mRotation;
      }
      
      override public function update(param1:Number, param2:ILevelObjectUpdateManager) : void
      {
         this.applyNextLinearVelocity();
         super.update(param1,param2);
         if(this.mTimeSinceCollisionMilliSeconds >= 0)
         {
            this.mTimeSinceCollisionMilliSeconds += param1;
         }
         this.storeCurrentLinearVelocity();
      }
      
      public function updateOutOfBounds(param1:ILevelObjectUpdateManager) : void
      {
         this.mOutOfBounds = true;
      }
      
      public function updateBeforeRemoving(param1:ILevelObjectUpdateManager) : void
      {
         if(!this.mOutOfBounds)
         {
            this.addDestructionParticles(param1);
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.health == 0;
      }
      
      public function isTexture() : Boolean
      {
         return this.mItemType == LevelItem.ITEM_TYPE_TEXTURE;
      }
      
      public function isGround() : Boolean
      {
         return this.mItemType == LevelItem.ITEM_TYPE_BORDER;
      }
      
      public function isTnt() : Boolean
      {
         if(this.itemName == "MISC_EXPLOSIVE_TNT" || this.itemName == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function isDamageAwardingScore() : Boolean
      {
         return false;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function getSpeedVectorMagnitude() : Number
      {
         return Number(Math.sqrt(getBody().GetLinearVelocity().x * getBody().GetLinearVelocity().x + getBody().GetLinearVelocity().y * getBody().GetLinearVelocity().y));
      }
      
      protected function handleInitialCollision() : void
      {
         this.mTimeSinceCollisionMilliSeconds = 0;
      }
      
      protected function handleAnotherCollision() : void
      {
      }
      
      protected function playDestroyedSound() : void
      {
         this.playSoundEffect(LevelItemSoundResource.SOUND_DESTROYED);
      }
      
      protected function playDamagedSound() : void
      {
         this.playSoundEffect(LevelItemSoundResource.SOUND_DAMAGED);
      }
      
      protected function playCollisionSound() : void
      {
         this.playSoundEffect(LevelItemSoundResource.SOUND_CLICKED);
      }
      
      public function applyDamage(param1:Number, param2:ILevelObjectUpdateManager, param3:LevelObject, param4:Boolean = true) : Number
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(this.mTimeSinceCollisionMilliSeconds < 0)
         {
            this.handleInitialCollision();
         }
         else
         {
            this.handleAnotherCollision();
         }
         if(this.mDefence < 0 || this.mDefence >= 1000000)
         {
            if(param1 > 30)
            {
               this.playDestroyedSound();
            }
            else if(param1 > 12)
            {
               this.playDamagedSound();
            }
            else if(param1 > 3)
            {
               this.playCollisionSound();
            }
            return this.mHealth;
         }
         if(param1 <= this.mDefence)
         {
            if(param1 > 3)
            {
               this.playCollisionSound();
            }
            return this.mHealth;
         }
         param1 -= this.mDefence;
         if(param4 && this.isDamageAwardingScore())
         {
            _loc6_ = _loc5_ = Math.min(this.mHealth,int(param1));
            if(param2)
            {
               _loc6_ *= param2.damageScoreMultiplier;
            }
            param2.addScore(_loc6_,ScoreCollector.SCORE_TYPE_DAMAGE,this.mHealth > param1,getBody().GetPosition().x,getBody().GetPosition().y,LevelParticle.getTextMaterialFromEngineMaterial(this.itemName));
         }
         this.mHealth -= param1;
         if(this.mHealth < 1)
         {
            this.mHealth = 0;
            this.playDestroyedSound();
         }
         else
         {
            this.playDamagedSound();
         }
         if(this.setDamageState(1 - this.health / this.healthMax,param2))
         {
            this.addDamageParticles(param2,param1);
         }
         return this.mHealth;
      }
      
      protected function setDamageState(param1:Number, param2:ILevelObjectUpdateManager) : Boolean
      {
         return this.mRenderer.setDamageState(param1,false);
      }
      
      public function causedDamageToObjects() : void
      {
      }
      
      public function playSoundEffect(param1:int) : void
      {
         LevelObject.playSoundEffectStatic(param1,mLevelItem.soundResource);
      }
      
      public function getDamageFactor(param1:String) : Number
      {
         return mLevelItem.getDamageMultiplier(param1) * this.mPowerUpDamageMultiplier;
      }
      
      public function getVelocityFactor(param1:String) : Number
      {
         return mLevelItem.getVelocityMultiplier(param1);
      }
      
      public function getMaterialName() : String
      {
         return mLevelItem.materialName;
      }
      
      public function getStrength() : Number
      {
         return mLevelItem.getItemStrength();
      }
      
      public function isFastEnoughToDamage() : Boolean
      {
         return getBody().IsAwake() && (this is LevelObjectBird && this.mHealth == this.mHealthMax || Math.abs(getBody().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(getBody().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(getBody().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function considerSleeping() : Boolean
      {
         if(!getBody().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(getBody().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(getBody().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(getBody().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 10)
         {
            return false;
         }
         return true;
      }
      
      public function setPowerUpDamageMultiplier(param1:Number = 3) : void
      {
         this.mPowerUpDamageMultiplier = param1;
      }
      
      public function getVolume(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(mLevelItem.getItemBodyType() == LevelItemMaterial.BODY_TYPE_STATIC)
         {
            _loc2_ = this.mRenderer.width * this.mRenderer.height * (LevelMain.PIXEL_TO_B2_SCALE * LevelMain.PIXEL_TO_B2_SCALE);
         }
         else
         {
            _loc2_ = getBody().GetMass() / mFixture.GetDensity();
            if(param1)
            {
               _loc2_ *= this.getWidthHeightMultiplier();
            }
         }
         return _loc2_;
      }
      
      public function getWidthHeightMultiplier() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.mRenderer.widthHeightRatio - 1) / 10);
      }
      
      public function speedUpObject(param1:Number) : void
      {
         var _loc2_:Number = getBody().GetLinearVelocity().x;
         var _loc3_:Number = getBody().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         getBody().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      protected function addTrail(param1:ILevelObjectUpdateManager) : Boolean
      {
         return this.isLeavingTrail;
      }
      
      public function get isLeavingTrail() : Boolean
      {
         return false;
      }
      
      public function set isLeavingTrail(param1:Boolean) : void
      {
      }
      
      protected function addDestructionParticles(param1:ILevelObjectUpdateManager) : void
      {
      }
      
      public function addDamageParticles(param1:ILevelObjectUpdateManager, param2:int) : void
      {
      }
      
      override protected function updateGravityFilter() : void
      {
         switch(mGravityFilter)
         {
            case GravityFilterCategory.FORCE_OBJECT:
               mB2Body.SetLinearDamping(Tuner.DEFAULT_FORCE_DRAG);
               mB2Body.SetAngularDamping(Tuner.DEFAULT_FORCE_ANGULAR_DRAG);
               mB2Body.SetGravityScale(0);
               break;
            case GravityFilterCategory.YODA_FORCE_OBJECT:
               mB2Body.SetLinearDamping(Tuner.DEFAULT_YODA_DRAG);
               mB2Body.SetAngularDamping(Tuner.DEFAULT_YODA_ANGULAR_DRAG);
               mB2Body.SetGravityScale(0);
               break;
            case GravityFilterCategory.LEIA_FORCE_OBJECT:
               break;
            default:
               super.updateGravityFilter();
         }
      }
      
      public function moveToDirection(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = getBody().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         getBody().SetPosition(_loc4_);
      }
      
      public function performTriggerAction(param1:String, param2:String, param3:ILevelObjectUpdateManager) : void
      {
         switch(param1)
         {
            case "removeGravityFilterCategory":
               gravityFilter = -1;
         }
      }
   }
}
