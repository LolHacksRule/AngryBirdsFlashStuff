package com.angrybirds.engine
{
   import com.angrybirds.data.level.LevelModel;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelSlingshotObjectModel;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.rovio.factory.Log;
   import com.rovio.graphics.Animation;
   import com.rovio.sound.SoundEngine;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import starling.display.DisplayObject;
   import starling.display.Image;
   import starling.display.Sprite;
   import starling.textures.Texture;
   
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
      
      protected static var sRopeTexture:Texture;
       
      
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
      
      protected var mRotateBird:Boolean;
      
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
      
      public function LevelSlingshot(newLevelMain:LevelMain, level:LevelModel, sprite:Sprite, powerMultiplier:Number = 1.0, limitingBody:Boolean = true, useGravity:Boolean = true, rotateBirdOnSlingshot:Boolean = false)
      {
         var i:int = 0;
         var bird:LevelSlingshotObjectModel = null;
         this.mBirds = new Vector.<LevelSlingshotObject>();
         super();
         this.mLevelMain = newLevelMain;
         this.mSprite = sprite;
         this.mPowerMultiplier = powerMultiplier;
         this.mLimitingBody = limitingBody;
         this.mUseGravity = useGravity;
         this.mRotateBird = rotateBirdOnSlingshot;
         if(level)
         {
            this.setPosition(level.slingshotX,level.slingshotY,level.slingshotAngle);
            this.loadAnimations();
            for(i = 0; i < level.slingShotObjectCount; i++)
            {
               bird = level.getSlingShotObject(i);
               this.addSlingshotObject(bird.type,bird.x,bird.y,bird.angle,i);
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
      
      public function get shootingPower() : Number
      {
         return this.mShootingPower;
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
      
      public function get rotateBird() : Boolean
      {
         return this.mRotateBird;
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
      
      public function set color(color:uint) : void
      {
         if(this.mBackImage)
         {
            this.mBackImage.color = color;
         }
         if(this.mFrontImage)
         {
            this.mFrontImage.color = color;
         }
      }
      
      public function addBirdStraightIntoSlingshot(name:String, x:Number, y:Number, index:int) : LevelSlingshotObject
      {
         var currentBird:LevelSlingshotObject = null;
         if(this.mBirds.length > 0)
         {
            currentBird = this.mBirds[0];
            currentBird.setOnSlingshot(false);
            currentBird.animationsEnabled = false;
         }
         var bird:LevelSlingshotObject = this.addSlingshotObject(name,x,y,0,index);
         bird.setOnSlingshot(true);
         return bird;
      }
      
      protected function addSlingshotObject(name:String, x:Number, y:Number, angle:Number, index:int = -1) : LevelSlingshotObject
      {
         var levelItem:LevelItem = this.mLevelMain.levelItemManager.getItem(name);
         var sprite:Sprite = new Sprite();
         sprite.scaleX = levelItem.scale;
         sprite.scaleY = levelItem.scale;
         var bird:LevelSlingshotObject = this.initializeSlingshotObject(levelItem,x,y,angle,sprite,index);
         if(index < 0)
         {
            this.mBirds.push(bird);
         }
         else
         {
            this.mBirds.splice(index,0,bird);
         }
         ++this.mTotalBirdsCount;
         this.mBirdsSprite.addChild(bird.sprite);
         return bird;
      }
      
      protected function initializeSlingshotObject(levelItem:LevelItem, x:Number, y:Number, angle:Number, sprite:Sprite, index:int) : LevelSlingshotObject
      {
         return new LevelSlingshotObject(this,sprite,levelItem.itemName,levelItem,x,y,angle,index);
      }
      
      public function setSlingShotState(newState:int) : void
      {
         this.mSlingShotState = newState;
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
         var rect:Rectangle = new Rectangle(0,0,100,100);
         this.mSlingshotCenterX = this.mX;
         this.mSlingshotCenterY = this.mY;
         this.mSlingshotRadiusMax = Tuner.SLINGSHOT_RUBBERBAND_LENGTH;
         rect = null;
      }
      
      private function updateRopeTexture(ropeColor:uint) : void
      {
         var bitmapData:BitmapData = new BitmapData(2,2,true,4278190080 | ropeColor);
         if(sRopeTexture)
         {
            this.mLevelMain.textureManager.unregisterBitmapDataTexture(sRopeTexture);
         }
         sRopeTexture = this.mLevelMain.textureManager.getTextureFromBitmapData(bitmapData);
      }
      
      protected function getRopeImage() : DisplayObject
      {
         return new Image(sRopeTexture);
      }
      
      protected function getHolsterImage(holsterColor:uint, invalidateHolsterTexture:Boolean) : DisplayObject
      {
         var bitmapData:BitmapData = null;
         if(!sHolsterTexture || invalidateHolsterTexture)
         {
            bitmapData = new BitmapData(18,26,true,4278190080 | holsterColor);
            if(sHolsterTexture)
            {
               this.mLevelMain.textureManager.unregisterBitmapDataTexture(sHolsterTexture);
            }
            sHolsterTexture = this.mLevelMain.textureManager.getTextureFromBitmapData(bitmapData);
         }
         return new Image(sHolsterTexture);
      }
      
      protected function createRopes(ropeColor:uint = 3151368, holsterColor:uint = 3151368, invalidateHolsterTexture:Boolean = false) : void
      {
         this.mRopeRubberContainer = new Sprite();
         this.mRopeRubber = new Sprite();
         var holsterImage:DisplayObject = this.getHolsterImage(holsterColor,invalidateHolsterTexture);
         holsterImage.rotation = Math.PI;
         holsterImage.x = holsterImage.width / 2;
         holsterImage.y = holsterImage.height / 2;
         this.mRopeRubber.addChild(holsterImage);
         this.mRopeRubberContainer.addChild(this.mRopeRubber);
         this.mRopeBackContainer = new Sprite();
         this.mRopeBackContainer.x = 22;
         this.mRopeBackContainer.y = 0;
         this.updateRopeTexture(ropeColor);
         this.mRopeBack = this.getRopeImage();
         this.mRopeBackContainer.addChild(this.mRopeBack);
         this.mRopeFrontContainer = new Sprite();
         this.mRopeFrontContainer.x = -17;
         this.mRopeFrontContainer.y = 5;
         this.mRopeFront = this.getRopeImage();
         this.mRopeFrontContainer.addChild(this.mRopeFront);
      }
      
      protected function updateAnimations(deltaTime:Number) : void
      {
         var slingshotY:Number = (this.drawingDragY - this.mY) / LevelMain.PIXEL_TO_B2_SCALE;
         var slingshotX:Number = (this.drawingDragX - this.mX) / LevelMain.PIXEL_TO_B2_SCALE;
         var xAxisX:Number = Math.cos(this.mAngle);
         var xAxisY:Number = Math.sin(this.mAngle);
         var yAxisX:Number = -Math.sin(this.mAngle);
         var yAxisY:Number = Math.cos(this.mAngle);
         var tempSlingshotX:Number = slingshotX;
         var tempSlingshotY:Number = slingshotY;
         slingshotX = tempSlingshotX * xAxisX + tempSlingshotY * xAxisY;
         slingshotY = tempSlingshotX * yAxisX + tempSlingshotY * yAxisY;
         var lineThickness:Number = 3.5 + 8 * ((this.mSlingshotRadiusMax - this.drawingSlingshotRadius) / this.mSlingshotRadiusMax);
         this.mRopeRubberContainer.x = slingshotX;
         this.mRopeRubberContainer.y = slingshotY;
         this.mRopeRubberContainer.rotation = -this.mAngle - this.mShootingAngle / (180 / Math.PI);
         this.mSlingshotBack.x = this.mX / LevelMain.PIXEL_TO_B2_SCALE;
         this.mSlingshotBack.y = this.mY / LevelMain.PIXEL_TO_B2_SCALE;
         this.mSlingshotBack.rotation = this.mAngle;
         this.mSlingshotFront.x = this.mX / LevelMain.PIXEL_TO_B2_SCALE;
         this.mSlingshotFront.y = this.mY / LevelMain.PIXEL_TO_B2_SCALE;
         this.mSlingshotFront.rotation = this.mAngle;
         this.mRopeFrontContainer.rotation = Math.atan2(slingshotY - this.mRopeFrontContainer.y,slingshotX - this.mRopeFrontContainer.x);
         this.mRopeFront.width = Math.sqrt(Math.pow(slingshotX - this.mRopeFrontContainer.x,2) + Math.pow(slingshotY - this.mRopeFrontContainer.y,2));
         this.mRopeFront.height = lineThickness * 2;
         this.mRopeFront.y = -this.mRopeFront.height / 2;
         this.mRopeBackContainer.rotation = Math.atan2(slingshotY - this.mRopeBackContainer.y,slingshotX - this.mRopeBackContainer.x);
         this.mRopeBack.width = Math.sqrt(Math.pow(slingshotX - this.mRopeBackContainer.x,2) + Math.pow(slingshotY - this.mRopeBackContainer.y,2));
         this.mRopeBack.height = lineThickness * 2;
         this.mRopeBack.y = -this.mRopeBack.height / 2;
         this.mUpdateVisuals = false;
      }
      
      public function useMightyEagle() : LevelSlingshotObject
      {
         var currentBird:LevelSlingshotObject = null;
         while(this.mBirds.length > 0)
         {
            this.removeSlingshotObject(0,true);
         }
         this.playMEUsedSound();
         if(this.mBirds.length > 0)
         {
            currentBird = this.mBirds[0];
            currentBird.setOnSlingshot(false);
         }
         var bait:LevelSlingshotObject = this.addSlingshotObject("BIRD_SARDINE",this.mX,this.mY,0);
         bait.setOnSlingshot(true);
         bait.animationsEnabled = false;
         this.setSlingShotState(STATE_BIRD_IS_READY);
         return bait;
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
      
      public function setNewCoordinatesForRubber(newX:Number, newY:Number, ignoreCoordinatesOutside:Boolean = true) : Boolean
      {
         if(this.mBirdShootTime > 0)
         {
            return false;
         }
         var deltaX:Number = newX - this.mSlingshotCenterX;
         var deltaY:Number = newY - this.mSlingshotCenterY;
         var radius:Number = Math.sqrt(deltaX * deltaX + deltaY * deltaY);
         if(radius * this.mPowerMultiplier > this.mSlingshotRadiusMax)
         {
            if(ignoreCoordinatesOutside)
            {
               return false;
            }
            radius = this.mSlingshotRadiusMax / this.mPowerMultiplier;
         }
         var angle:Number = Math.atan2(-(newY - this.mSlingshotCenterY),newX - this.mSlingshotCenterX);
         angle *= 180 / Math.PI;
         if(!this.mDragging && this.mBirdShootTime < 0)
         {
            radius = 0.8;
            angle = -160;
         }
         if(this.mLimitingBody)
         {
            radius = this.limitBirdBody(radius);
         }
         return this.updateStretch(angle,radius);
      }
      
      protected function limitBirdBody(radius:Number) : Number
      {
         var max:Number = NaN;
         var MAX_RADIUS:Number = this.mSlingshotRadiusMax / 2;
         if(radius > MAX_RADIUS)
         {
            if(this.mShootingAngle > -90 - 12 + 5 && this.mShootingAngle < -90 + 12 + 5)
            {
               return MAX_RADIUS;
            }
            if(this.mShootingAngle > -90 - 12 - 4 + 5 && this.mShootingAngle < -90 + 12 + 4 + 5)
            {
               return Number(MAX_RADIUS + (this.mSlingshotRadiusMax - MAX_RADIUS) * (Math.abs(this.mShootingAngle - -90 - 5) - 12) / 4);
            }
         }
         return radius;
      }
      
      protected function updateStretch(angle:Number, radius:Number) : Boolean
      {
         this.mShootingAngle = angle;
         this.mSlingshotRadiusCurrent = radius;
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
      
      protected function applyGravity(movement:Number) : void
      {
         this.setPosition(this.mX + movement * Math.cos(this.mAngle + Math.PI / 2),this.mY + movement * Math.sin(this.mAngle + Math.PI / 2),this.mAngle);
      }
      
      public function setPosition(newX:Number, newY:Number, angle:Number, updateVisualInstant:Boolean = false) : void
      {
         var movementX:Number = newX - this.mX;
         this.mX = newX;
         var movementY:Number = newY - this.mY;
         this.mY = newY;
         this.mAngle = angle;
         this.mSlingshotCenterY += movementY;
         this.mSlingshotCenterX += movementX;
         if(updateVisualInstant)
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
         var speed:Number = 0;
         var bird:LevelSlingshotObject = this.mBirds[this.mNextBirdIndex];
         var power:Number = this.getLaunchPower();
         if(bird)
         {
            speed = bird.launchSpeed;
         }
         return speed * power;
      }
      
      public function getPosition() : Point
      {
         var bird:LevelSlingshotObject = null;
         if(this.mBirds.length > this.mNextBirdIndex)
         {
            bird = this.mBirds[this.mNextBirdIndex];
            return new Point(bird.x,bird.y);
         }
         return null;
      }
      
      public function getSlingShotCenterPosition() : Point
      {
         return new Point(this.mSlingshotCenterX,this.mSlingshotCenterY);
      }
      
      public function update(deltaTime:Number, updateLogic:Boolean = true) : void
      {
         var bird:LevelSlingshotObject = null;
         var birdX:Number = NaN;
         var birdY:Number = NaN;
         this.updateShooting(deltaTime);
         if(this.mUpdateVisuals)
         {
            this.updateAnimations(deltaTime);
         }
         this.mTimer -= deltaTime;
         if(this.mTimer < 0)
         {
            this.mTimer = 0;
         }
         if(this.mSlingShotState != STATE_BIRDS_ARE_GONE)
         {
            this.updateBirds(deltaTime,updateLogic);
            bird = null;
            if(this.mBirds.length > 0)
            {
               bird = this.mBirds[this.mNextBirdIndex];
            }
            if(bird)
            {
               bird.approachSlingshot(deltaTime);
            }
            if(!bird)
            {
               this.setSlingShotState(STATE_BIRDS_ARE_GONE);
            }
            else if(this.mSlingShotState == STATE_STAY_EMPTY)
            {
               if(this.mTimer <= 0)
               {
                  this.setSlingShotState(STATE_WAIT_FOR_NEXT_BIRD);
                  bird.startGoingToSlingshot();
               }
            }
            else if(this.mSlingShotState == STATE_WAIT_FOR_NEXT_BIRD)
            {
               if(bird.onSlingshot)
               {
                  this.setSlingShotState(STATE_BIRD_IS_READY);
               }
            }
            else if(this.mSlingShotState == STATE_BIRD_IS_READY)
            {
               birdX = this.drawingDragX - bird.radius * Math.cos(this.mShootingAngle / (180 / Math.PI));
               birdY = this.drawingDragY + bird.radius * Math.sin(this.mShootingAngle / (180 / Math.PI));
               if(this.mDragging || this.mBirdShootTime >= 0)
               {
                  bird.setPosition(birdX,birdY,180 - this.mShootingAngle);
               }
               else
               {
                  bird.setPosition(birdX,birdY,this.angle);
               }
               if(this.mShootTheBird)
               {
                  this.shootCurrentBird(this.getLaunchPower(),this.mShootingAngle);
               }
            }
         }
      }
      
      public function shootCurrentBirdFromPosition(x:Number, y:Number, power:Number, angle:Number) : void
      {
         var bird:LevelSlingshotObject = null;
         if(this.mBirds.length > 0)
         {
            bird = this.mBirds[this.mNextBirdIndex];
         }
         if(!bird)
         {
            return;
         }
         bird.setPosition(x,y,180 - this.mShootingAngle);
         this.shootCurrentBird(power,angle);
      }
      
      protected function shootBird() : void
      {
         this.mBirdShooting = false;
         var bird:LevelSlingshotObject = null;
         if(this.mBirds.length > this.mNextBirdIndex)
         {
            bird = this.mBirds[this.mNextBirdIndex];
         }
         if(!bird)
         {
            return;
         }
         this.mTimeOfLastBirdShot = new Date().time;
         this.mLevelMain.shootBird(bird,this.mShootingPower,this.mShootingAngle);
         this.removeSlingshotObject(this.mNextBirdIndex,bird.powerUpSpeed > 0);
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
      
      protected function updateShooting(deltaTimeMilliSeconds:Number) : void
      {
         if(this.mBirdShootTime <= 0)
         {
            return;
         }
         this.mUpdateVisuals = true;
         this.mBirdShootTime -= deltaTimeMilliSeconds;
         if(this.mBirdShootTime <= 0)
         {
            this.mBirdShootTime = 0;
         }
         var time:Number = this.mBirdShootTime / SHOOT_ANIMATION_DURATION;
         var radius:Number = this.mBirdShootRadius * Math.cos(time * Math.PI * 8) * time * time * time * time * time * time;
         this.updateStretch(this.mShootingAngle,radius);
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
      
      public function shootCurrentBird(power:Number, angle:Number) : void
      {
         this.mShootingPower = power;
         this.mShootingAngle = angle;
         this.mBirdShootTime = SHOOT_ANIMATION_DURATION;
         this.mBirdShootRadius = this.mSlingshotRadiusCurrent;
         this.mDragging = false;
         this.mShootTheBird = false;
         this.mBirdShooting = true;
      }
      
      protected function playBirdShotSound() : void
      {
         var soundNum:int = int(Math.random() * 3) + 1;
         SoundEngine.playSound("bird_shot-a" + soundNum);
      }
      
      public function updateBirds(deltaTime:Number, updateLogic:Boolean = true) : void
      {
         var firstBird:int = this.mNextBirdIndex;
         for(var i:int = firstBird; i < this.mBirds.length; i++)
         {
            this.mBirds[i].update(deltaTime,this.mSlingShotState == STATE_CELEBRATE,updateLogic);
         }
      }
      
      public function getCurrentBirdType() : String
      {
         var bird:LevelSlingshotObject = null;
         if(this.mNextBirdIndex < this.mBirds.length)
         {
            bird = this.mBirds[this.mNextBirdIndex];
            return bird.name;
         }
         return null;
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var bird:LevelSlingshotObject = null;
         this.mDragging = false;
         this.setDefaultCoordinatesForRubber();
         if(this.mNextBirdIndexForScoring >= this.mBirds.length)
         {
            return false;
         }
         bird = this.mBirds[this.mNextBirdIndexForScoring];
         if(bird.giveScoreWhenRemainOnLevelEnd)
         {
            bird.startTalking(true);
            this.showScoreForRemainingBird(bird,this.mLevelMain.levelItemManager.getItem(bird.name).destroyedScoreInc);
            this.mBirds[this.mNextBirdIndexForScoring].scoreCounted = true;
            ++this.mNextBirdIndexForScoring;
         }
         else
         {
            this.mBirds[this.mNextBirdIndexForScoring].scoreCounted = false;
            ++this.mNextBirdIndexForScoring;
         }
         return true;
      }
      
      protected function showScoreForRemainingBird(bird:LevelSlingshotObject, score:int) : void
      {
         this.mLevelMain.addScore(score,ScoreCollector.SCORE_TYPE_EXTRA_BIRD,true,bird.x,bird.y - 3,LevelParticle.getTextMaterialFromEngineMaterial(bird.name),bird.levelItem.floatingScoreFont);
      }
      
      public function getMaxScore() : int
      {
         var bird:LevelSlingshotObject = null;
         var score:int = 0;
         for each(bird in this.mBirds)
         {
            score += this.mLevelMain.levelItemManager.getItem(bird.name).destroyedScoreInc;
         }
         return score;
      }
      
      public function getMaxScoreLevelEndSkip() : int
      {
         var bird:LevelSlingshotObject = null;
         var score:int = 0;
         for each(bird in this.mBirds)
         {
            if(!bird.scoreCounted)
            {
               score += this.mLevelMain.levelItemManager.getItem(bird.name).destroyedScoreInc;
            }
         }
         return score;
      }
      
      public function getInitialMaxScore() : int
      {
         return this.mMaxScore;
      }
      
      protected function groundSlingshot() : void
      {
         var index:int = 0;
         var maxSteps:int = 1000;
         var legX:Number = Math.cos(this.mAngle + Math.PI / 2) * this.mLegLength;
         var legY:Number = Math.sin(this.mAngle + Math.PI / 2) * this.mLegLength;
         do
         {
            index = this.mLevelMain.objects.getObjectIndexFromPoint(this.mSlingshotCenterX + legX,this.mSlingshotCenterY + legY);
            if(index != -1)
            {
               break;
            }
            this.applyGravity(0.1);
         }
         while(maxSteps-- > 0);
         
         this.mGroundCheckTimer = -1;
      }
      
      public function updateScrollAndScale(sideScroll:Number, verticalScroll:Number) : void
      {
         this.mSprite.x = -sideScroll;
         this.mSprite.y = -verticalScroll;
      }
      
      public function canStartDragging(p:Point) : Boolean
      {
         if(this.mSlingShotState == STATE_BIRD_IS_READY && this.setNewCoordinatesForRubber(p.x,p.y,true))
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
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
      }
      
      public function shoot() : void
      {
         this.mShootTheBird = true;
      }
      
      protected function removeSlingshotObject(objectIndex:int, applySpecialDestroyEffects:Boolean = false) : void
      {
         var slingShotObject:LevelSlingshotObject = null;
         if(objectIndex < 0)
         {
            return;
         }
         if(this.mBirds[objectIndex])
         {
            slingShotObject = this.mBirds[objectIndex];
            this.mBirdsSprite.removeChild(slingShotObject.sprite);
            if(applySpecialDestroyEffects)
            {
               this.showDestructionParticles(this.mBirds[objectIndex]);
            }
            slingShotObject.dispose();
            this.mBirds[objectIndex] = null;
         }
         this.mBirds.splice(objectIndex,1);
      }
      
      protected function showDestructionParticles(bird:LevelSlingshotObject) : void
      {
         var angleRad:Number = NaN;
         var randomX:Number = NaN;
         var randomY:Number = NaN;
         var angle:Number = 90;
         for(var p:int = 0; p < 5; p++)
         {
            angle += Math.random() * (720 / 5);
            angleRad = angle / (180 / Math.PI);
            randomX = -bird.sprite.width * LevelMain.PIXEL_TO_B2_SCALE;
            randomX += Math.random() * -randomX * 2;
            randomY = -bird.sprite.height * LevelMain.PIXEL_TO_B2_SCALE;
            randomY += Math.random() * -randomY * 2;
            this.mLevelMain.particles.addParticle(LevelParticle.PARTICLE_NAME_BIRD_DESTRUCTION,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,bird.x + randomX,bird.y + randomY,1500,"",LevelParticle.getParticleMaterialFromEngineMaterial(bird.name),5 * Math.cos(angleRad),-5 * Math.sin(angleRad),5,5 * 20);
         }
         this.mLevelMain.particles.addParticle(LevelParticle.PARTICLE_NAME_BLOCK_DESTRUCTION_CORE,LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,bird.x,bird.y,1000,"",0,Math.cos(angleRad),0,5,5 * 5);
      }
      
      public function removeObject(object:LevelSlingshotObject) : void
      {
         this.removeSlingshotObject(this.mBirds.indexOf(object));
      }
      
      public function sortBirds() : void
      {
         var bird:LevelSlingshotObject = null;
         this.mBirds.sort(this.birdSorter);
         while(this.mBirdsSprite.numChildren > 0)
         {
            this.mBirdsSprite.removeChildAt(0);
         }
         for(var i:int = 0; i < this.mBirds.length; i++)
         {
            bird = this.mBirds[i];
            this.mBirdsSprite.addChildAt(bird.sprite,0);
         }
      }
      
      private function birdSorter(A:LevelSlingshotObject, B:LevelSlingshotObject) : Number
      {
         if(A.launchIndex < B.launchIndex)
         {
            return -1;
         }
         if(A.launchIndex > B.launchIndex)
         {
            return 1;
         }
         return 0;
      }
      
      public function getObjectFromPoint(newX:Number, newY:Number) : LevelSlingshotObject
      {
         for(var i:int = 0; i < this.mBirds.length; i++)
         {
            if(this.mBirds[i])
            {
               if(this.mBirds[i].isInCoordinates(newX,newY))
               {
                  return this.mBirds[i];
               }
            }
         }
         return null;
      }
      
      public function intersectsWithPoint(newX:Number, newY:Number) : LevelSlingshot
      {
         if(newX >= this.mX - this.mSlingshotRadiusMax / 4 && newX <= this.mX + this.mSlingshotRadiusMax / 4 && newY >= this.mY - this.mSlingshotRadiusMax / 4 && newY <= this.mY + this.mLegLength)
         {
            return this;
         }
         return null;
      }
      
      public function writeSlingshotInformation(dst:LevelModel) : void
      {
         var obj:LevelSlingshotObject = null;
         var data:LevelSlingshotObjectModel = null;
         dst.slingshotX = this.mX;
         dst.slingshotY = this.mY;
         for(var i:Number = 0; i < this.mBirds.length; i++)
         {
            obj = this.mBirds[i];
            data = new LevelSlingshotObjectModel();
            data.x = obj.x;
            data.y = obj.y;
            data.type = obj.name;
            dst.addSlingShotObject(data);
         }
      }
      
      public function removeAllGameObjects() : void
      {
         while(this.mBirds.length > 0)
         {
            this.removeObject(this.mBirds[0]);
         }
      }
      
      public function getObjectsWithinBoundingBox(min:Point, max:Point) : Array
      {
         var list:Array = new Array();
         for(var i:Number = 0; i < this.mBirds.length; i++)
         {
            if(this.mBirds[i].isInsideRectangle(min.y,max.y,min.x,max.x))
            {
               list.push(this.mBirds[i]);
            }
         }
         if(this.mX > min.x && this.mX < max.x && this.mY > min.y && this.mY < max.y)
         {
            list.push(this);
         }
         return list;
      }
      
      public function addNewBirdToEndOfList(newName:String, newX:Number, newY:Number, angle:Number) : LevelSlingshotObject
      {
         var obj:LevelSlingshotObject = this.addSlingshotObject(newName,newX,newY,angle);
         this.resetBirdsIndexesToSlingshotDistance();
         return obj;
      }
      
      public function getBirdCount() : int
      {
         return this.mBirds.length;
      }
      
      public function getTotalBirdCount() : int
      {
         return this.mTotalBirdsCount;
      }
      
      public function resetBirdsIndexesToSlingshotDistance() : void
      {
         this.mBirds.sort(this.sortBirdsByDistanceToSlingshot);
         for(var i:int = 0; i < this.mBirds.length; i++)
         {
            this.mBirds[i].launchIndex = i;
         }
         this.mNextBirdIndex = 0;
      }
      
      private function sortBirdsByDistanceToSlingshot(birdA:LevelSlingshotObject, birdB:LevelSlingshotObject) : Number
      {
         var distA:Number = Math.pow(birdA.x - this.mX,2) + Math.pow(birdA.y - this.mY,2);
         var distB:Number = Math.pow(birdB.x - this.mX,2) + Math.pow(birdB.y - this.mY,2);
         return distA - distB;
      }
   }
}
