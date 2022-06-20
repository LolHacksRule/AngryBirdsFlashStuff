package com.angrybirds.engine.objects
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.item.CircleShapeDefinition;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.item.LevelItemMaterial;
   import com.angrybirds.data.level.item.LevelItemSoundResource;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.data.level.object.LevelObjectModelBehaviorData;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.engine.ScoreCollector;
   import com.angrybirds.engine.Tuner;
   import com.angrybirds.engine.data.CollisionEffect;
   import com.angrybirds.engine.leveleventmanager.ILevelEventSubscriber;
   import com.angrybirds.engine.leveleventmanager.LevelEvent;
   import com.angrybirds.engine.leveleventmanager.LevelEventPublisher;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import com.rovio.sound.SoundEffect;
   import com.rovio.sound.SoundEngine;
   import com.rovio.tween.ISimpleTween;
   import com.rovio.tween.TweenManager;
   import flash.geom.Point;
   import starling.display.DisplayObject;
   import starling.display.Sprite;
   
   public class LevelObject extends LevelObjectInterpolated implements IAnimationListener, ILevelEventSubscriber
   {
      
      public static const Z_NOT_SET:Number = -1;
      
      public static const Z_ORDER_DEFAULT:Number = 20;
      
      public static const Z_ORDER_FRONT:Number = 100;
      
      public static const ANIMATION_CREATION:String = "creation";
      
      public static const ANIMATION_NORMAL:String = "normal";
      
      public static const ANIMATION_BLINK:String = "blink";
      
      public static const ANIMATION_SCREAM:String = "yell";
      
      public static const ANIMATION_SLIPPING:String = "slipping";
      
      private static const ANIMATIONS:Array = [ANIMATION_BLINK,ANIMATION_SCREAM,ANIMATION_SLIPPING];
      
      public static const SCREAM_TIME:Number = 1000;
      
      public static const BLINK_TIME:Number = 500;
      
      protected static const MIN_SLIPPING_ANIMATION_PLAY_TIME:int = 1000;
      
      public static const LEVEL_START_DELAY:uint = 3000;
      
      public static const BIRD_BIT_CATEGORY:uint = 1 << 1;
      
      public static const WHITE_BIRD_EGG_BIT_CATEGORY:uint = 1 << 2;
      
      public static const GROUND_BIT_CATEGORY:uint = 1 << 3;
      
      public static const MIGHTY_EAGLE_BIT_CATEGORY:uint = 1 << 4;
      
      public static const AMMO_BIT_CATEGORY:uint = 1 << 5;
      
      public static const PARACHUTE_BIT_CATEGORY:uint = 1 << 6;
      
      private static const COLLISION_EFFECT_START_TIME:int = 200;
      
      public static var TRAIL_PARTICLE_DEFAULT_COUNT:int = 4;
      
      public static var TRAIL_PARTICLE_BASE_SPEED:int = 12;
      
      private static const BUBBLE_DAMAGE_BASIC:int = 1;
       
      
      protected var mScreamTime:Number = -1.0;
      
      protected var mBlinkTime:Number = -1.0;
      
      private var mCreating:Boolean = false;
      
      protected var mSlippingAnimationTimer:int = 0;
      
      private var mLevelStartTimer:Number = 0;
      
      private var mObjectShape:int;
      
      private var mItemType:int;
      
      private var mNextLinearVelocity:b2Vec2;
      
      private var mPreviousLinearVelocity:b2Vec2;
      
      private var mHealth:Number;
      
      private var mHealthMax:Number;
      
      private var mDefence:Number;
      
      private var mDisableBirdPassThrough:Boolean;
      
      private var mDisableCameraShakeOnCollision:Boolean = false;
      
      protected var mPowerUpDamageMultipliers:Object;
      
      protected var mPowerUpVelocityMultipliers:Object;
      
      protected var mPowerUpSuperSeedUsed:Boolean;
      
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
      
      private var mCreationInitiated:Boolean;
      
      private var mLevelEventPublisher:LevelEventPublisher;
      
      private var mRegisteredEvents:Vector.<String>;
      
      private var mIsInPortalQueue:Boolean;
      
      private var mCollisionCount:int = 0;
      
      private var mCollisionEffectTimer:int;
      
      protected var mMetaDataObject:Object;
      
      private var mDestructionBlockParticleName:String = "Effect_Block_Destruction_Core";
      
      private var mCollisionEffect:CollisionEffect;
      
      protected var mNextParticleIndex:int = 0;
      
      protected var mIsLeavingTrail:Boolean = false;
      
      protected var mTrailParticleNames:Array;
      
      protected var mTrailParticleCount:int;
      
      private var mTrailSpecial:Boolean = false;
      
      private var mTimeSinceParticleSpawn:Number = 0;
      
      private var mLevelEndCheckPerformed:Boolean;
      
      private var mInBubble:Boolean = false;
      
      private var mBubbleGraphicsAdded:Boolean = false;
      
      private var mBubbleAntiGravityTimer:Number = 0;
      
      private var mBubbleAntiGravityFloatX:Number;
      
      private var mBubbleAntiGravityFloatY:Number;
      
      private var mBubbleGraphic:DisplayObject;
      
      private var mBubbleGraphicsTween:ISimpleTween;
      
      private var mReturningFromPauseMenu:Boolean = false;
      
      public function LevelObject(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number)
      {
         this.mPreviousLinearVelocity = new b2Vec2();
         this.mRegisteredEvents = new Vector.<String>();
         super(sprite,world,levelItem,levelObjectModel);
         this.mCreationInitiated = false;
         this.mAnimation = animation;
         this.mScale = scale;
         this.mItemType = mLevelItem.itemType;
         sprite.scaleX = scale;
         sprite.scaleY = scale;
         this.mRenderer = this.initObjectRenderer();
         this.mRenderer.animationListener = this;
         this.mRenderer.calculateWidthHeightRatio(mLevelItem.shape is CircleShapeDefinition);
         this.mIsInPortalQueue = false;
         this.createPhysicsBody(mLevelObjectModel.x,mLevelObjectModel.y);
         gravityFilter = levelObjectModel.gravityFilter;
         this.mDefence = mLevelItem.getItemDefence();
         if(mLevelItem.maxStrength > 0)
         {
            this.initializeHealth(mLevelItem.maxStrength);
         }
         else
         {
            this.initializeHealth(Math.round(this.getVolume(true) * mLevelItem.getItemStrength()));
         }
         if(mLevelItem.itemType == LevelItem.ITEM_TYPE_BORDER)
         {
            sprite.visible = false;
         }
         else
         {
            this.setDamageState(0,null);
         }
         if(levelObjectModel.angle != 0)
         {
            this.setAngle(levelObjectModel.angle * (Math.PI / 180));
         }
         this.disableBirdPassThrough = mLevelItem.disableBirdPassThrough;
         this.update(0,null);
         this.render(0,1,0);
         this.mRenderer.calculateImagePivotFromShapeObject(mLevelItem.shape);
         this.mLevelStartTimer = LEVEL_START_DELAY;
         this.mMetaDataObject = new Object();
         this.mTrailParticleCount = TRAIL_PARTICLE_DEFAULT_COUNT;
         this.mLevelEndCheckPerformed = false;
      }
      
      public function get health() : Number
      {
         return this.mHealth;
      }
      
      public function set health(health:Number) : void
      {
         this.mHealth = health;
      }
      
      public function get disableBirdPassThrough() : Boolean
      {
         return this.mDisableBirdPassThrough;
      }
      
      public function set disableBirdPassThrough(value:Boolean) : void
      {
         this.mDisableBirdPassThrough = value;
      }
      
      public function get disableCameraShakeOnCollision() : Boolean
      {
         return this.mDisableCameraShakeOnCollision;
      }
      
      public function set disableCameraShakeOnCollision(value:Boolean) : void
      {
         this.mDisableCameraShakeOnCollision = value;
      }
      
      public function get healthMax() : Number
      {
         return this.mHealthMax;
      }
      
      public function set healthMax(value:Number) : void
      {
         this.mHealthMax = value;
      }
      
      public function get itemName() : String
      {
         if(mLevelItem)
         {
            return mLevelItem.itemName;
         }
         return "";
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
      
      public function set isConcreteObject(val:Boolean) : void
      {
         this.mIsConcreteObject = val;
      }
      
      public function get timeSinceCollisionMilliSeconds() : Number
      {
         return this.mTimeSinceCollisionMilliSeconds;
      }
      
      public function get hasSpecialBehavior() : Boolean
      {
         return mLevelObjectModel.hasSpecialBehavior;
      }
      
      public function get destroysCollidingObjects() : Boolean
      {
         return false;
      }
      
      public function get destroyedOnCollision() : Boolean
      {
         return this.mDestroyedOnCollision;
      }
      
      public function set destroyedOnCollision(destroy:Boolean) : void
      {
         this.mDestroyedOnCollision = destroy;
      }
      
      public function get notDamageAwarding() : Boolean
      {
         return this.mNotDamageAwarding;
      }
      
      public function set notDamageAwarding(awardDamage:Boolean) : void
      {
         this.mNotDamageAwarding = awardDamage;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function get renderer() : LevelObjectRenderer
      {
         return this.mRenderer;
      }
      
      public function setLinearForce(linearForce:b2Vec2) : void
      {
         mLevelObjectModel.linearForce = linearForce;
      }
      
      public function getLinearForce() : b2Vec2
      {
         return mLevelObjectModel.linearForce;
      }
      
      public function applyLinearForce() : void
      {
         if(mLevelObjectModel.linearForce)
         {
            mB2Body.ApplyForce(new b2Vec2(mLevelObjectModel.linearForce.x * mB2Body.GetMass(),mLevelObjectModel.linearForce.y * mB2Body.GetMass()),mB2Body.GetWorldCenter());
         }
      }
      
      public final function assignId(id:int) : void
      {
         if(!this.mIdSet)
         {
            this.mIdSet = true;
            this.mId = id;
            return;
         }
         throw new Error("Trying to assign LevelObject id twice !!!");
      }
      
      public function applyUndoProperties() : void
      {
         var damage:Number = mLevelItem.maxStrength - levelObjectModel.health;
         this.applyDamage(damage,null,null,false);
         getBody().SetAngularDamping(levelObjectModel.angularDamping);
         getBody().SetLinearDamping(levelObjectModel.linearDamping);
         getBody().SetAngularVelocity(levelObjectModel.angularVelocity);
         if(levelObjectModel.linearForce != null)
         {
            this.setLinearForce(levelObjectModel.linearForce);
         }
         getBody().SetAwake(true);
      }
      
      protected function initializeHealth(health:Number) : void
      {
         if(health < 1)
         {
            health = 1;
         }
         this.mHealthMax = health;
         this.mHealth = health;
      }
      
      protected function decreaseHealth(change:Number) : void
      {
         if(change < 0)
         {
            this.mHealth += change;
         }
      }
      
      public function setBody(body:b2Body) : void
      {
         if(mWorld && mB2Body)
         {
            mWorld.DestroyBody(mB2Body);
         }
         mB2Body = body;
         mB2Body.SetUserData(this);
         mFixture = this.createFixture();
         var filterData:b2FilterData = this.createFilterData();
         if(!mLevelItem.isColliding)
         {
            filterData.maskBits = 0;
         }
         this.setFilterData(filterData);
      }
      
      protected function createPhysicsBody(x:Number, y:Number) : void
      {
         var bd:b2BodyDef = this.createBodyDefinition(x,y);
         mB2Body = mWorld.CreateBody(bd);
         mB2Body.SetUserData(this);
         mFixture = this.createFixture();
         var filterData:b2FilterData = this.createFilterData();
         if(!mLevelItem.isColliding)
         {
            filterData.maskBits = 0;
         }
         this.setFilterData(filterData);
      }
      
      protected function createFixture() : b2Fixture
      {
         var fixture:b2Fixture = mB2Body.CreateFixture2(mLevelItem.shape.getB2Shape(this.mScale),mLevelItem.getItemDensity());
         fixture.SetFriction(mLevelItem.getItemFriction());
         fixture.SetRestitution(mLevelItem.getItemRestitution());
         return fixture;
      }
      
      protected function createFilterData() : b2FilterData
      {
         return new b2FilterData();
      }
      
      protected function initObjectRenderer() : LevelObjectRenderer
      {
         return new LevelObjectRenderer(this.animation,sprite);
      }
      
      public function setFilterData(filterData:b2FilterData) : void
      {
         if(mFixture)
         {
            mFixture.SetFilterData(filterData);
         }
      }
      
      public function getFilterData() : b2FilterData
      {
         if(mFixture)
         {
            return mFixture.GetFilterData();
         }
         return null;
      }
      
      public function replaceLevelItem(levelItem:LevelItem) : void
      {
         mLevelItem = levelItem;
      }
      
      protected function createBodyDefinition(x:Number, y:Number) : b2BodyDef
      {
         var bodyDefinition:b2BodyDef = new b2BodyDef();
         bodyDefinition.position.x = x;
         bodyDefinition.position.y = y;
         bodyDefinition.type = mLevelItem.getItemBodyType();
         bodyDefinition.allowSleep = true;
         bodyDefinition.active = true;
         bodyDefinition.awake = true;
         bodyDefinition.angularDamping = 1;
         bodyDefinition.bullet = false;
         return bodyDefinition;
      }
      
      override public function dispose(b:Boolean = true) : void
      {
         super.dispose(b);
         this.deRegisterForLevelEvents();
         this.mRenderer.dispose();
         this.mNextLinearVelocity = null;
         mLevelItem = null;
         if(this.mBubbleGraphicsTween)
         {
            this.mBubbleGraphicsTween.stop();
            this.mBubbleGraphicsTween = null;
         }
      }
      
      public function setAngle(angleRadians:Number) : void
      {
         getBody().SetAngle(angleRadians);
      }
      
      public function getAngle() : Number
      {
         return getBody().GetAngle();
      }
      
      public function applyLinearVelocity(linearVelocity:b2Vec2, applyAngularVelocity:Boolean = false, applyRotationTowards:Boolean = false) : void
      {
         if(!linearVelocity || linearVelocity.x == 0 && linearVelocity.y == 0)
         {
            return;
         }
         getBody().SetLinearVelocity(linearVelocity);
         if(applyAngularVelocity)
         {
            this.setAngularVelocityBasedOnLinear();
         }
         if(applyRotationTowards)
         {
            this.setRotationBasedOnLinear();
         }
      }
      
      public function setLinearVelocityForEndOfUpdateCycle(linearVelocity:b2Vec2) : void
      {
         this.mNextLinearVelocity = linearVelocity;
      }
      
      private function applyNextLinearVelocity() : void
      {
         if(this.mNextLinearVelocity)
         {
            this.applyLinearVelocity(this.mNextLinearVelocity,false);
            this.mNextLinearVelocity = null;
         }
      }
      
      protected function storeCurrentLinearVelocity() : void
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
      
      public function setAngularVelocityBasedOnLinear(v:b2Vec2 = null) : void
      {
         if(!v)
         {
            v = getBody().GetLinearVelocity();
         }
         if(v.x == 0 && v.y == 0)
         {
            getBody().SetAngularVelocity(0);
         }
         else
         {
            getBody().SetAngularVelocity(Math.atan2(v.x,v.y));
         }
      }
      
      public function setRotationBasedOnLinear(v:b2Vec2 = null) : void
      {
         if(!v)
         {
            v = getBody().GetLinearVelocity();
         }
         var angle:Number = Math.atan2(-v.y,v.x);
         this.setAngle(angle);
      }
      
      public function setAngularVelocity(angularVelocity:Number) : void
      {
         getBody().SetAngularVelocity(angularVelocity);
      }
      
      override public function render(deltaTimeMilliSeconds:Number, worldStepMilliSeconds:Number, worldTimeOffsetMilliSeconds:Number) : void
      {
         if(this.isScreaming)
         {
            this.mScreamTime -= deltaTimeMilliSeconds;
         }
         if(this.isBlinking)
         {
            this.mBlinkTime -= deltaTimeMilliSeconds;
         }
         if(this.isSlipping)
         {
            this.mSlippingAnimationTimer -= deltaTimeMilliSeconds;
            this.playSlippingSound();
         }
         if(this.isRolling)
         {
            this.playRollingSound();
         }
         if(this.isNormal)
         {
            this.normalize();
         }
         super.render(deltaTimeMilliSeconds,worldStepMilliSeconds,worldTimeOffsetMilliSeconds);
         this.mRenderer.update(deltaTimeMilliSeconds);
         sprite.x = mX;
         sprite.y = mY;
         sprite.rotation = mRotation;
         if(backgroundSprite)
         {
            backgroundSprite.x = mX;
            backgroundSprite.y = mY;
            backgroundSprite.rotation = mRotation;
         }
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         this.applyNextLinearVelocity();
         super.update(deltaTimeMilliSeconds,updateManager);
         if(this.mTimeSinceCollisionMilliSeconds >= 0)
         {
            this.mTimeSinceCollisionMilliSeconds += deltaTimeMilliSeconds;
         }
         this.storeCurrentLinearVelocity();
         this.applyLinearForce();
         if(this.mLevelStartTimer > 0)
         {
            this.mLevelStartTimer -= deltaTimeMilliSeconds;
         }
         else
         {
            this.activateSlipping();
         }
         if(this.mCollisionEffectTimer > 0)
         {
            this.mCollisionEffectTimer -= deltaTimeMilliSeconds;
         }
         this.addTrail(updateManager);
         this.updateBubble(deltaTimeMilliSeconds);
         if(mLevelItem.spawnParticlesDefinition && mLevelItem.spawnParticlesDefinition.frequencyInSeconds)
         {
            this.mTimeSinceParticleSpawn = Math.min(mLevelItem.spawnParticlesDefinition.frequencyInSeconds * 5,this.mTimeSinceParticleSpawn + deltaTimeMilliSeconds);
            while(this.mTimeSinceParticleSpawn >= mLevelItem.spawnParticlesDefinition.frequencyInSeconds)
            {
               this.mTimeSinceParticleSpawn -= mLevelItem.spawnParticlesDefinition.frequencyInSeconds;
               this.spawnParticle(mLevelItem.spawnParticlesDefinition.particleName);
            }
         }
      }
      
      public function updateOutOfBounds(updateManager:ILevelObjectUpdateManager) : void
      {
         this.mOutOfBounds = true;
      }
      
      public function updateBeforeRemoving(updateManager:ILevelObjectUpdateManager, countScore:Boolean) : void
      {
         var currentStrength:Number = NaN;
         var newStrength:Number = NaN;
         var scoreChange:Number = NaN;
         var previousScore:Number = NaN;
         var newScore:Number = NaN;
         if(!updateManager)
         {
            return;
         }
         if(!this.mOutOfBounds)
         {
            this.addDestructionParticles(updateManager);
         }
         if(this.mHealth > 0)
         {
            this.playDestroyedSound();
            if(this.isDamageAwardingScore() && countScore)
            {
               currentStrength = this.mHealth;
               newStrength = 0;
               scoreChange = 0;
               if(mLevelItem.maxStrength > 0)
               {
                  previousScore = Math.floor(mLevelItem.damageScore * ((mLevelItem.maxStrength - currentStrength) / mLevelItem.maxStrength));
                  newScore = Math.floor(mLevelItem.damageScore * ((mLevelItem.maxStrength - newStrength) / mLevelItem.maxStrength));
                  scoreChange = newScore - previousScore;
               }
               if(scoreChange > 0)
               {
                  updateManager.addScore(scoreChange,ScoreCollector.SCORE_TYPE_DAMAGE,true,getBody().GetPosition().x,getBody().GetPosition().y,LevelParticle.getTextMaterialFromEngineMaterial(this.itemName),mLevelItem.floatingScoreFont);
               }
            }
         }
         this.explodeBeforeRemoving(updateManager);
         this.spawnBlock(updateManager);
      }
      
      protected function explodeBeforeRemoving(updateManager:ILevelObjectUpdateManager) : void
      {
         var x:Number = NaN;
         var y:Number = NaN;
         if(mLevelItem.specialty == "BOMB")
         {
            x = getBody().GetPosition().x;
            y = getBody().GetPosition().y;
            if(updateManager)
            {
               updateManager.addCustomExplosion(x,y,mLevelItem.explosionRadius,mLevelItem.explosionForce,mLevelItem.explosionDamageRadius,mLevelItem.explosionDamage);
            }
         }
      }
      
      protected function spawnBlock(updateManager:ILevelObjectUpdateManager) : void
      {
         var spawnAudios:Array = null;
         var i:int = 0;
         var angle:Number = NaN;
         var dirX:Number = NaN;
         var dirY:Number = NaN;
         var speed:Number = NaN;
         var pos:b2Vec2 = null;
         var fireBlockSpark:LevelObject = null;
         var spawnSound:String = null;
         var playedSoundEffect:SoundEffect = null;
         var playedSoundEffectChannelName:String = null;
         var resource:LevelItemSoundResource = null;
         if(mLevelItem.spawnBlockDefinition)
         {
            spawnAudios = new Array();
            for(i = 0; i < mLevelItem.spawnBlockDefinition.spawnCount; i++)
            {
               angle = i / mLevelItem.spawnBlockDefinition.spawnCount * Math.PI;
               dirX = Math.cos(-angle);
               dirY = Math.sin(-angle);
               speed = mLevelItem.spawnBlockDefinition.spawnMinSpeed + (mLevelItem.spawnBlockDefinition.spawnMaxSpeed - mLevelItem.spawnBlockDefinition.spawnMinSpeed) * Math.random();
               pos = getBody().GetPosition();
               fireBlockSpark = updateManager.addObject(mLevelItem.spawnBlockDefinition.spawnDefinition,pos.x + dirX * mLevelItem.spawnBlockDefinition.spawnDistance,pos.y + dirY * mLevelItem.spawnBlockDefinition.spawnDistance,0,LevelObjectManager.ID_NEXT_FREE,false,false,false,1,false,true) as LevelObject;
               fireBlockSpark.applyLinearVelocity(new b2Vec2(dirX * speed,dirY * speed));
               fireBlockSpark.setAngularVelocity(mLevelItem.spawnBlockDefinition.spawnMaxAngularSpeed * (Math.random() * 2 - 1));
               for each(spawnSound in mLevelItem.spawnBlockDefinition.spawnAudios)
               {
                  if(spawnAudios.indexOf(spawnSound) == -1)
                  {
                     spawnAudios.push(spawnSound);
                  }
               }
            }
            if(spawnAudios)
            {
               for each(spawnSound in spawnAudios)
               {
                  playedSoundEffectChannelName = SoundEngine.DEFAULT_CHANNEL_NAME;
                  if(mLevelItem.soundResource)
                  {
                     playedSoundEffect = SoundEngine.playSoundFromVariation(spawnSound,mLevelItem.soundResource.channelName);
                     playedSoundEffectChannelName = mLevelItem.soundResource.channelName;
                  }
                  else
                  {
                     playedSoundEffect = SoundEngine.playSoundFromVariation(spawnSound);
                  }
                  if(!playedSoundEffect)
                  {
                     resource = AngryBirdsEngine.smLevelMain.levelItemManager.getSoundResource(spawnSound);
                     if(resource)
                     {
                        SoundEngine.playSound(resource.getDefaultSounds(),playedSoundEffectChannelName);
                     }
                  }
               }
            }
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
      
      public function getTextureType() : String
      {
         return mLevelItem.textureType;
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
         if(this.notDamageAwarding)
         {
            return false;
         }
         return mLevelItem.isDamageAwardingScore();
      }
      
      public function isReadyToBeRemoved(deltaTime:Number) : Boolean
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
         if(gravityFilter == GravityFilterCategory.BIRD_UNAFFECTED_BY_GRAVITY)
         {
            gravityFilter = GravityFilterCategory.DEFAULT;
         }
      }
      
      protected function handleAnotherCollision() : void
      {
      }
      
      public function playLaunchSound() : void
      {
         if(!mLevelItem.soundResource)
         {
            return;
         }
         var snd:String = mLevelItem.soundResource.getLaunchSound();
         if(snd)
         {
            SoundEngine.playSound(snd,mLevelItem.soundResource.channelName);
         }
      }
      
      public function playSpecialSound() : void
      {
         if(!mLevelItem.soundResource)
         {
            return;
         }
         var snd:String = mLevelItem.soundResource.getSpecialSound();
         if(snd)
         {
            SoundEngine.playSound(snd,mLevelItem.soundResource.channelName);
         }
      }
      
      public function playDestroyedSound() : void
      {
         if(!mLevelItem.soundResource)
         {
            return;
         }
         var snd:String = mLevelItem.soundResource.getDestroyedSound();
         if(snd)
         {
            SoundEngine.playSound(snd,mLevelItem.soundResource.channelName);
         }
      }
      
      protected function playCollisionSound() : void
      {
         if(!mLevelItem.soundResource)
         {
            return;
         }
         var snd:String = mLevelItem.soundResource.getCollisionSound();
         if(snd)
         {
            SoundEngine.playSound(snd,mLevelItem.soundResource.channelName);
         }
      }
      
      protected function playDamagedSound() : void
      {
         if(!mLevelItem.soundResource)
         {
            return;
         }
         var snd:String = mLevelItem.soundResource.getDamagedSound();
         if(snd)
         {
            SoundEngine.playSound(snd,mLevelItem.soundResource.channelName);
         }
      }
      
      public function playRollingSound() : void
      {
         if(!mLevelItem.soundResource)
         {
            return;
         }
         var snd:String = mLevelItem.soundResource.getRollingSound();
         if(snd)
         {
            if(!SoundEngine.isSoundPlaying(snd,mLevelItem.soundResource.channelName))
            {
               SoundEngine.playSound(snd,mLevelItem.soundResource.channelName);
            }
         }
      }
      
      public function playIdleSound() : void
      {
         if(!mLevelItem.soundResource)
         {
            return;
         }
         var snd:String = mLevelItem.soundResource.getIdleSounds();
         if(snd)
         {
            SoundEngine.playSound(snd,mLevelItem.soundResource.channelName);
         }
      }
      
      public function playSlippingSound() : void
      {
         if(!mLevelItem.soundResource)
         {
            return;
         }
         var snd:String = mLevelItem.soundResource.getSlippingSound();
         if(snd)
         {
            SoundEngine.playSound(snd,mLevelItem.soundResource.channelName);
         }
      }
      
      public function applyDamage(damage:Number, updateManager:ILevelObjectUpdateManager, damagingObject:LevelObject, addScore:Boolean = true, ignoreDefence:Boolean = false) : Number
      {
         var scoreChange:Number = NaN;
         var previousScore:Number = NaN;
         var newScore:Number = NaN;
         if(this.mTimeSinceCollisionMilliSeconds < 0)
         {
            this.handleInitialCollision();
         }
         else
         {
            this.handleAnotherCollision();
         }
         this.playCollisionEffect(damage,updateManager);
         if(!ignoreDefence)
         {
            if(this.mDefence < 0)
            {
               if(damage > 10)
               {
                  this.playDamagedSound();
               }
               else if(damage > 3)
               {
                  this.playCollisionSound();
               }
               return this.mHealth;
            }
            if(damage <= this.mDefence)
            {
               if(damage > 10)
               {
                  this.playDamagedSound();
               }
               else if(damage > 3)
               {
                  this.playCollisionSound();
               }
               return this.mHealth;
            }
            damage -= this.mDefence;
         }
         var currentStrength:Number = this.mHealth;
         var cappedDamage:Number = Math.min(damage,currentStrength);
         var newStrength:Number = currentStrength - cappedDamage;
         if(addScore && this.isDamageAwardingScore())
         {
            scoreChange = 0;
            if(mLevelItem.maxStrength > 0)
            {
               previousScore = Math.floor(mLevelItem.damageScore * ((mLevelItem.maxStrength - currentStrength) / mLevelItem.maxStrength));
               newScore = Math.floor(mLevelItem.damageScore * ((mLevelItem.maxStrength - newStrength) / mLevelItem.maxStrength));
               scoreChange = newScore - previousScore;
            }
            if(scoreChange > 0)
            {
               updateManager.addScore(scoreChange,ScoreCollector.SCORE_TYPE_DAMAGE,this.mHealth > damage,getBody().GetPosition().x,getBody().GetPosition().y,LevelParticle.getTextMaterialFromEngineMaterial(this.itemName),mLevelItem.floatingScoreFont);
            }
         }
         this.mHealth = newStrength;
         if(this.mHealth <= 0)
         {
            this.mHealth = 0;
            this.playDestroyedSound();
         }
         else
         {
            this.playDamagedSound();
         }
         if(this.setDamageState(1 - this.health / this.healthMax,updateManager))
         {
            this.addDamageParticles(updateManager,damage);
         }
         return this.mHealth;
      }
      
      protected function setDamageState(damageState:Number, updateManager:ILevelObjectUpdateManager) : Boolean
      {
         return this.mRenderer.setDamageState(damageState,false);
      }
      
      public function causedDamageToObjects() : void
      {
      }
      
      public function getDamageFactor(targetMaterialName:String) : Number
      {
         if(this.mPowerUpDamageMultipliers)
         {
            if(this.mPowerUpDamageMultipliers.hasOwnProperty(targetMaterialName))
            {
               return this.mPowerUpDamageMultipliers[targetMaterialName];
            }
         }
         return mLevelItem.getDamageMultiplier(targetMaterialName);
      }
      
      public function getVelocityFactor(targetMaterial:String) : Number
      {
         if(this.mPowerUpVelocityMultipliers)
         {
            if(this.mPowerUpVelocityMultipliers.hasOwnProperty(targetMaterial))
            {
               return this.mPowerUpVelocityMultipliers[targetMaterial];
            }
         }
         return mLevelItem.getVelocityMultiplier(targetMaterial);
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
      
      public function setPowerUpDamageMultiplier(data:Object) : void
      {
         this.mPowerUpDamageMultipliers = data;
      }
      
      public function setPowerUpVelocityMultiplier(data:Object) : void
      {
         this.mPowerUpVelocityMultipliers = data;
      }
      
      public function setPowerUpSuperSeedUsed(value:Boolean) : void
      {
         var radius:Number = NaN;
         var newRadius:Number = NaN;
         var defaultMass:Number = NaN;
         var newDensity:Number = NaN;
         this.mPowerUpSuperSeedUsed = value;
         if(value && shape is CircleShapeDefinition)
         {
            radius = (shape as CircleShapeDefinition).radius;
            newRadius = radius * this.scale;
            defaultMass = this.getDensity() * Math.PI * radius * radius;
            newDensity = defaultMass / (Math.PI * newRadius * newRadius);
            this.setDensity(newDensity);
         }
      }
      
      public function getVolume(multiplyWithWidthHeightRatio:Boolean) : Number
      {
         var volume:Number = 0;
         if(mLevelItem.getItemBodyType() == LevelItemMaterial.BODY_TYPE_STATIC)
         {
            volume = this.mRenderer.width * this.mRenderer.height * (LevelMain.PIXEL_TO_B2_SCALE * LevelMain.PIXEL_TO_B2_SCALE);
         }
         else
         {
            volume = getBody().GetMass() / mFixture.GetDensity();
            if(multiplyWithWidthHeightRatio)
            {
               volume *= this.getWidthHeightMultiplier();
            }
            volume /= this.mScale * this.mScale;
         }
         return volume;
      }
      
      public function getWidthHeightMultiplier() : Number
      {
         var ratio:Number = 1;
         return Number(ratio - ratio / 2 * Math.min(10,this.mRenderer.widthHeightRatio - 1) / 10);
      }
      
      public function speedUpObject(newForce:Number) : void
      {
         var vectorX:Number = getBody().GetLinearVelocity().x;
         var vectorY:Number = getBody().GetLinearVelocity().y;
         var vector:Number = Math.sqrt(vectorX * vectorX + vectorY * vectorY);
         var raiseFactor:Number = 1 + newForce / vector;
         vectorX *= raiseFactor;
         vectorY *= raiseFactor;
         getBody().SetLinearVelocity(new b2Vec2(vectorX,vectorY));
      }
      
      protected function addTrail(updateManager:ILevelObjectUpdateManager) : Boolean
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
         var posX:Number = this.x * LevelMain.PIXEL_TO_B2_SCALE;
         var posY:Number = this.y * LevelMain.PIXEL_TO_B2_SCALE;
         if(this.mTrailSpecial)
         {
            updateManager.addParticle(LevelParticle.PARTICLE_NAME_BIRD_TRAIL_BIG,LevelParticleManager.PARTICLE_GROUP_TRAILS,LevelParticle.PARTICLE_TYPE_TRAIL_PARTICLE,posX,posY,-1,"",LevelParticle.PARTICLE_MATERIAL_BIRD_RED);
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
            updateManager.addParticle(particleType,LevelParticleManager.PARTICLE_GROUP_TRAILS,LevelParticle.PARTICLE_TYPE_TRAIL_PARTICLE,posX,posY,-1,"",LevelParticle.PARTICLE_MATERIAL_BIRD_RED);
         }
         this.addTrailParticles(posX,posY);
         return true;
      }
      
      public function get isLeavingTrail() : Boolean
      {
         return this.mIsLeavingTrail;
      }
      
      public function set isLeavingTrail(value:Boolean) : void
      {
         this.mIsLeavingTrail = value;
      }
      
      public function activateTrailSpecial() : void
      {
         this.mTrailSpecial = true;
      }
      
      public function isWaitingForTrailSpecial() : Boolean
      {
         return this.mTrailSpecial;
      }
      
      protected function addTrailParticles(centerXB2:Number, centerYB2:Number) : void
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
      
      public function addTrailParticleName(name:String) : void
      {
         if(!this.mTrailParticleNames)
         {
            this.mTrailParticleNames = [];
         }
         this.mTrailParticleNames.push(name);
      }
      
      public function setTrailParticleCount(value:int) : void
      {
         this.mTrailParticleCount = value;
      }
      
      protected function addDestructionParticles(updateManager:ILevelObjectUpdateManager) : void
      {
      }
      
      public function addDamageParticles(updateManager:ILevelObjectUpdateManager, damage:int) : void
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
            case GravityFilterCategory.IGNOREGRAVITY:
            case GravityFilterCategory.BIRD_UNAFFECTED_BY_GRAVITY:
               mB2Body.SetGravityScale(0);
               break;
            default:
               super.updateGravityFilter();
         }
      }
      
      public function moveToDirection(deltaTime:Number, direction:Point, speed:Number) : void
      {
         var position:b2Vec2 = getBody().GetPosition();
         position.x += direction.x * deltaTime * speed;
         position.y += direction.y * deltaTime * speed;
         getBody().SetPosition(position);
      }
      
      public function performTriggerAction(action:String, trigger:String, levelObjectManager:ILevelObjectUpdateManager) : void
      {
         switch(action)
         {
            case "removeGravityFilterCategory":
               gravityFilter = -1;
         }
      }
      
      public function get isBlinking() : Boolean
      {
         return this.mBlinkTime >= 0;
      }
      
      public function get isScreaming() : Boolean
      {
         return this.mScreamTime >= 0;
      }
      
      public function get isCreating() : Boolean
      {
         return this.mCreating;
      }
      
      public function get isSlipping() : Boolean
      {
         return this.mSlippingAnimationTimer > 0;
      }
      
      public function get isNormal() : Boolean
      {
         return !this.isBlinking && !this.isScreaming && !this.isSlipping && !this.isCreating && !this.isRolling;
      }
      
      protected function activateSlipping() : void
      {
         var slippingDirection:int = 0;
         if(!this.mRenderer.hasAnimation(ANIMATION_SLIPPING))
         {
            return;
         }
         if(!this.isSlipping)
         {
            slippingDirection = this.getMovingDirectionX();
            if(slippingDirection != 0)
            {
               this.mRenderer.setAnimation(ANIMATION_SLIPPING,false);
               this.mRenderer.flipFrames(slippingDirection == 1);
               this.mSlippingAnimationTimer = MIN_SLIPPING_ANIMATION_PLAY_TIME;
               this.mBlinkTime = -1;
               this.mScreamTime = -1;
               this.mCreating = false;
            }
         }
      }
      
      public function scream() : void
      {
         if(!this.isSlipping && !this.isCreating)
         {
            this.mScreamTime = SCREAM_TIME;
            this.mBlinkTime = -1;
            this.mRenderer.setAnimation(ANIMATION_SCREAM,false);
            this.playScreamSound();
         }
      }
      
      protected function playScreamSound() : void
      {
         if(!mLevelItem.soundResource)
         {
            return;
         }
         var snd:String = mLevelItem.soundResource.getScreamSound();
         if(snd)
         {
            SoundEngine.playSound(snd,mLevelItem.soundResource.channelName);
         }
      }
      
      public function playFearSound() : SoundEffect
      {
         return null;
      }
      
      public function blink() : void
      {
         if(!this.isSlipping && !this.isCreating)
         {
            this.mBlinkTime = BLINK_TIME;
            this.mScreamTime = -1;
            this.mRenderer.setAnimation(ANIMATION_BLINK,false);
         }
      }
      
      protected function normalize() : void
      {
         var animationName:String = ANIMATION_NORMAL;
         if(!this.mCreationInitiated)
         {
            if(this.mRenderer.hasAnimation(this.mRenderer.getStartAnimationName()))
            {
               animationName = this.mRenderer.getStartAnimationName();
               this.mRenderer.setAnimation(animationName,false);
               this.mCreating = true;
            }
            else if(this.mRenderer.hasAnimation(ANIMATION_CREATION))
            {
               animationName = ANIMATION_CREATION;
               this.mRenderer.setAnimation(animationName,false);
               this.mCreating = true;
            }
            this.mCreationInitiated = true;
         }
         else
         {
            this.mRenderer.setAnimation(animationName);
         }
      }
      
      public function playAnimationRelatedSoundEffect(animationName:String) : SoundEffect
      {
         var anim:Animation = null;
         if(this.animation)
         {
            anim = this.animation.getSubAnimation(animationName);
            if(anim && anim.soundName)
            {
               return SoundEngine.playSoundFromVariation(anim.soundName,anim.soundChannel);
            }
         }
         return null;
      }
      
      public function isAnimatable() : Boolean
      {
         if(this.animation)
         {
            return this.animation.hasAnySubAnimations(ANIMATIONS);
         }
         return false;
      }
      
      public function handleAnimationEnd(name:String, subAnimationIndex:int, subAnimationCount:int) : void
      {
         if(name == ANIMATION_CREATION || name == this.mRenderer.getStartAnimationName())
         {
            this.mCreating = false;
            this.normalize();
         }
      }
      
      public function playSound(soundName:String) : void
      {
      }
      
      public function registerForLevelEvents(levelEventPublisher:LevelEventPublisher, behaviorData:LevelObjectModelBehaviorData) : void
      {
         this.mLevelEventPublisher = levelEventPublisher;
         this.mRegisteredEvents.push(behaviorData.event);
         levelEventPublisher.register(this,behaviorData.event);
      }
      
      private function deRegisterForLevelEvents() : void
      {
         var event:String = null;
         for(var i:int = 0; i < this.mRegisteredEvents.length; i++)
         {
            event = this.mRegisteredEvents[i];
            this.mLevelEventPublisher.deRegister(this,event);
         }
      }
      
      public function onLevelEvent(event:LevelEvent) : void
      {
      }
      
      public function setToPortalQueue(value:Boolean) : void
      {
         this.mIsInPortalQueue = value;
         sprite.visible = !value;
      }
      
      public function get isInPortalQueue() : Boolean
      {
         return this.mIsInPortalQueue;
      }
      
      protected function getMovingDirectionX() : int
      {
         var xMultiplier:Number = b2Settings.b2_linearSleepTolerance * 4;
         var xSpeed:Number = getBody().GetLinearVelocity().x;
         if(xSpeed > xMultiplier)
         {
            return 1;
         }
         if(xSpeed < -xMultiplier)
         {
            return 2;
         }
         return 0;
      }
      
      protected function getMovingDirectionY() : int
      {
         var yMultiplier:Number = b2Settings.b2_linearSleepTolerance * 3;
         var ySpeed:Number = getBody().GetLinearVelocity().y;
         if(ySpeed > yMultiplier)
         {
            return 1;
         }
         if(ySpeed < -yMultiplier)
         {
            return 2;
         }
         return 0;
      }
      
      override public function collidedWith(obj:LevelObjectBase) : void
      {
         if(this.mCollisionCount == 0)
         {
            this.mCollisionEffectTimer = COLLISION_EFFECT_START_TIME;
         }
         ++this.mCollisionCount;
      }
      
      override public function collisionEnded(collidee:LevelObjectBase) : void
      {
         --this.mCollisionCount;
         if(this.mCollisionCount <= 0)
         {
            this.mCollisionCount = 0;
            this.mCollisionEffectTimer = 0;
         }
      }
      
      public function get isRolling() : Boolean
      {
         return this.mCollisionCount > 0 && this.mCollisionEffectTimer <= 0 && this.getMovingDirectionX() != 0 && mLevelItem.shape is CircleShapeDefinition;
      }
      
      public function getMetaDataObject(name:String) : Object
      {
         return this.mMetaDataObject[name];
      }
      
      public function addMetaDataObject(name:String, value:Object) : void
      {
         this.mMetaDataObject[name] = value;
      }
      
      public function get destructionBlockName() : String
      {
         return this.mDestructionBlockParticleName;
      }
      
      public function set destructionBlockName(value:String) : void
      {
         this.mDestructionBlockParticleName = value;
      }
      
      public function setRestitution(value:Number) : void
      {
         mFixture.SetRestitution(value);
      }
      
      public function getRestitution() : Number
      {
         return mFixture.GetRestitution();
      }
      
      public function setDensity(value:Number) : void
      {
         mFixture.SetDensity(value);
      }
      
      public function getDensity() : Number
      {
         return mFixture.GetDensity();
      }
      
      public function setFriction(value:Number) : void
      {
         mFixture.SetFriction(value);
      }
      
      public function getFriction() : Number
      {
         return mFixture.GetFriction();
      }
      
      public function setCollisionEffect(collisionEffect:CollisionEffect) : void
      {
         this.mCollisionEffect = collisionEffect;
      }
      
      public function getCollisionEffect() : CollisionEffect
      {
         return this.mCollisionEffect;
      }
      
      public function get isFlying() : Boolean
      {
         return false;
      }
      
      public function get canActivateSpecialPower() : Boolean
      {
         return false;
      }
      
      public function get specialPowerUsed() : Boolean
      {
         return false;
      }
      
      public function activateSpecialPower(updateManager:ILevelObjectUpdateManager, targetX:Number, targetY:Number) : Boolean
      {
         return false;
      }
      
      protected function playCollisionEffect(damage:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         if(this.mCollisionEffect)
         {
            this.mCollisionEffect.collisionActivated(damage,getBody().GetMass(),updateManager,getBody().GetPosition().x + this.mRenderer.width * 0.5 * LevelMain.PIXEL_TO_B2_SCALE,getBody().GetPosition().y + this.mRenderer.width * 0.5 * LevelMain.PIXEL_TO_B2_SCALE,getBody().GetAngle(),getBody().GetLinearVelocity());
         }
      }
      
      protected function handleLevelEndCheck() : void
      {
         if(!this.mLevelEndCheckPerformed)
         {
            AngryBirdsEngine.controller.checkForLevelEnd();
            this.mLevelEndCheckPerformed = true;
         }
      }
      
      public function get inBubble() : Boolean
      {
         return this.mInBubble;
      }
      
      public function setToBubble(bubbleTime:Number, bubbleAntiGravityFloatX:Number, bubbleAntiGravityFloatY:Number) : void
      {
         this.mInBubble = true;
         this.mBubbleAntiGravityTimer = bubbleTime;
         this.mBubbleAntiGravityFloatX = bubbleAntiGravityFloatX;
         this.mBubbleAntiGravityFloatY = bubbleAntiGravityFloatY;
         var bubbleAnim:Animation = AngryBirdsEngine.smLevelMain.animationManager.getAnimation("STELLA_BUBBLE");
         this.mBubbleGraphic = bubbleAnim.getFrame(int(Math.random() * bubbleAnim.frameCount));
         this.mBubbleGraphicsTween = TweenManager.instance.createSequenceTween(TweenManager.instance.createTween(this.mBubbleGraphic,{
            "scaleX":2.1,
            "scaleY":2.25
         },{
            "scaleX":1.9,
            "scaleY":1.75
         },0.5,TweenManager.EASING_QUAD_IN),TweenManager.instance.createTween(this.mBubbleGraphic,{
            "scaleX":1.75,
            "scaleY":1.9
         },{
            "scaleX":2.1,
            "scaleY":2.25
         },0.5,TweenManager.EASING_QUAD_OUT),TweenManager.instance.createTween(this.mBubbleGraphic,{
            "scaleX":2.25,
            "scaleY":2.1
         },{
            "scaleX":1.75,
            "scaleY":1.9
         },0.5,TweenManager.EASING_QUAD_IN),TweenManager.instance.createTween(this.mBubbleGraphic,{
            "scaleX":1.9,
            "scaleY":1.75
         },{
            "scaleX":2.25,
            "scaleY":2.1
         },0.5,TweenManager.EASING_QUAD_OUT));
         this.mBubbleGraphicsTween.stopOnComplete = false;
      }
      
      private function updateBubble(deltaTimeMilliSeconds:Number) : void
      {
         var vectorX:Number = NaN;
         var vectorY:Number = NaN;
         var antiGravityMaxVelocity:int = 0;
         if(this.mInBubble)
         {
            if(this.mBubbleAntiGravityTimer > 0)
            {
               this.mBubbleAntiGravityTimer -= deltaTimeMilliSeconds;
               vectorX = getBody().GetLinearVelocity().x;
               vectorY = getBody().GetLinearVelocity().y;
               antiGravityMaxVelocity = 10;
               if(this.getSpeedVectorMagnitude() < antiGravityMaxVelocity)
               {
                  getBody().SetAwake(true);
                  mB2Body.ApplyForce(new b2Vec2(this.mBubbleAntiGravityFloatX * getBody().GetMass(),-getBody().GetWorld().GetGravity().y * getBody().GetMass() * this.mBubbleAntiGravityFloatY),mB2Body.GetWorldCenter());
               }
            }
            else
            {
               this.mBubbleAntiGravityTimer = 0;
               this.mBubbleAntiGravityFloatX = 0;
               this.mBubbleAntiGravityFloatY = 0;
               this.mInBubble = false;
               this.createBubbleExplosionParticleSets(getBody().GetPosition().x,getBody().GetPosition().y,6);
               SoundEngine.playSoundFromVariation("pumpkin_collision_04");
               if(this is LevelObjectBird)
               {
                  this.mHealth = 0;
               }
               else if(levelItem.bubbleDamage > 0)
               {
                  this.applyDamage(levelItem.bubbleDamage,null,null,false,true);
               }
               else
               {
                  this.applyDamage(BUBBLE_DAMAGE_BASIC,null,null,false,true);
               }
            }
            if(!this.mBubbleGraphicsAdded)
            {
               this.mBubbleGraphicsTween.play();
               sprite.addChildAt(this.mBubbleGraphic,sprite.numChildren);
               this.mBubbleGraphicsAdded = true;
            }
            if(AngryBirdsEngine.isPaused)
            {
               if(!this.mReturningFromPauseMenu)
               {
                  if(this.mBubbleGraphicsTween)
                  {
                     this.mBubbleGraphicsTween.pause();
                  }
                  this.mReturningFromPauseMenu = true;
               }
            }
            else if(this.mReturningFromPauseMenu)
            {
               if(this.mBubbleGraphicsTween)
               {
                  this.mBubbleGraphicsTween.play();
               }
               this.mReturningFromPauseMenu = false;
            }
         }
         else if(this.mBubbleGraphicsAdded)
         {
            if(this.mBubbleGraphicsTween)
            {
               this.mBubbleGraphicsTween.stop();
               this.mBubbleGraphicsTween = null;
            }
            sprite.removeChild(this.mBubbleGraphic);
            this.mBubbleGraphicsAdded = false;
         }
      }
      
      protected function createBubbleExplosionParticleSets(posX:Number, posY:Number, setAmount:int) : void
      {
         var particleID:int = 0;
         for(var i:int = 0; i < setAmount; i++)
         {
            particleID = 1 + Math.random() * 6;
            AngryBirdsEngine.smLevelMain.particles.addSimpleParticle("BUBBLE_POP" + particleID,LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,posX,posY,400 + Math.random() * 200,"",LevelParticle.getParticleMaterialFromEngineMaterial("BIRD_RED"),Math.random() * 20 - 10,Math.random() * 20 - 10,5,Math.random() * 200);
         }
      }
      
      protected function spawnParticle(particleName:String) : void
      {
      }
   }
}
