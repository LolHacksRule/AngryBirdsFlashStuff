package com.angrybirds.engine
{
   import com.rovio.graphics.Animation;
   import starling.textures.Texture;
   import com.angrybirds.data.level.item.LevelItemSoundResource;
   import com.angrybirds.data.level.item.LevelItem;
   import com.rovio.sound.SoundEngine;
   import starling.display.Quad;
   import starling.display.Image;
   import starling.display.DisplayObject;
   import starling.display.Sprite;
   import com.angrybirds.data.level.LevelModel;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.data.level.object.LevelSlingshotObjectModel;
   import com.rovio.factory.Log;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class LevelSlingshot extends EventDispatcher
   {
      
      public static const EVENT_BIRD_SHOT:String = "slingshot_shot_bird";
      
      private static const SHOOT_ANIMATION_DURATION:int = 1800;
      
      public static const MIN_SHOOT_POWER:Number = 0.4;
      
      public static const STATE_STAY_EMPTY:int = 0;
      
      public static const STATE_WAIT_FOR_NEXT_BIRD:int = 1;
      
      public static const STATE_BIRD_IS_READY:int = 2;
      
      public static const STATE_BIRDS_ARE_GONE:int = 3;
      
      public static const STATE_CELEBRATE:int = 5;
      
      public static const STATE_IDLE:int = 6;
      
      public static const ROPE_COLOR:int = 3151368;
      
      protected static var sHolsterTexture:Texture;
       
      
      protected var mSlingshotAnimation:Animation;
      
      protected var mLevelMain:LevelMain;
      
      protected var mX:Number;
      
      protected var mY:Number;
      
      protected var mAngle:Number;
      
      protected var mLegLength:Number = 8.5;
      
      protected var mSlingshotCenterX:Number;
      
      protected var mSlingshotCenterY:Number;
      
      protected var mSlingshotRadiusCurrent:Number;
      
      protected var mSlingshotRadiusMax:Number;
      
      protected var mPowerMultiplier:Number = 1.0;
      
      protected var mLimitingBody:Boolean;
      
      protected var mUseGravity:Boolean;
      
      protected var mCanPlayStretchSound:Boolean = false;
      
      public var mBirds:Vector.<LevelSlingshotObject>;
      
      public var mNextBirdIndex:int;
      
      protected var mTotalBirdsCount:int = 0;
      
      protected var mNextBirdIndexForScoring:int;
      
      protected var mTimer:Number;
      
      public var mBirdsSprite:Sprite;
      
      protected var mAimingLineSprite:Sprite;
      
      public var mSlingshotBendState:int = 0;
      
      protected var mShootingAngle:Number = 0;
      
      public var mSlingShotState:int;
      
      public var mUpdateVisuals:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var mShootTheBird:Boolean = false;
      
      public var mGroundCheckTimer:Number;
      
      protected var mSprite:Sprite;
      
      protected var mSlingshotBack:Sprite;
      
      protected var mSlingshotFront:Sprite;
      
      protected var mBackImage:DisplayObject;
      
      protected var mRopeBackContainer:Sprite;
      
      protected var mRopeBack:DisplayObject;
      
      protected var mRopeFrontContainer:Sprite;
      
      protected var mRopeFront:DisplayObject;
      
      protected var mRopeRubberContainer:Sprite;
      
      protected var mRopeRubber:Sprite;
      
      protected var mFrontImage:DisplayObject;
      
      private var mTimeOfLastBirdShot:Number = 0;
      
      private var mShootingPower:Number = 0;
      
      private var mBirdShootTime:Number = -1;
      
      private var mBirdShootRadius:Number = 0;
      
      private var mBirdShooting:Boolean = false;
      
      private var mMaxScore:int = 0;
      
      public function LevelSlingshot(param1:LevelMain, param2:LevelModel, param3:Sprite, param4:Number = 1.0, param5:Boolean = true, param6:Boolean = true)
      {
         var _loc7_:int = 0;
         var _loc8_:LevelSlingshotObjectModel = null;
         this.mBirds = new Vector.<LevelSlingshotObject>();
         super();
         this.mLevelMain = param1;
         this.mSprite = param3;
         this.mPowerMultiplier = param4;
         this.mLimitingBody = param5;
         this.mUseGravity = param6;
         if(param2)
         {
            this.setPosition(param2.slingshotX,param2.slingshotY,param2.slingshotAngle);
            this.loadAnimations();
            _loc7_ = 0;
            while(_loc7_ < param2.slingShotObjectCount)
            {
               _loc8_ = param2.getSlingShotObject(_loc7_);
               this.addSlingshotObject(_loc8_.type,_loc8_.x,_loc8_.y,_loc8_.angle,_loc8_.index);
               _loc7_++;
            }
            this.mMaxScore = this.getMaxScore();
            this.mNextBirdIndex = 0;
            if(this.mBirds.length <= 0)
            {
               Log.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.mX + " " + this.mY);
               this.setSlingShotState(STATE_BIRDS_ARE_GONE);
            }
            else
            {
               this.setSlingShotState(STATE_STAY_EMPTY);
            }
         }
         else
         {
            Log.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.setSlingShotState(STATE_BIRDS_ARE_GONE);
         }
         this.mGroundCheckTimer = 0;
         this.sortBirds();
         this.update(0,true);
         this.groundSlingshot();
         this.updateAnimations(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.mSprite;
      }
      
      public function get aimingLineSprite() : Sprite
      {
         return this.mAimingLineSprite;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.mTimeOfLastBirdShot;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.mNextBirdIndex < this.mBirds.length;
      }
      
      public function get shootingAngle() : Number
      {
         return this.mShootingAngle;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function get angle() : Number
      {
         return this.mAngle;
      }
      
      public function get useGravity() : Boolean
      {
         return this.mUseGravity;
      }
      
      public function dispose() : void
      {
         while(this.mBirds.length > 0)
         {
            this.removeSlingshotObject(0);
         }
         this.mBirds = null;
         if(this.mSprite)
         {
            this.mSprite.dispose();
            this.mSprite = null;
         }
         this.mBirdsSprite = null;
      }
      
      public function addBirdStraightIntoSlingshot(param1:String, param2:Number, param3:Number, param4:int) : LevelSlingshotObject
      {
         var _loc6_:LevelSlingshotObject = null;
         if(this.mBirds.length > 0)
         {
            (_loc6_ = this.mBirds[0]).setOnSlingshot(false);
            _loc6_.animationsEnabled = false;
         }
         var _loc5_:LevelSlingshotObject;
         (_loc5_ = this.addSlingshotObject(param1,param2,param3,0,param4)).setOnSlingshot(true);
         return _loc5_;
      }
      
      protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : LevelSlingshotObject
      {
         var _loc6_:LevelItem = this.mLevelMain.levelItemManager.getItem(param1);
         var _loc7_:Sprite;
         (_loc7_ = new Sprite()).scaleX = _loc6_.scale;
         _loc7_.scaleY = _loc6_.scale;
         var _loc8_:LevelSlingshotObject = this.initializeSlingshotObject(_loc6_,param2,param3,param4,_loc7_,param5);
         if(param5 < 0)
         {
            this.mBirds.push(_loc8_);
         }
         else
         {
            this.mBirds.splice(param5,0,_loc8_);
         }
         ++this.mTotalBirdsCount;
         this.mBirdsSprite.addChild(_loc8_.sprite);
         return _loc8_;
      }
      
      protected function initializeSlingshotObject(param1:LevelItem, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : LevelSlingshotObject
      {
         return new LevelSlingshotObject(this,param5,param1.itemName,param1,param2,param3,param4,param6);
      }
      
      public function setSlingShotState(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == STATE_STAY_EMPTY)
         {
            this.setDefaultCoordinatesForRubber();
            this.mTimer = 1000;
         }
         else if(this.mSlingShotState == STATE_WAIT_FOR_NEXT_BIRD)
         {
            this.setDefaultCoordinatesForRubber();
            this.mTimer = 0;
         }
         else if(this.mSlingShotState == STATE_BIRD_IS_READY)
         {
            this.mTimer = 10000;
            this.mShootTheBird = false;
            this.setDefaultCoordinatesForRubber();
         }
         else if(this.mSlingShotState == STATE_BIRDS_ARE_GONE)
         {
            this.setDefaultCoordinatesForRubber();
            this.mTimer = 2000;
         }
         else if(this.mSlingShotState == STATE_CELEBRATE)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.mShootTheBird = false;
               this.setDefaultCoordinatesForRubber();
               this.mBirds[this.mNextBirdIndex].setPosition(this.drawingDragX - this.mBirds[this.mNextBirdIndex].radius * Math.cos(this.mShootingAngle / (180 / Math.PI)),this.drawingDragY + this.mBirds[this.mNextBirdIndex].radius * Math.sin(this.mShootingAngle / (180 / Math.PI)),180 - this.mShootingAngle);
            }
            else
            {
               this.setDefaultCoordinatesForRubber();
            }
         }
         this.mDragging = false;
      }
      
      public function get levelMain() : LevelMain
      {
         return this.mLevelMain;
      }
      
      public function isOutOfBirds() : Boolean
      {
         return this.mSlingShotState == STATE_BIRDS_ARE_GONE && this.mTimer <= 0;
      }
      
      protected function getSlingshotAnimation() : Animation
      {
         return this.mLevelMain.animationManager.getAnimation("SLINGSHOT");
      }
      
      private function loadAnimations() : void
      {
         this.mSlingshotAnimation = this.getSlingshotAnimation();
         this.mBackImage = this.mSlingshotAnimation.getFrame(0);
         this.mBackImage.pivotX = -3;
         this.mBackImage.pivotY = -24;
         this.mFrontImage = this.mSlingshotAnimation.getFrame(1);
         this.mFrontImage.pivotX = -30;
         this.mFrontImage.pivotY = -30;
         this.loadBendingAreaCircle();
         this.createRopes();
         this.mSlingshotBack = new Sprite();
         this.mSlingshotBack.addChild(this.mBackImage);
         this.mSlingshotBack.addChild(this.mRopeBackContainer);
         this.mAimingLineSprite = new Sprite();
         this.mBirdsSprite = new Sprite();
         this.mSlingshotFront = new Sprite();
         this.mSlingshotFront.addChild(this.mRopeRubberContainer);
         this.mSlingshotFront.addChild(this.mRopeFrontContainer);
         this.mSlingshotFront.addChild(this.mFrontImage);
         this.addSprites();
      }
      
      protected function addSprites() : void
      {
         this.mSprite.addChild(this.mSlingshotBack);
         this.mSprite.addChild(this.mAimingLineSprite);
         this.mSprite.addChild(this.mBirdsSprite);
         this.mSprite.addChild(this.mSlingshotFront);
      }
      
      public function loadBendingAreaCircle() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.mSlingshotCenterX = this.mX;
         this.mSlingshotCenterY = this.mY;
         this.mSlingshotRadiusMax = Tuner.SLINGSHOT_RUBBERBAND_LENGTH;
         _loc1_ = null;
      }
      
      protected function getRopeImage(param1:uint) : DisplayObject
      {
         return new Quad(2,2,param1);
      }
      
      protected function getHolsterImage(param1:uint, param2:Boolean) : DisplayObject
      {
         var _loc3_:BitmapData = null;
         if(!sHolsterTexture || param2)
         {
            _loc3_ = new BitmapData(18,26,true,4278190080 | param1);
            if(sHolsterTexture)
            {
               this.mLevelMain.textureManager.unregisterBitmapDataTexture(sHolsterTexture);
            }
            sHolsterTexture = this.mLevelMain.textureManager.getTextureFromBitmapData(_loc3_);
         }
         return new Image(sHolsterTexture);
      }
      
      protected function createRopes(param1:uint = 3151368, param2:uint = 3151368, param3:Boolean = false) : void
      {
         this.mRopeRubberContainer = new Sprite();
         this.mRopeRubber = new Sprite();
         var _loc4_:DisplayObject;
         (_loc4_ = this.getHolsterImage(param2,param3)).rotation = Math.PI;
         _loc4_.x = _loc4_.width / 2;
         _loc4_.y = _loc4_.height / 2;
         this.mRopeRubber.addChild(_loc4_);
         this.mRopeRubberContainer.addChild(this.mRopeRubber);
         this.mRopeBackContainer = new Sprite();
         this.mRopeBackContainer.x = 22;
         this.mRopeBackContainer.y = 0;
         this.mRopeBack = this.getRopeImage(param1);
         this.mRopeBackContainer.addChild(this.mRopeBack);
         this.mRopeFrontContainer = new Sprite();
         this.mRopeFrontContainer.x = -17;
         this.mRopeFrontContainer.y = 5;
         this.mRopeFront = this.getRopeImage(param1);
         this.mRopeFrontContainer.addChild(this.mRopeFront);
      }
      
      protected function updateAnimations(param1:Number) : void
      {
         var _loc2_:Number = (this.drawingDragY - this.mY) / LevelMain.PIXEL_TO_B2_SCALE;
         var _loc3_:Number = (this.drawingDragX - this.mX) / LevelMain.PIXEL_TO_B2_SCALE;
         var _loc4_:Number = Math.cos(this.mAngle);
         var _loc5_:Number = Math.sin(this.mAngle);
         var _loc6_:Number = -Math.sin(this.mAngle);
         var _loc7_:Number = Math.cos(this.mAngle);
         var _loc8_:Number = _loc3_;
         var _loc9_:Number = _loc2_;
         _loc3_ = _loc8_ * _loc4_ + _loc9_ * _loc5_;
         _loc2_ = _loc8_ * _loc6_ + _loc9_ * _loc7_;
         var _loc10_:Number = 3.5 + 8 * ((this.mSlingshotRadiusMax - this.drawingSlingshotRadius) / this.mSlingshotRadiusMax);
         this.mRopeRubberContainer.x = _loc3_;
         this.mRopeRubberContainer.y = _loc2_;
         this.mRopeRubberContainer.rotation = -this.mAngle - this.mShootingAngle / (180 / Math.PI);
         this.mSlingshotBack.x = this.mX / LevelMain.PIXEL_TO_B2_SCALE;
         this.mSlingshotBack.y = this.mY / LevelMain.PIXEL_TO_B2_SCALE;
         this.mSlingshotBack.rotation = this.mAngle;
         this.mSlingshotFront.x = this.mX / LevelMain.PIXEL_TO_B2_SCALE;
         this.mSlingshotFront.y = this.mY / LevelMain.PIXEL_TO_B2_SCALE;
         this.mSlingshotFront.rotation = this.mAngle;
         this.mRopeFrontContainer.rotation = Math.atan2(_loc2_ - this.mRopeFrontContainer.y,_loc3_ - this.mRopeFrontContainer.x);
         this.mRopeFront.width = Math.sqrt(Math.pow(_loc3_ - this.mRopeFrontContainer.x,2) + Math.pow(_loc2_ - this.mRopeFrontContainer.y,2));
         this.mRopeFront.height = _loc10_ * 2;
         this.mRopeFront.y = -this.mRopeFront.height / 2;
         this.mRopeBackContainer.rotation = Math.atan2(_loc2_ - this.mRopeBackContainer.y,_loc3_ - this.mRopeBackContainer.x);
         this.mRopeBack.width = Math.sqrt(Math.pow(_loc3_ - this.mRopeBackContainer.x,2) + Math.pow(_loc2_ - this.mRopeBackContainer.y,2));
         this.mRopeBack.height = _loc10_ * 2;
         this.mRopeBack.y = -this.mRopeBack.height / 2;
         this.mUpdateVisuals = false;
      }
      
      public function useMightyEagle() : LevelSlingshotObject
      {
         var _loc2_:LevelSlingshotObject = null;
         while(this.mBirds.length > 0)
         {
            this.removeSlingshotObject(0,true);
         }
         this.playMEUsedSound();
         if(this.mBirds.length > 0)
         {
            _loc2_ = this.mBirds[0];
            _loc2_.setOnSlingshot(false);
         }
         var _loc1_:LevelSlingshotObject = this.addSlingshotObject("BIRD_SARDINE",this.mX,this.mY,0);
         _loc1_.setOnSlingshot(true);
         _loc1_.animationsEnabled = false;
         this.setSlingShotState(STATE_BIRD_IS_READY);
         return _loc1_;
      }
      
      protected function playMEUsedSound() : void
      {
         SoundEngine.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.setSlingShotState(STATE_CELEBRATE);
      }
      
      public function setDefaultCoordinatesForRubber() : void
      {
         this.setNewCoordinatesForRubber(this.mSlingshotCenterX,this.mSlingshotCenterY + this.mSlingshotRadiusMax / 8);
      }
      
      protected function get slingshotRadiusCurrentScaled() : Number
      {
         return this.mSlingshotRadiusCurrent * this.mPowerMultiplier;
      }
      
      protected function get drawingSlingshotRadius() : Number
      {
         return Math.min(this.mSlingshotRadiusCurrent,this.mSlingshotRadiusMax);
      }
      
      protected function get drawingDragX() : Number
      {
         if(this.mSlingshotRadiusCurrent >= this.mSlingshotRadiusMax)
         {
            return this.mSlingshotCenterX + this.mSlingshotRadiusMax * Math.cos(this.mShootingAngle / 180 * Math.PI);
         }
         return this.mSlingshotCenterX + this.mSlingshotRadiusCurrent * Math.cos(this.mShootingAngle / 180 * Math.PI);
      }
      
      protected function get drawingDragY() : Number
      {
         if(this.mSlingshotRadiusCurrent >= this.mSlingshotRadiusMax)
         {
            return this.mSlingshotCenterY - this.mSlingshotRadiusMax * Math.sin(this.mShootingAngle / 180 * Math.PI);
         }
         return this.mSlingshotCenterY - this.mSlingshotRadiusCurrent * Math.sin(this.mShootingAngle / 180 * Math.PI);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         if(this.mBirdShootTime > 0)
         {
            return false;
         }
         var _loc4_:Number = param1 - this.mSlingshotCenterX;
         var _loc5_:Number = param2 - this.mSlingshotCenterY;
         var _loc6_:Number;
         if((_loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) * this.mPowerMultiplier > this.mSlingshotRadiusMax)
         {
            if(param3)
            {
               return false;
            }
            _loc6_ = this.mSlingshotRadiusMax / this.mPowerMultiplier;
         }
         var _loc7_:Number = (_loc7_ = Math.atan2(-(param2 - this.mSlingshotCenterY),param1 - this.mSlingshotCenterX)) * (180 / Math.PI);
         if(!this.mDragging && this.mBirdShootTime < 0)
         {
            _loc6_ = 0.8;
            _loc7_ = -160;
         }
         if(this.mLimitingBody)
         {
            _loc6_ = this.limitBirdBody(_loc6_);
         }
         return this.updateStretch(_loc7_,_loc6_);
      }
      
      protected function limitBirdBody(param1:Number) : Number
      {
         var _loc6_:Number = NaN;
         var _loc5_:Number = this.mSlingshotRadiusMax / 2;
         if(param1 > _loc5_)
         {
            if(this.mShootingAngle > -90 - 12 + 5 && this.mShootingAngle < -90 + 12 + 5)
            {
               return _loc5_;
            }
            if(this.mShootingAngle > -90 - 12 - 4 + 5 && this.mShootingAngle < -90 + 12 + 4 + 5)
            {
               return Number(_loc5_ + (this.mSlingshotRadiusMax - _loc5_) * (Math.abs(this.mShootingAngle - -90 - 5) - 12) / 4);
            }
         }
         return param1;
      }
      
      protected function updateStretch(param1:Number, param2:Number) : Boolean
      {
         this.mShootingAngle = param1;
         this.mSlingshotRadiusCurrent = param2;
         if(this.mSlingshotRadiusCurrent <= this.mSlingshotRadiusMax * 0.45)
         {
            this.mCanPlayStretchSound = true;
         }
         else if(this.mCanPlayStretchSound && this.mSlingshotRadiusCurrent >= this.mSlingshotRadiusMax * 0.8)
         {
            this.playStretchSound();
            this.mCanPlayStretchSound = false;
         }
         this.mUpdateVisuals = true;
         return true;
      }
      
      protected function playStretchSound() : void
      {
         SoundEngine.playSound("SlingshotStreched");
      }
      
      protected function applyGravity(param1:Number) : void
      {
         this.setPosition(this.mX + param1 * Math.cos(this.mAngle + Math.PI / 2),this.mY + param1 * Math.sin(this.mAngle + Math.PI / 2),this.mAngle);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var _loc5_:Number = param1 - this.mX;
         this.mX = param1;
         var _loc6_:Number = param2 - this.mY;
         this.mY = param2;
         this.mAngle = param3;
         this.mSlingshotCenterY += _loc6_;
         this.mSlingshotCenterX += _loc5_;
         if(param4)
         {
            this.updateAnimations(0);
         }
         this.mUpdateVisuals = true;
      }
      
      protected function getLaunchPower() : Number
      {
         return this.slingshotRadiusCurrentScaled / this.mSlingshotRadiusMax;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:LevelSlingshotObject = this.mBirds[this.mNextBirdIndex];
         var _loc3_:Number = this.getLaunchPower();
         if(_loc2_)
         {
            _loc1_ = _loc2_.launchSpeed;
         }
         return _loc1_ * _loc3_;
      }
      
      public function getPosition() : Point
      {
         var _loc1_:LevelSlingshotObject = null;
         if(this.mBirds.length > this.mNextBirdIndex)
         {
            _loc1_ = this.mBirds[this.mNextBirdIndex];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function getSlingShotCenterPosition() : Point
      {
         return new Point(this.mSlingshotCenterX,this.mSlingshotCenterY);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:LevelSlingshotObject = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.updateShooting(param1);
         if(this.mUpdateVisuals)
         {
            this.updateAnimations(param1);
         }
         this.mTimer -= param1;
         if(this.mTimer < 0)
         {
            this.mTimer = 0;
         }
         if(this.mSlingShotState != STATE_BIRDS_ARE_GONE)
         {
            this.updateBirds(param1,param2);
            _loc3_ = null;
            if(this.mBirds.length > 0)
            {
               _loc3_ = this.mBirds[this.mNextBirdIndex];
            }
            if(_loc3_)
            {
               _loc3_.approachSlingshot(param1);
            }
            if(!_loc3_)
            {
               this.setSlingShotState(STATE_BIRDS_ARE_GONE);
            }
            else if(this.mSlingShotState == STATE_STAY_EMPTY)
            {
               if(this.mTimer <= 0)
               {
                  this.setSlingShotState(STATE_WAIT_FOR_NEXT_BIRD);
                  _loc3_.startGoingToSlingshot();
               }
            }
            else if(this.mSlingShotState == STATE_WAIT_FOR_NEXT_BIRD)
            {
               if(_loc3_.onSlingshot)
               {
                  this.setSlingShotState(STATE_BIRD_IS_READY);
               }
            }
            else if(this.mSlingShotState == STATE_BIRD_IS_READY)
            {
               _loc4_ = this.drawingDragX - _loc3_.radius * Math.cos(this.mShootingAngle / (180 / Math.PI));
               _loc5_ = this.drawingDragY + _loc3_.radius * Math.sin(this.mShootingAngle / (180 / Math.PI));
               if(this.mDragging || this.mBirdShootTime >= 0)
               {
                  _loc3_.setPosition(_loc4_,_loc5_,180 - this.mShootingAngle);
               }
               else
               {
                  _loc3_.setPosition(_loc4_,_loc5_,this.angle);
               }
               if(this.mShootTheBird)
               {
                  this.shootCurrentBird(this.getLaunchPower(),this.mShootingAngle);
               }
            }
         }
      }
      
      public function shootCurrentBirdFromPosition(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:LevelSlingshotObject = null;
         if(this.mBirds.length > 0)
         {
            _loc5_ = this.mBirds[this.mNextBirdIndex];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2,180 - this.mShootingAngle);
         this.shootCurrentBird(param3,param4);
      }
      
      protected function shootBird() : void
      {
         this.mBirdShooting = false;
         var _loc1_:LevelSlingshotObject = null;
         if(this.mBirds.length > this.mNextBirdIndex)
         {
            _loc1_ = this.mBirds[this.mNextBirdIndex];
         }
         if(!_loc1_)
         {
            return;
         }
         this.mTimeOfLastBirdShot = new Date().time;
         this.mLevelMain.shootBird(_loc1_,this.mShootingPower,this.mShootingAngle);
         this.removeSlingshotObject(this.mNextBirdIndex,_loc1_.powerUpSpeed > 0);
         this.playBirdShotSound();
         if(this.mNextBirdIndex >= this.mBirds.length)
         {
            this.setSlingShotState(STATE_BIRDS_ARE_GONE);
         }
         else
         {
            this.setSlingShotState(STATE_STAY_EMPTY);
         }
         dispatchEvent(new Event(EVENT_BIRD_SHOT));
      }
      
      protected function updateShooting(param1:Number) : void
      {
         if(this.mBirdShootTime <= 0)
         {
            return;
         }
         this.mUpdateVisuals = true;
         this.mBirdShootTime -= param1;
         if(this.mBirdShootTime <= 0)
         {
            this.mBirdShootTime = 0;
         }
         var _loc2_:Number = this.mBirdShootTime / SHOOT_ANIMATION_DURATION;
         var _loc3_:Number = this.mBirdShootRadius * Math.cos(_loc2_ * Math.PI * 8) * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_;
         this.updateStretch(this.mShootingAngle,_loc3_);
         if(this.mBirdShootTime == 0)
         {
            this.mBirdShootTime = -1;
            this.setDefaultCoordinatesForRubber();
         }
         if(this.mBirdShooting)
         {
            this.shootBird();
         }
      }
      
      public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         this.mShootingPower = param1;
         this.mShootingAngle = param2;
         this.mBirdShootTime = SHOOT_ANIMATION_DURATION;
         this.mBirdShootRadius = this.mSlingshotRadiusCurrent;
         this.mDragging = false;
         this.mShootTheBird = false;
         this.mBirdShooting = true;
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         SoundEngine.playSound("BirdShot" + _loc1_);
      }
      
      public function updateBirds(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.mNextBirdIndex;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.mBirds.length)
         {
            this.mBirds[_loc4_].update(param1,this.mSlingShotState == STATE_CELEBRATE,param2);
            _loc4_++;
         }
      }
      
      public function getCurrentBirdType() : String
      {
         var _loc1_:LevelSlingshotObject = null;
         if(this.mNextBirdIndex < this.mBirds.length)
         {
            _loc1_ = this.mBirds[this.mNextBirdIndex];
            return _loc1_.name;
         }
         return null;
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:LevelSlingshotObject = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.setDefaultCoordinatesForRubber();
         if(this.mNextBirdIndexForScoring >= this.mBirds.length)
         {
            return false;
         }
         _loc1_ = this.mBirds[this.mNextBirdIndexForScoring];
         _loc1_.startTalking(-1,true);
         _loc2_ = this.mLevelMain.levelItemManager.getItem(_loc1_.name).score;
         this.showScoreForRemainingBird(_loc1_,_loc2_);
         ++this.mNextBirdIndexForScoring;
         return true;
      }
      
      protected function showScoreForRemainingBird(param1:LevelSlingshotObject, param2:int) : void
      {
         this.mLevelMain.addScore(param2,ScoreCollector.SCORE_TYPE_EXTRA_BIRD,true,param1.x,param1.y - 3,LevelParticle.getTextMaterialFromEngineMaterial(param1.name));
      }
      
      public function getMaxScore() : int
      {
         var _loc2_:LevelSlingshotObject = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.mBirds)
         {
            _loc1_ += this.mLevelMain.levelItemManager.getItem(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function getInitialMaxScore() : int
      {
         return this.mMaxScore;
      }
      
      protected function groundSlingshot() : void
      {
         var _loc4_:int = 0;
         var _loc1_:int = 1000;
         var _loc2_:Number = Math.cos(this.mAngle + Math.PI / 2) * this.mLegLength;
         var _loc3_:Number = Math.sin(this.mAngle + Math.PI / 2) * this.mLegLength;
         while((_loc4_ = this.mLevelMain.objects.getObjectIndexFromPoint(this.mSlingshotCenterX + _loc2_,this.mSlingshotCenterY + _loc3_)) == -1)
         {
            this.applyGravity(0.1);
            if(_loc1_-- <= 0)
            {
               break;
            }
         }
         this.mGroundCheckTimer = -1;
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.mSprite.x = -param1;
         this.mSprite.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == STATE_BIRD_IS_READY && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function get canShootTheBird() : Boolean
      {
         return this.mSlingShotState == STATE_BIRD_IS_READY && this.getLaunchPower() >= MIN_SHOOT_POWER && this.mBirdShootTime < 0;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.setSlingShotState(STATE_BIRD_IS_READY);
         var _loc1_:LevelSlingshotObject = this.mBirds[this.mNextBirdIndex];
         _loc1_.startTalking(LevelItemSoundResource.SOUND_UNSELECTED);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:LevelSlingshotObject = this.mBirds[this.mNextBirdIndex];
         _loc1_.startTalking(LevelItemSoundResource.SOUND_SELECTED);
      }
      
      public function shoot() : void
      {
         this.mShootTheBird = true;
      }
      
      protected function removeSlingshotObject(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:LevelSlingshotObject = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.mBirds[param1])
         {
            _loc3_ = this.mBirds[param1];
            this.mBirdsSprite.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.showDestructionParticles(this.mBirds[param1]);
            }
            _loc3_.dispose();
            this.mBirds[param1] = null;
         }
         this.mBirds.splice(param1,1);
      }
      
      protected function showDestructionParticles(param1:LevelSlingshotObject) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * LevelMain.PIXEL_TO_B2_SCALE) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * LevelMain.PIXEL_TO_B2_SCALE) + Math.random() * -_loc8_ * 2;
            this.mLevelMain.particles.addParticle(LevelParticle.PARTICLE_NAME_BIRD_DESTRUCTION,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,param1.x + _loc7_,param1.y + _loc8_,1500,"",LevelParticle.getParticleMaterialFromEngineMaterial(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.mLevelMain.particles.addParticle(LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_CORE,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function removeObject(param1:LevelSlingshotObject) : void
      {
         this.removeSlingshotObject(this.mBirds.indexOf(param1));
      }
      
      public function sortBirds() : void
      {
         var _loc1_:LevelSlingshotObject = null;
         this.mBirds.sort(this.birdSorter);
         while(this.mBirdsSprite.numChildren > 0)
         {
            this.mBirdsSprite.removeChildAt(0);
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc1_ = this.mBirds[_loc2_];
            this.mBirdsSprite.addChildAt(_loc1_.sprite,0);
            _loc2_++;
         }
      }
      
      private function birdSorter(param1:LevelSlingshotObject, param2:LevelSlingshotObject) : Number
      {
         if(param1.launchIndex < param2.launchIndex)
         {
            return -1;
         }
         if(param1.launchIndex > param2.launchIndex)
         {
            return 1;
         }
         return 0;
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : LevelSlingshotObject
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.mBirds.length)
         {
            if(this.mBirds[_loc3_])
            {
               if(this.mBirds[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.mBirds[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function intersectsWithPoint(param1:Number, param2:Number) : LevelSlingshot
      {
         if(param1 >= this.mX - this.mSlingshotRadiusMax / 4 && param1 <= this.mX + this.mSlingshotRadiusMax / 4 && param2 >= this.mY - this.mSlingshotRadiusMax / 4 && this.mY <= this.mY + this.mLegLength)
         {
            return this;
         }
         return null;
      }
      
      public function writeSlingshotInformation(param1:LevelModel) : void
      {
         var _loc3_:LevelSlingshotObject = null;
         var _loc4_:LevelSlingshotObjectModel = null;
         param1.slingshotX = this.mX;
         param1.slingshotY = this.mY;
         var _loc2_:Number = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc3_ = this.mBirds[_loc2_];
            (_loc4_ = new LevelSlingshotObjectModel()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.type = _loc3_.name;
            param1.addSlingShotObject(_loc4_);
            _loc2_++;
         }
      }
      
      public function removeAllGameObjects() : void
      {
         while(this.mBirds.length > 0)
         {
            this.removeObject(this.mBirds[0]);
         }
      }
      
      public function getObjectsWithinBoundingBox(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.mBirds.length)
         {
            if(this.mBirds[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.mBirds[_loc4_]);
            }
            _loc4_++;
         }
         if(this.mX > param1.x && this.mX < param2.x && this.mY > param1.y && this.mY < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function addNewBirdToEndOfList(param1:String, param2:Number, param3:Number, param4:Number) : LevelSlingshotObject
      {
         var _loc5_:LevelSlingshotObject = this.addSlingshotObject(param1,param2,param3,param4);
         this.sortBirds();
         return _loc5_;
      }
      
      public function getBirdCount() : int
      {
         return this.mBirds.length;
      }
      
      public function getTotalBirdCount() : int
      {
         return this.mTotalBirdsCount;
      }
   }
}
