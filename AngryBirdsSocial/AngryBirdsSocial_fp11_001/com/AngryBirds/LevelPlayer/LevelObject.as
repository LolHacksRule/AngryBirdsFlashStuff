package com.AngryBirds.LevelPlayer
{
   import com.AngryBirds.LevelItemsData.LevelItem;
   import com.AngryBirds.LevelItemsData.LevelItemMaterial;
   import com.AngryBirds.LevelItemsData.LevelItemResourcePathSound;
   import com.AngryBirds.LevelItemsData.LevelItemShape;
   import com.AngryBirds.LevelItemsData.LevelItems;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.factory.Log;
   import com.rovio.sound.SoundEngine;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class LevelObject extends Sprite
   {
      
      public static const BIRDS_ROTATE_WHILE_FLYING:Boolean = true;
      
      public static const BIRDS_SLEEP_TIME_BEFORE_REMOVAL:Number = 2000;
      
      public static const INTERPOLATE_DISPLAY_OBJECTS:Boolean = true;
       
      
      public var mLevelObjects:LevelObjects;
      
      public var mFixture:b2Fixture;
      
      public var mRenderer:LevelObjectRenderer;
      
      public var mObjectId:int;
      
      public var mObjectShape:int;
      
      public var mObjectName:String;
      
      public var mObjectType:int;
      
      public var mHealth:Number;
      
      public var mHealthMax:Number;
      
      public var mDefence:Number;
      
      public var mColors:Number;
      
      public var mLevelItem:LevelItem;
      
      public var mNextLinearVelocity:b2Vec2;
      
      public var mSleepingDuration:Number;
      
      private var mXScreenNext:Number;
      
      private var mYScreenNext:Number;
      
      private var mRotationScreenNext:Number;
      
      private var mXScreenPrevious:Number;
      
      private var mYScreenPrevious:Number;
      
      private var mRotationScreenPrevious:Number;
      
      public var mSpecialPowerUsed:Boolean = false;
      
      public var mTargetHorizontalSpeed:Number = 0;
      
      public var mTargetVerticalSpeed:Number = 0;
      
      public var mSelfExplosionTimer:Number = -1;
      
      public var mSelfExplosionTimerMax:Number = -1;
      
      public var mKilledByHeadshot:Boolean = false;
      
      public var mPowerUpDamageMultiplier:Number = 1;
      
      public var mInterpolationXOffset:Number = 0;
      
      public var mInterpolationYOffset:Number = 0;
      
      public var mNextParticleIndex:Number = 0;
      
      public function LevelObject(param1:LevelObjects, param2:b2World, param3:int, param4:String, param5:Number, param6:Number, param7:Number)
      {
         var _loc8_:b2BodyDef = null;
         var _loc9_:b2Body = null;
         var _loc14_:Array = null;
         var _loc15_:Array = null;
         super();
         this.mLevelItem = LevelItems.getItem(param4);
         if(this.mLevelItem == null && param4.indexOf("MISC_") == 0)
         {
            param4 = "MISC_FOOD_" + param4.substring(5);
            this.mLevelItem = LevelItems.getItem(param4);
         }
         this.mObjectName = param4;
         this.mLevelObjects = param1;
         this.mObjectId = param3;
         this.mObjectType = this.mLevelItem.mItemType;
         this.mObjectShape = this.mLevelItem.getItemShapeType();
         if(this.isTexture())
         {
            this.mLevelObjects.mTextureMask.addChild(this);
         }
         else
         {
            this.mLevelObjects.addChild(this);
         }
         this.mRenderer = new LevelObjectRenderer(this);
         if(!this.mRenderer.loadAnimation())
         {
            if(this.mObjectShape == LevelItemShape.SHAPE_TYPE_IMAGE_POLYGON || this.mObjectShape == LevelItemShape.SHAPE_TYPE_RECT)
            {
               this.mObjectShape = LevelItemShape.SHAPE_TYPE_RECT;
            }
            else if(this.mObjectShape == LevelItemShape.SHAPE_TYPE_IMAGE_CIRCLE)
            {
               this.mObjectShape = LevelItemShape.SHAPE_TYPE_CIRCLE;
            }
            this.mRenderer.setCodeDrawnObjectProperties(this.mObjectShape,this.mLevelItem.getItemColors(),this.mLevelItem.getItemWidth() / LevelMain.PIXEL_TO_B2_SCALE,this.mLevelItem.getItemHeight() / LevelMain.PIXEL_TO_B2_SCALE);
         }
         this.mRenderer.calculateWidthHeightRatio();
         (_loc8_ = new b2BodyDef()).position.Set(param5,param6);
         _loc8_.type = this.mLevelItem.getItemBodyType();
         _loc8_.allowSleep = true;
         _loc8_.active = true;
         _loc8_.awake = true;
         if(this.isBird())
         {
            _loc8_.bullet = true;
            _loc8_.angularDamping = 2;
            this.mRenderer.mTryToScream = LevelObjectRenderer.SCREAM_TIME + 1;
         }
         else
         {
            _loc8_.angularDamping = 1;
            _loc8_.bullet = false;
         }
         _loc9_ = param2.CreateBody(_loc8_);
         var _loc10_:Number = this.mRenderer.mW * LevelMain.PIXEL_TO_B2_SCALE;
         var _loc11_:Number = this.mRenderer.mH * LevelMain.PIXEL_TO_B2_SCALE;
         var _loc12_:b2PolygonShape = new b2PolygonShape();
         var _loc13_:b2CircleShape = new b2CircleShape();
         if(this.mObjectShape == LevelItemShape.SHAPE_TYPE_IMAGE_RECT)
         {
            _loc12_.SetAsArray(this.mRenderer.getCollisionRect(),4);
            this.mFixture = _loc9_.CreateFixture2(_loc12_,this.mLevelItem.getItemDensity());
         }
         else if(this.mObjectShape == LevelItemShape.SHAPE_TYPE_IMAGE_POLYGON)
         {
            _loc14_ = this.mRenderer.getCollisionVertice();
            _loc12_.SetAsArray(_loc14_,_loc14_.length);
            this.mFixture = _loc9_.CreateFixture2(_loc12_,this.mLevelItem.getItemDensity());
         }
         else if(this.mObjectShape == LevelItemShape.SHAPE_TYPE_IMAGE_CIRCLE)
         {
            _loc15_ = this.mRenderer.getCollisionCircle();
            (_loc13_ = new b2CircleShape(_loc15_[0])).SetLocalPosition(new b2Vec2(_loc15_[1],_loc15_[2]));
            this.mFixture = _loc9_.CreateFixture2(_loc13_,this.mLevelItem.getItemDensity());
         }
         else if(this.mObjectShape == LevelItemShape.SHAPE_TYPE_RECT)
         {
            _loc12_ = b2PolygonShape.AsBox(_loc10_,_loc11_);
            this.mFixture = _loc9_.CreateFixture2(_loc12_,this.mLevelItem.getItemDensity());
         }
         else if(this.mObjectShape == LevelItemShape.SHAPE_TYPE_CIRCLE)
         {
            _loc13_ = new b2CircleShape(_loc10_);
            this.mFixture = _loc9_.CreateFixture2(_loc13_,this.mLevelItem.getItemDensity());
         }
         this.mFixture.SetFriction(this.mLevelItem.getItemFriction());
         this.mFixture.SetRestitution(this.mLevelItem.getItemRestitution());
         this.mDefence = this.mLevelItem.getItemDefence();
         if(this.mLevelItem.mHealthMax > 0)
         {
            this.mHealth = this.mHealthMax = this.mLevelItem.mHealthMax;
         }
         else
         {
            this.mHealth = this.mHealthMax = this.getVolume(true) * this.mLevelItem.getItemStrenght();
         }
         if(this.mLevelItem.mItemType == LevelItem.ITEM_TYPE_BORDER)
         {
            this.mRenderer.visible = false;
         }
         else
         {
            this.mRenderer.setDamagedFrame();
         }
         if(param7 != 0)
         {
            this.setAngle(param7);
         }
         this.updateRendererMiddleOfUpdateCycle();
         this.updateRendererEndOfUpdateCycle(0,1);
         if(this.isTexture())
         {
            this.mLevelObjects.fillLevelTexture(getRect(this.mLevelObjects.mTextureMask));
         }
      }
      
      public static function playSoundEffectStatic(param1:int, param2:LevelItemResourcePathSound, param3:String = "") : void
      {
         var _loc4_:String;
         if((_loc4_ = param2.mPaths[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.mSoundChannelName;
            }
            SoundEngine.playSoundFromVariation(_loc4_,param3);
         }
      }
      
      public function kill(param1:b2World) : void
      {
         param1.DestroyBody(this.getBody());
         this.mRenderer.kill();
         graphics.clear();
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         if(this.isTexture())
         {
            this.mLevelObjects.mTextureMask.removeChild(this);
         }
         else
         {
            this.mLevelObjects.removeChild(this);
         }
         this.mFixture = null;
         this.mNextLinearVelocity = null;
         this.mLevelItem = null;
      }
      
      public function setAngle(param1:Number) : void
      {
         this.getBody().SetAngle((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function getAngle() : Number
      {
         return (360 - this.getBody().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function rotateSmooth(param1:Number = -1) : void
      {
         if(param1 != 0)
         {
            this.rotate(param1 / 10);
         }
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param2)
         {
            _loc3_ = this.getAngle();
            _loc3_ = (_loc3_ + 360) % 360;
            if((_loc4_ = _loc3_ % param1) < param1 / 2)
            {
               _loc3_ -= _loc4_;
            }
            else
            {
               _loc3_ += param1 - _loc4_;
            }
            this.setAngle(_loc3_);
         }
         this.setAngle(this.getAngle() + param1);
      }
      
      public function rotateAroundPivot(param1:Number, param2:Point) : void
      {
         this.rotate(param1,true);
         var _loc3_:b2Vec2 = this.getBody().GetPosition();
         var _loc4_:Number = _loc3_.x - param2.x;
         var _loc5_:Number = _loc3_.y - param2.y;
         if(_loc4_ == 0 && _loc5_ == 0)
         {
            return;
         }
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:Number = _loc4_ / _loc5_;
         var _loc8_:Number = Math.atan(_loc7_) * 180 / Math.PI;
         if(_loc5_ < 0)
         {
            _loc8_ += 180;
         }
         var _loc9_:Number;
         var _loc10_:Number = (_loc9_ = _loc8_ + param1) * Math.PI / 180;
         var _loc11_:Number = Math.sin(_loc10_) * _loc6_;
         var _loc12_:Number = Math.cos(_loc10_) * _loc6_;
         var _loc13_:b2Vec2 = new b2Vec2(param2.x + _loc11_,param2.y + _loc12_);
         this.getBody().SetPosition(_loc13_);
      }
      
      public function setLinearVelocity(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.getBody().SetLinearVelocity(param1);
         if(param2)
         {
            this.setAngularVelocityBasedOnLinear();
         }
         if(param3)
         {
            this.setRotationBasedOnLinear();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.mFixture.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.getBody().GetPosition().x >= param3 && this.getBody().GetPosition().x <= param4 && this.getBody().GetPosition().y >= param1 && this.getBody().GetPosition().y <= param2;
      }
      
      public function setLinearVelocityForEndOfUpdateCycle(param1:b2Vec2) : void
      {
         this.mNextLinearVelocity = param1;
      }
      
      public function applyNextLinearVelocity() : void
      {
         if(this.mNextLinearVelocity)
         {
            this.setLinearVelocity(this.mNextLinearVelocity,false);
            this.mNextLinearVelocity = null;
         }
      }
      
      public function setAngularVelocityBasedOnLinear(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.getBody().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.getBody().SetAngularVelocity(0);
         }
         else
         {
            this.getBody().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function setRotationBasedOnLinear(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.getBody().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.setAngle(_loc2_);
      }
      
      public function setAngularVelocity(param1:Number) : void
      {
         this.getBody().SetAngularVelocity(param1);
      }
      
      public function getBody() : b2Body
      {
         return this.mFixture.GetBody();
      }
      
      public function updateB2CoordinatesBasedOnPixels(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            x = param1;
            y = param2;
         }
         this.getBody().GetPosition().x = x * LevelMain.PIXEL_TO_B2_SCALE;
         this.getBody().GetPosition().y = y * LevelMain.PIXEL_TO_B2_SCALE;
      }
      
      public function updateRendererEndOfUpdateCycle(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.updateSelfExplode(param2))
         {
            _loc3_ = true;
         }
         if(this.updateSpecialFrameAnimations(param2))
         {
            _loc3_ = true;
         }
         if(this.updateFlyingFrameAnimations(param2))
         {
            _loc3_ = true;
         }
         if(this.updateScreamingFrameAnimations(param2))
         {
            _loc3_ = true;
         }
         if(this.updateBlinkingFrameAnimations(param2))
         {
            _loc3_ = true;
         }
         if(_loc3_)
         {
            this.mRenderer.setVisualState();
         }
         if(this.mPowerUpDamageMultiplier > 1 && this.mRenderer.mGlowFilter)
         {
            _loc4_ = 4 + (this.mRenderer.mGlowFilter.blurX - 4 + param2 / 20) % 28;
            this.mRenderer.mGlowFilter.blurX = _loc4_;
            this.mRenderer.mGlowFilter.blurY = _loc4_;
            this.mRenderer.filters = [this.mRenderer.mGlowFilter];
         }
         if(this.mRenderer.mSparklesContainer)
         {
            this.mRenderer.updateSparkles(param2);
         }
         if(INTERPOLATE_DISPLAY_OBJECTS)
         {
            this.interpolateRenderer(param1);
         }
         else
         {
            rotation = this.mRotationScreenNext;
            x = this.mXScreenNext;
            y = this.mYScreenNext;
         }
      }
      
      public function startSelfExplosion(param1:Number = -1) : void
      {
         this.mSelfExplosionTimer = 0;
         if(param1 >= 0)
         {
            this.mSelfExplosionTimerMax = param1;
         }
         else if(this.mObjectName == "BIRD_BLACK")
         {
            this.mSelfExplosionTimerMax = 2000;
         }
         else
         {
            this.mSelfExplosionTimerMax = 5000;
         }
      }
      
      public function updateSelfExplode(param1:Number) : Boolean
      {
         if(this.mSelfExplosionTimer >= 0)
         {
            this.mSelfExplosionTimer += param1;
            if(this.mSelfExplosionTimer > this.mSelfExplosionTimerMax)
            {
               if(this.mObjectName == "BIRD_BLACK")
               {
                  this.mLevelObjects.addExplosions(LevelObjects.EXPLOSION_TYPE_BLACK_BIRD,this.getBody().GetPosition().x,this.getBody().GetPosition().y);
               }
               else
               {
                  this.mLevelObjects.addExplosions(LevelObjects.EXPLOSION_TYPE_DEFAULT,this.getBody().GetPosition().x,this.getBody().GetPosition().y);
               }
               this.mSelfExplosionTimer = -1;
            }
            return true;
         }
         return false;
      }
      
      public function updateRendererMiddleOfUpdateCycle() : void
      {
         var _loc1_:Number = this.getBody().GetPosition().x;
         var _loc2_:Number = this.getBody().GetPosition().y;
         this.mRotationScreenPrevious = this.mRotationScreenNext;
         this.mXScreenPrevious = this.mXScreenNext;
         this.mYScreenPrevious = this.mYScreenNext;
         this.mRotationScreenNext = this.getBody().GetAngle() * (180 / Math.PI) % 360;
         this.mXScreenNext = _loc1_ / LevelMain.PIXEL_TO_B2_SCALE;
         this.mYScreenNext = _loc2_ / LevelMain.PIXEL_TO_B2_SCALE;
      }
      
      public function updateSpecialFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc2_:Boolean = false;
         if(this.isBird())
         {
            _loc3_ = false;
            if(this.mSpecialPowerUsed)
            {
               if(this.mObjectName.toUpperCase() == "BIRD_WHITE")
               {
                  _loc3_ = true;
               }
               else if(this.mObjectName.toUpperCase() == "BIRD_YELLOW" || this.mObjectName.toUpperCase() == "BIRD_GREEN" || this.mObjectName.toUpperCase() == "BIRD_RED" || this.mObjectName.toUpperCase() == "BIRD_RED_BIG")
               {
                  if(this.mRenderer.mTryToFly)
                  {
                     _loc3_ = true;
                  }
               }
               if(_loc3_)
               {
                  if(!this.mRenderer.mTryToSpecial)
                  {
                     this.mRenderer.mTryToSpecial = true;
                     _loc2_ = true;
                  }
               }
               else if(this.mRenderer.mTryToSpecial)
               {
                  this.mRenderer.mTryToSpecial = false;
                  if(this.mRenderer.mIsSpecial)
                  {
                     this.mRenderer.mIsSpecial = false;
                     _loc2_ = true;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(this.isBird() || this.isPig())
         {
            if(this.mRenderer.mTryToBlink > 0)
            {
               if(this.mRenderer.mTryToBlink >= LevelObjectRenderer.BLINK_TIME)
               {
                  _loc2_ = true;
                  if(!this.isPig())
                  {
                  }
                  this.mRenderer.mTryToBlink = LevelObjectRenderer.BLINK_TIME - 1;
               }
               this.mRenderer.mTryToBlink -= param1;
               if(this.mRenderer.mTryToBlink <= 0)
               {
                  _loc2_ = true;
               }
            }
            else if(this.mRenderer.mIsBlinking)
            {
               this.mRenderer.mTryToBlink = 0;
               this.mRenderer.mIsBlinking = false;
               _loc2_ = true;
            }
         }
         return _loc2_;
      }
      
      public function updateFlyingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(this.isBird() || this.isPig())
         {
            if(this.getBody().IsAwake() && this.mHealth == this.mHealthMax)
            {
               if(!this.mRenderer.mTryToFly)
               {
                  this.mRenderer.mTryToFly = true;
                  _loc2_ = true;
               }
               if(this.isBird())
               {
                  if(this.mObjectName.toUpperCase() == "BIRD_GREEN" && this.mSpecialPowerUsed)
                  {
                     this.setAngle(this.getAngle() - param1 * 360 / 1000);
                  }
                  else if(!(this.mObjectName.toUpperCase() == "BIRD_WHITE" && this.mSpecialPowerUsed))
                  {
                     if(BIRDS_ROTATE_WHILE_FLYING)
                     {
                        this.setRotationBasedOnLinear();
                     }
                     else
                     {
                        this.setAngle(0);
                     }
                  }
               }
            }
            else if(this.mRenderer.mTryToFly)
            {
               this.mRenderer.mTryToFly = false;
               if(this.mRenderer.mIsFlying)
               {
                  this.mRenderer.mIsFlying = false;
                  _loc2_ = true;
               }
            }
         }
         return _loc2_;
      }
      
      public function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(this.isBird() || this.isPig())
         {
            if(this.mRenderer.mTryToScream > 0)
            {
               if(this.mRenderer.mTryToScream >= LevelObjectRenderer.SCREAM_TIME)
               {
                  _loc2_ = true;
                  if(this.isBird() && this.mRenderer.mTryToFly)
                  {
                     this.playSoundEffect(LevelItemResourcePathSound.SOUND_FLYING);
                  }
                  else
                  {
                     this.playSoundEffect(LevelItemResourcePathSound.SOUND_SCREAM);
                  }
                  this.mRenderer.mTryToScream = LevelObjectRenderer.SCREAM_TIME - 1;
               }
               this.mRenderer.mTryToScream -= param1;
               if(this.mRenderer.mTryToScream <= 0)
               {
                  _loc2_ = true;
               }
               else if(this.mLevelObjects.mLevelMain.mLevelState == LevelMain.LEVEL_STATE_FAIL)
               {
               }
            }
            else if(this.mRenderer.mIsScreaming)
            {
               this.mRenderer.mTryToScream = 0;
               this.mRenderer.mIsScreaming = false;
               _loc2_ = true;
            }
         }
         return _loc2_;
      }
      
      public function interpolateRenderer(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 0)
         {
            Log.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.mLevelObjects.mLevelMain.mLevelEngine.mTimeStepForLastUpdate * 1000;
         }
         param1 *= -1;
         if(this.mXScreenNext == this.mXScreenPrevious || param1 == 0)
         {
            this.mInterpolationXOffset = 0;
            x = this.mXScreenNext;
         }
         else
         {
            this.mInterpolationXOffset = param1 * (this.mXScreenPrevious - this.mXScreenNext) / param2;
            x = this.mXScreenNext + this.mInterpolationXOffset;
         }
         if(this.mYScreenNext == this.mYScreenPrevious || param1 == 0)
         {
            this.mInterpolationYOffset = 0;
            y = this.mYScreenNext;
         }
         else
         {
            this.mInterpolationYOffset = param1 * (this.mYScreenPrevious - this.mYScreenNext) / param2;
            y = this.mYScreenNext + this.mInterpolationYOffset;
         }
         if(this.mRotationScreenNext == this.mRotationScreenPrevious || param1 == 0)
         {
            rotation = this.mRotationScreenNext;
         }
         else if(this.mRotationScreenPrevious > this.mRotationScreenNext && this.mRotationScreenPrevious - this.mRotationScreenNext <= 180)
         {
            rotation = this.mRotationScreenNext + param1 * (this.mRotationScreenPrevious - this.mRotationScreenNext) / param2;
         }
         else if(this.mRotationScreenPrevious > this.mRotationScreenNext && this.mRotationScreenPrevious - this.mRotationScreenNext > 180)
         {
            rotation = this.mRotationScreenNext + param1 * (this.mRotationScreenPrevious - 360 - this.mRotationScreenNext) / param2;
         }
         else if(this.mRotationScreenPrevious < this.mRotationScreenNext && this.mRotationScreenNext - this.mRotationScreenPrevious <= 180)
         {
            rotation = this.mRotationScreenNext + param1 * (this.mRotationScreenPrevious - this.mRotationScreenNext) / param2;
         }
         else if(this.mRotationScreenPrevious < this.mRotationScreenNext && this.mRotationScreenNext - this.mRotationScreenPrevious > 180)
         {
            rotation = this.mRotationScreenNext + param1 * (this.mRotationScreenPrevious + 360 - this.mRotationScreenNext) / param2;
         }
      }
      
      public function get boxCoordinateInBox2D() : Point
      {
         if(!INTERPOLATE_DISPLAY_OBJECTS)
         {
         }
         return null;
      }
      
      public function isBird() : Boolean
      {
         return this.mObjectType == LevelItem.ITEM_TYPE_BIRD;
      }
      
      public function isPig() : Boolean
      {
         return this.mObjectType == LevelItem.ITEM_TYPE_PIG;
      }
      
      public function isTexture() : Boolean
      {
         return this.mObjectType == LevelItem.ITEM_TYPE_TEXTURE;
      }
      
      public function isGround() : Boolean
      {
         return this.mObjectType == LevelItem.ITEM_TYPE_BORDER;
      }
      
      public function isBlock() : Boolean
      {
         return this.mObjectType == LevelItem.ITEM_TYPE_BLOCK;
      }
      
      public function isMiscBlock() : Boolean
      {
         return this.mObjectType == LevelItem.ITEM_TYPE_MISC;
      }
      
      public function isDamageAwardingScore() : Boolean
      {
         return this.isPig() || this.isBlock() || this.isMiscBlock();
      }
      
      public function isBirdReadyToBeRemoved(param1:Number) : Boolean
      {
         if(this.mObjectName == "BIRD_BLACK" && this.mSpecialPowerUsed && this.mSelfExplosionTimer < 0)
         {
            return true;
         }
         if(this.isBird() && this.considerSleeping() && this.mHealth < this.mHealthMax && this.mSelfExplosionTimer < 0)
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
      
      public function getSpeedVectorMaginitude() : Number
      {
         return Number(Math.sqrt(this.getBody().GetLinearVelocity().x * this.getBody().GetLinearVelocity().x + this.getBody().GetLinearVelocity().y * this.getBody().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false) : Number
      {
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         var _loc9_:Number = NaN;
         var _loc10_:int = 0;
         if(this.mDefence < 0)
         {
            if(param1 > 30)
            {
               this.playSoundEffect(LevelItemResourcePathSound.SOUND_DESTROYED);
            }
            else if(param1 > 12)
            {
               this.playSoundEffect(LevelItemResourcePathSound.SOUND_DAMAGED);
            }
            else if(param1 > 3)
            {
               this.playSoundEffect(LevelItemResourcePathSound.SOUND_CLICKED);
            }
            return this.mHealth;
         }
         if(param1 < this.mDefence)
         {
            if(param1 >= this.mDefence / 2)
            {
               this.playSoundEffect(LevelItemResourcePathSound.SOUND_CLICKED);
            }
            if(this.isBird() && this.mHealth == this.mHealthMax)
            {
               this.mHealth = this.mHealthMax - 1;
            }
            return this.mHealth;
         }
         param1 -= this.mDefence;
         if(param2 && this.isDamageAwardingScore())
         {
            _loc4_ = LevelMain.DAMAGE_SCORE_MULTILIER * Math.min(int(param1),int(this.mHealth));
            if(param3)
            {
               this.mLevelObjects.mLevelMain.addScore(_loc4_,this.mHealth > param1,this.getBody().GetPosition().x,this.getBody().GetPosition().y,LevelParticle.getTextMaterialFromEngineMaterial(this.mObjectName));
            }
         }
         this.mHealth -= param1;
         if(this.mLevelObjects.mLevelMain.mEditorMode)
         {
            this.mHealth = this.mHealthMax;
         }
         if(this.mObjectName.toUpperCase() == "BIRD_BLACK" && !this.mSpecialPowerUsed)
         {
            this.mSpecialPowerUsed = true;
            this.startSelfExplosion();
         }
         else if(this.mObjectName.toUpperCase() == "BIRD_WHITE" && this.mSpecialPowerUsed)
         {
            this.mHealth = this.mHealthMax - 1;
         }
         if(this.mHealth < 1 && this.isBird())
         {
            this.mHealth = 1;
         }
         if(this.mHealth < 1)
         {
            this.mHealth = 0;
            LevelObject.playSoundEffectStatic(LevelItemResourcePathSound.SOUND_DESTROYED,this.mLevelItem.mValues[LevelItem.RESOURCE_PATH_SOUND_OBJECT] as LevelItemResourcePathSound,"ChannelDestroyed");
         }
         else
         {
            this.playSoundEffect(LevelItemResourcePathSound.SOUND_DAMAGED);
            if(this.isBird())
            {
               _loc5_ = this.getSpeedVectorMaginitude() / 10;
               _loc6_ = 1 + _loc5_ * this.getVolume(false) * 0.15;
               _loc7_ = 90;
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc9_ = (_loc7_ += Math.random() * (720 / _loc6_)) / (180 / Math.PI);
                  this.mLevelObjects.mLevelMain.mLevelParticles.addParticle(LevelParticle.PARTICLE_NAME_BIRD_DESTRUCTION,LevelParticles.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,this.getBody().GetPosition().x,this.getBody().GetPosition().y,1250,"",LevelParticle.getParticleMaterialFromEngineMaterial(this.mObjectName),_loc5_ * Math.cos(_loc9_),-_loc5_ * Math.sin(_loc9_),5,_loc5_ * 20);
                  _loc8_++;
               }
            }
            else if(false && (this.isBlock() || this.isMiscBlock()))
            {
               _loc6_ = 8 * param1 / this.mHealthMax;
               _loc5_ = param1 / 10;
               _loc7_ = 90;
               _loc10_ = 0;
               while(_loc10_ < _loc6_)
               {
                  _loc9_ = (_loc7_ += Math.random() * (720 / _loc6_)) / (180 / Math.PI);
                  this.mLevelObjects.mLevelMain.mLevelParticles.addParticle(LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,LevelParticles.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,this.getBody().GetPosition().x,this.getBody().GetPosition().y,1000,"",LevelParticle.getParticleMaterialFromEngineMaterial(this.mObjectName),_loc5_ * Math.cos(_loc9_),-_loc5_ * Math.sin(_loc9_),10,_loc5_ * 50);
                  _loc10_++;
               }
            }
         }
         this.mRenderer.setDamagedFrame();
         return this.mHealth;
      }
      
      public function playSoundEffect(param1:int) : void
      {
         LevelObject.playSoundEffectStatic(param1,this.mLevelItem.mValues[LevelItem.RESOURCE_PATH_SOUND_OBJECT] as LevelItemResourcePathSound);
      }
      
      public function getDamageFactor(param1:String) : Number
      {
         return (this.mLevelItem.mValues[LevelItem.MATERIAL_OBJECT] as LevelItemMaterial).getDamagaMultiplier(param1) * this.mPowerUpDamageMultiplier;
      }
      
      public function getVelocityFactor(param1:String) : Number
      {
         return (this.mLevelItem.mValues[LevelItem.MATERIAL_OBJECT] as LevelItemMaterial).getVelocityMultiplier(param1);
      }
      
      public function getMaterialName() : String
      {
         return (this.mLevelItem.mValues[LevelItem.MATERIAL_OBJECT] as LevelItemMaterial).mName;
      }
      
      public function getCost() : int
      {
         return this.mLevelItem.getItemCost();
      }
      
      public function isFastEnoughToDamage() : Boolean
      {
         var _loc1_:int = 30;
         return this.getBody().IsAwake() && (this.isBird() && this.mHealth == this.mHealthMax || Math.abs(this.getBody().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * _loc1_ || Math.abs(this.getBody().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * _loc1_ || Math.abs(this.getBody().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * _loc1_);
      }
      
      public function considerSleeping() : Boolean
      {
         if(!this.getBody().IsAwake())
         {
            return true;
         }
         var _loc1_:int = 30;
         if(Math.abs(this.getBody().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * _loc1_ && Math.abs(this.getBody().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * _loc1_ && Math.abs(this.getBody().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * _loc1_)
         {
            return true;
         }
         return false;
      }
      
      public function setPowerUpDamageMultiplier(param1:Number = 3) : void
      {
         this.mPowerUpDamageMultiplier = param1;
         if(this.mPowerUpDamageMultiplier > 1)
         {
            this.mRenderer.addGlowFilter();
         }
         else
         {
            this.mRenderer.filters = [];
            this.mRenderer.mGlowFilter = null;
         }
      }
      
      public function getVolume(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.mLevelItem.getItemBodyType() == LevelItemMaterial.BODY_TYPE_STATIC)
         {
            _loc2_ = this.mRenderer.mW * this.mRenderer.mH * (LevelMain.PIXEL_TO_B2_SCALE * LevelMain.PIXEL_TO_B2_SCALE);
         }
         else
         {
            _loc2_ = this.getBody().GetMass() / this.mFixture.GetDensity();
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
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.mRenderer.mWidthHeightRatio - 1) / 10);
      }
      
      public function speedUpObject(param1:Number) : void
      {
         var _loc2_:Number = this.getBody().GetLinearVelocity().x;
         var _loc3_:Number = this.getBody().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.getBody().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addBirdTrail() : void
      {
         var _loc5_:String = null;
         var _loc1_:LevelMain = AngryBirdsSocial.smLevelMain;
         if(this.mHealth < this.mHealthMax || this.mFixture == null || this.mSpecialPowerUsed && this.mObjectName == "BIRD_WHITE")
         {
            _loc1_.removeTrailingObject(this);
            return;
         }
         var _loc2_:Number = this.x * LevelMain.PIXEL_TO_B2_SCALE;
         var _loc3_:Number = this.y * LevelMain.PIXEL_TO_B2_SCALE;
         var _loc4_:LevelParticle = null;
         if(_loc1_.mTrailSpecial)
         {
            _loc4_ = _loc1_.mLevelParticles.addParticle(LevelParticle.PARTICLE_NAME_BIRD_TRAIL_BIG,LevelParticles.PARTICLE_GROUP_TRAILS,LevelParticle.PARTICLE_TYPE_TRAIL_PARTICLE,_loc2_,_loc3_,-1,"",LevelParticle.PARTICLE_MATERIAL_BIRD_RED);
            _loc1_.mTrailSpecial = false;
            this.mNextParticleIndex = 0;
         }
         else if(this.mPowerUpDamageMultiplier > 1)
         {
            _loc4_ = _loc1_.mLevelParticles.addParticle(LevelParticle.PARTICLE_NAME_BIRD_TRAIL_SPARKLE,LevelParticles.PARTICLE_GROUP_TRAILS,LevelParticle.PARTICLE_TYPE_TRAIL_PARTICLE,_loc2_,_loc3_,-1,"",LevelParticle.PARTICLE_MATERIAL_BIRD_RED);
         }
         else
         {
            _loc5_ = LevelParticle.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.mNextParticleIndex == 1)
            {
               _loc5_ = LevelParticle.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.mNextParticleIndex == 2)
            {
               _loc5_ = LevelParticle.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.mNextParticleIndex = (this.mNextParticleIndex + 1) % 3;
            _loc4_ = _loc1_.mLevelParticles.addParticle(_loc5_,LevelParticles.PARTICLE_GROUP_TRAILS,LevelParticle.PARTICLE_TYPE_TRAIL_PARTICLE,_loc2_,_loc3_,-1,"",LevelParticle.PARTICLE_MATERIAL_BIRD_RED);
         }
      }
   }
}
