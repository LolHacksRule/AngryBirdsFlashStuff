package com.AngryBirds.LevelPlayer
{
   import com.AngryBirds.LevelItemsData.LevelItemResourcePathSound;
   import com.AngryBirds.LevelItemsData.LevelItems;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.assets.AssetCache;
   import com.rovio.factory.Log;
   import com.rovio.sound.SoundEngine;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class LevelSlingshot extends Sprite
   {
      
      public static const MIN_SHOOT_RATE:Number = 0.4;
      
      public static const ROPE_COLOR:int = 3151368;
      
      public static const STATE_STAY_EMPTY:int = 0;
      
      public static const STATE_WAIT_FOR_NEXT_BIRD:int = 1;
      
      public static const STATE_BIRD_IS_READY:int = 2;
      
      public static const STATE_BIRDS_ARE_GONE:int = 3;
      
      public static const STATE_AWARDING_REMAINING_BIRD_SCORES:int = 4;
      
      public static const POWER_UP_BLACK_BIRD:Number = 0;
      
      public static const POWER_UP_EXTRA_STRENGTH:Number = 1;
      
      public static const MAX_POWERUPS_PER_LEVEL:int = 1;
      
      private static const MAX_BIRD_COUNT:int = 8;
      
      private static const MAX_BIRD_COUNT_EXTENSION:int = 0;
       
      
      public var mLevelMain:LevelMain;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var mLegContactPoint:Number;
      
      public var mSlingshotXCenter:Number;
      
      public var mSlingshotYCenter:Number;
      
      public var mSlingshotXcurrent:Number;
      
      public var mSlingshotYcurrent:Number;
      
      public var mSlingshotRadiusCurrent:Number;
      
      public var mCanPlayStrechSound:Boolean = false;
      
      public var mSlingshotRadiusMax:Number;
      
      public var mBirds:Array;
      
      public var mNextBirdIndex:int;
      
      public var mNextBirdIndexForScoring:int;
      
      public var mTimer:Number;
      
      public var mSlingshotAnimation:MovieClip;
      
      public var mSlingshotForeground:MovieClip;
      
      public var mSlingshotBirds:MovieClip;
      
      public var mRopeBackground:Shape;
      
      public var mRopeRubber:Shape;
      
      public var mRopeForeground:Shape;
      
      public var mSlingshotBendState:int = 0;
      
      public var mSlingshotAngle:Number = 0;
      
      public var mRopeForegroundLocations:Array;
      
      public var mRopeBackgroundLocations:Array;
      
      public var mSlingShotState:int;
      
      public var mUpdateVisuals:Boolean;
      
      public var mDragging:Boolean = false;
      
      public var mShootTheBird:Boolean = false;
      
      public var mGroundCheckTimer:Number;
      
      public var mPowerupsUsedInLevel:int = 0;
      
      public function LevelSlingshot(param1:LevelMain, param2:XMLList)
      {
         var _loc3_:XML = null;
         super();
         this.mLevelMain = param1;
         if(param2)
         {
            this.mX = param2.@x;
            this.mY = param2.@y;
            this.loadAnimations();
            this.mBirds = new Array();
            for each(_loc3_ in param2.Birds.Bird)
            {
               this.mBirds[this.mBirds.length] = new LevelSlingshotObject(this,_loc3_.@id,_loc3_.@x,_loc3_.@y);
            }
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
         this.mUpdateVisuals = true;
         this.mGroundCheckTimer = 0;
         this.sortBirds();
         this.update(0);
      }
      
      public function setSlingShotState(param1:int) : void
      {
         this.mSlingShotState = param1;
         this.mDragging = false;
         if(this.mSlingShotState == STATE_STAY_EMPTY)
         {
            this.setNewCoordinatesForRubber(this.mSlingshotXCenter,this.mSlingshotYCenter + this.mSlingshotRadiusMax / 8);
            this.mTimer = 1000;
         }
         else if(this.mSlingShotState == STATE_WAIT_FOR_NEXT_BIRD)
         {
            this.setNewCoordinatesForRubber(this.mSlingshotXCenter,this.mSlingshotYCenter + this.mSlingshotRadiusMax / 8);
            this.mTimer = 0;
         }
         else if(this.mSlingShotState == STATE_BIRD_IS_READY)
         {
            this.mTimer = 10000;
            this.mShootTheBird = false;
            this.setNewCoordinatesForRubber(this.mSlingshotXCenter,this.mSlingshotYCenter + this.mSlingshotRadiusMax / 8);
         }
         else if(this.mSlingShotState == STATE_BIRDS_ARE_GONE)
         {
            this.setNewCoordinatesForRubber(this.mSlingshotXCenter,this.mSlingshotYCenter + this.mSlingshotRadiusMax / 8);
            this.mTimer = 2000;
         }
         else if(this.mSlingShotState == STATE_AWARDING_REMAINING_BIRD_SCORES)
         {
            this.mNextBirdIndexForScoring = this.mNextBirdIndex;
         }
      }
      
      public function isOutOfBirds() : Boolean
      {
         return this.mSlingShotState == STATE_BIRDS_ARE_GONE && this.mTimer <= 0;
      }
      
      public function loadAnimations() : void
      {
         var _loc1_:Class = AssetCache.getAssetFromCache("Slingshot");
         this.mSlingshotAnimation = new _loc1_();
         this.mSlingshotAnimation.x = this.mX / LevelMain.PIXEL_TO_B2_SCALE;
         this.mSlingshotAnimation.y = this.mY / LevelMain.PIXEL_TO_B2_SCALE;
         this.loadBendingAreaCircle();
         this.createRopes();
         addChild(this.mRopeBackground);
         addChild(this.mSlingshotAnimation);
         this.mSlingshotBirds = new MovieClip();
         addChild(this.mSlingshotBirds);
         addChild(this.mRopeRubber);
         this.mSlingshotForeground = new MovieClip();
         this.mSlingshotForeground.x = this.mX / LevelMain.PIXEL_TO_B2_SCALE;
         this.mSlingshotForeground.y = this.mY / LevelMain.PIXEL_TO_B2_SCALE;
         this.mSlingshotForeground.addChild(this.mSlingshotAnimation.getChildByName("State1fg"));
         this.mSlingshotForeground.addChild(this.mSlingshotAnimation.getChildByName("State2fg"));
         this.mSlingshotForeground.addChild(this.mSlingshotAnimation.getChildByName("State3fg"));
         addChild(this.mSlingshotForeground);
         addChild(this.mRopeForeground);
         var _loc2_:DisplayObject = this.mSlingshotAnimation.getChildByName("CollisionArea1");
         this.mLegContactPoint = this.mY + _loc2_.getRect(this.mSlingshotAnimation).bottom * LevelMain.PIXEL_TO_B2_SCALE;
         this.mSlingshotAnimation.removeChild(_loc2_);
         _loc2_ = null;
      }
      
      public function loadBendingAreaCircle() : void
      {
         var _loc1_:Sprite = this.mSlingshotAnimation.getChildByName("Circle") as Sprite;
         var _loc2_:Rectangle = _loc1_.getRect(this.mSlingshotAnimation);
         this.mSlingshotXCenter = this.mX + (_loc2_.x + _loc2_.width / 2) * LevelMain.PIXEL_TO_B2_SCALE;
         this.mSlingshotYCenter = this.mY + (_loc2_.y + _loc2_.height / 2) * LevelMain.PIXEL_TO_B2_SCALE;
         this.mSlingshotRadiusMax = _loc2_.width / 2 * LevelMain.PIXEL_TO_B2_SCALE;
         this.mSlingshotAnimation.removeChild(_loc1_);
         _loc2_ = null;
         _loc1_ = null;
      }
      
      public function createRopes() : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:DisplayObject = null;
         this.mRopeBackground = new Shape();
         this.mRopeForeground = new Shape();
         this.mRopeRubber = new Shape();
         this.mRopeRubber.graphics.lineStyle(1);
         this.mRopeRubber.graphics.beginFill(ROPE_COLOR,1);
         this.mRopeRubber.graphics.drawRect(-5,-3,10,6);
         this.mRopeForegroundLocations = new Array();
         this.mRopeBackgroundLocations = new Array();
         var _loc1_:Array = new Array("State1bg","State2bg","State3bg");
         var _loc4_:int = 0;
         while(_loc4_ < 3)
         {
            _loc3_ = (this.mSlingshotAnimation.getChildByName(_loc1_[_loc4_]) as DisplayObjectContainer).getChildByName("SlingMarkerBg");
            _loc2_ = _loc3_.getRect(this.mSlingshotAnimation);
            this.mRopeBackgroundLocations[_loc4_] = new Point(this.mX + (_loc2_.x + _loc2_.width / 2) * LevelMain.PIXEL_TO_B2_SCALE,this.mY + (_loc2_.y + _loc2_.height / 2) * LevelMain.PIXEL_TO_B2_SCALE);
            (this.mSlingshotAnimation.getChildByName(_loc1_[_loc4_]) as DisplayObjectContainer).removeChild(_loc3_);
            _loc3_ = (this.mSlingshotAnimation.getChildByName(_loc1_[_loc4_]) as DisplayObjectContainer).getChildByName("SlingMarkerFg");
            _loc2_ = _loc3_.getRect(this.mSlingshotAnimation);
            this.mRopeForegroundLocations[_loc4_] = new Point(this.mX + (_loc2_.x + _loc2_.width / 2) * LevelMain.PIXEL_TO_B2_SCALE,this.mY + (_loc2_.y + _loc2_.height / 2) * LevelMain.PIXEL_TO_B2_SCALE);
            (this.mSlingshotAnimation.getChildByName(_loc1_[_loc4_]) as DisplayObjectContainer).removeChild(_loc3_);
            _loc4_++;
         }
         _loc2_ = null;
         _loc1_ = null;
         _loc3_ = null;
      }
      
      public function updateAnimations(param1:Number) : void
      {
         this.mSlingshotBendState = 0;
         this.mRopeRubber.x = this.mSlingshotXcurrent / LevelMain.PIXEL_TO_B2_SCALE;
         this.mRopeRubber.y = this.mSlingshotYcurrent / LevelMain.PIXEL_TO_B2_SCALE;
         var _loc2_:Rectangle = this.mRopeRubber.getRect(this.mLevelMain);
         this.mRopeRubber.rotation = this.mSlingshotAngle;
         var _loc3_:int = 4 + 4 * ((this.mSlingshotRadiusMax - this.mSlingshotRadiusCurrent) / this.mSlingshotRadiusMax);
         this.mRopeBackground.graphics.clear();
         this.mRopeBackground.graphics.lineStyle(_loc3_,ROPE_COLOR);
         this.mRopeBackground.graphics.moveTo(this.mSlingshotXcurrent / LevelMain.PIXEL_TO_B2_SCALE,this.mSlingshotYcurrent / LevelMain.PIXEL_TO_B2_SCALE);
         this.mRopeBackground.graphics.lineTo((this.mRopeBackgroundLocations[this.mSlingshotBendState] as Point).x / LevelMain.PIXEL_TO_B2_SCALE,(this.mRopeBackgroundLocations[this.mSlingshotBendState] as Point).y / LevelMain.PIXEL_TO_B2_SCALE);
         this.mRopeForeground.graphics.clear();
         this.mRopeForeground.graphics.lineStyle(_loc3_,ROPE_COLOR);
         this.mRopeForeground.graphics.moveTo(this.mSlingshotXcurrent / LevelMain.PIXEL_TO_B2_SCALE,this.mSlingshotYcurrent / LevelMain.PIXEL_TO_B2_SCALE);
         this.mRopeForeground.graphics.lineTo((this.mRopeForegroundLocations[this.mSlingshotBendState] as Point).x / LevelMain.PIXEL_TO_B2_SCALE,(this.mRopeForegroundLocations[this.mSlingshotBendState] as Point).y / LevelMain.PIXEL_TO_B2_SCALE);
         if(this.mSlingshotBendState == 0)
         {
            this.mSlingshotAnimation.getChildByName("State1bg").visible = true;
            this.mSlingshotForeground.getChildByName("State1fg").visible = true;
            this.mSlingshotAnimation.getChildByName("State2bg").visible = false;
            this.mSlingshotForeground.getChildByName("State2fg").visible = false;
            this.mSlingshotAnimation.getChildByName("State3bg").visible = false;
            this.mSlingshotForeground.getChildByName("State3fg").visible = false;
         }
         else if(this.mSlingshotBendState == 1)
         {
            this.mSlingshotAnimation.getChildByName("State1bg").visible = false;
            this.mSlingshotForeground.getChildByName("State1fg").visible = false;
            this.mSlingshotAnimation.getChildByName("State2bg").visible = true;
            this.mSlingshotForeground.getChildByName("State2fg").visible = true;
            this.mSlingshotAnimation.getChildByName("State3bg").visible = false;
            this.mSlingshotForeground.getChildByName("State3fg").visible = false;
         }
         else if(this.mSlingshotBendState == 2)
         {
            this.mSlingshotAnimation.getChildByName("State1bg").visible = false;
            this.mSlingshotForeground.getChildByName("State1fg").visible = false;
            this.mSlingshotAnimation.getChildByName("State2bg").visible = false;
            this.mSlingshotForeground.getChildByName("State2fg").visible = false;
            this.mSlingshotAnimation.getChildByName("State3bg").visible = true;
            this.mSlingshotForeground.getChildByName("State3fg").visible = true;
         }
         this.mSlingshotAnimation.graphics.clear();
         this.mSlingshotAnimation.graphics.lineStyle(1);
         this.mSlingshotAnimation.graphics.beginFill(16711680,1);
         this.mSlingshotAnimation.graphics.drawRect(this.mSlingshotXCenter / LevelMain.PIXEL_TO_B2_SCALE - 2,this.mSlingshotYCenter / LevelMain.PIXEL_TO_B2_SCALE - 2,4,4);
         this.mUpdateVisuals = false;
      }
      
      public function clear() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.mBirds.length)
         {
            (this.mBirds[_loc1_] as LevelSlingshotObject).clear();
            this.mBirds[_loc1_] = null;
            _loc1_++;
         }
         this.mBirds = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         this.mSlingshotAnimation = null;
         this.mSlingshotForeground = null;
         this.mSlingshotBirds = null;
         this.mRopeBackground = null;
         this.mRopeRubber = null;
         this.mRopeForeground = null;
         this.mRopeForegroundLocations = null;
         this.mRopeBackgroundLocations = null;
         this.mLevelMain.removeChild(this);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.mSlingshotXcurrent == param1 && this.mSlingshotYcurrent == param2)
         {
            return true;
         }
         this.mSlingshotRadiusCurrent = Math.sqrt((param2 - this.mSlingshotYCenter) * (param2 - this.mSlingshotYCenter) + (param1 - this.mSlingshotXCenter) * (param1 - this.mSlingshotXCenter));
         if(this.mSlingshotRadiusCurrent > this.mSlingshotRadiusMax)
         {
            if(param3)
            {
               this.mSlingshotRadiusCurrent = Math.sqrt((this.mSlingshotYcurrent - this.mSlingshotYCenter) * (this.mSlingshotYcurrent - this.mSlingshotYCenter) + (this.mSlingshotXcurrent - this.mSlingshotXCenter) * (this.mSlingshotXcurrent - this.mSlingshotXCenter));
               return false;
            }
            param1 = this.mSlingshotXCenter + this.mSlingshotRadiusMax * (param1 - this.mSlingshotXCenter) / this.mSlingshotRadiusCurrent;
            param2 = this.mSlingshotYCenter + this.mSlingshotRadiusMax * (param2 - this.mSlingshotYCenter) / this.mSlingshotRadiusCurrent;
            this.mSlingshotRadiusCurrent = this.mSlingshotRadiusMax;
         }
         this.mSlingshotXcurrent = param1;
         this.mSlingshotYcurrent = param2;
         this.mSlingshotAngle = Math.atan2(-(this.mSlingshotYcurrent - this.mSlingshotYCenter),this.mSlingshotXcurrent - this.mSlingshotXCenter);
         this.mSlingshotAngle *= 180 / Math.PI;
         _loc4_ = 8;
         _loc5_ = 4;
         _loc6_ = this.mSlingshotRadiusMax / 2;
         if(this.mSlingshotRadiusCurrent > _loc6_ && this.mSlingshotAngle > -90 - _loc4_ && this.mSlingshotAngle < -90 + _loc4_)
         {
            param1 = this.mSlingshotXCenter + _loc6_ * (param1 - this.mSlingshotXCenter) / this.mSlingshotRadiusCurrent;
            param2 = this.mSlingshotYCenter + _loc6_ * (param2 - this.mSlingshotYCenter) / this.mSlingshotRadiusCurrent;
            this.mSlingshotRadiusCurrent = _loc6_;
            this.mSlingshotXcurrent = param1;
            this.mSlingshotYcurrent = param2;
         }
         else if(this.mSlingshotRadiusCurrent > _loc6_ && this.mSlingshotAngle > -90 - _loc4_ - _loc5_ && this.mSlingshotAngle < -90 + _loc4_ + _loc5_)
         {
            _loc7_ = _loc6_ + (this.mSlingshotRadiusMax - _loc6_) * (Math.abs(this.mSlingshotAngle - -90) - _loc4_) / _loc5_;
            param1 = this.mSlingshotXCenter + _loc7_ * (param1 - this.mSlingshotXCenter) / this.mSlingshotRadiusCurrent;
            param2 = this.mSlingshotYCenter + _loc7_ * (param2 - this.mSlingshotYCenter) / this.mSlingshotRadiusCurrent;
            this.mSlingshotRadiusCurrent = _loc7_;
            this.mSlingshotXcurrent = param1;
            this.mSlingshotYcurrent = param2;
         }
         if(this.mSlingshotRadiusCurrent <= this.mSlingshotRadiusMax * 0.45)
         {
            this.mCanPlayStrechSound = true;
         }
         else if(this.mCanPlayStrechSound && this.mSlingshotRadiusCurrent >= this.mSlingshotRadiusMax * 0.8)
         {
            SoundEngine.playSound("SlingshotStreched");
            this.mCanPlayStrechSound = false;
         }
         this.mUpdateVisuals = true;
         return true;
      }
      
      public function applyGravity(param1:Number) : void
      {
         this.setPosition(this.mX,this.mY + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.mX;
         this.mX = param1;
         var _loc5_:Number = param2 - this.mY;
         this.mY = param2;
         this.mSlingshotAnimation.y = this.mY / LevelMain.PIXEL_TO_B2_SCALE;
         this.mSlingshotForeground.y = this.mY / LevelMain.PIXEL_TO_B2_SCALE;
         this.mSlingshotAnimation.x = this.mX / LevelMain.PIXEL_TO_B2_SCALE;
         this.mSlingshotForeground.x = this.mX / LevelMain.PIXEL_TO_B2_SCALE;
         this.mLegContactPoint += _loc5_;
         this.mSlingshotYCenter += _loc5_;
         this.mSlingshotYcurrent += _loc5_;
         this.mSlingshotXCenter += _loc4_;
         this.mSlingshotXcurrent += _loc4_;
         var _loc6_:int = 0;
         while(_loc6_ < 3)
         {
            (this.mRopeForegroundLocations[_loc6_] as Point).y += _loc5_;
            (this.mRopeBackgroundLocations[_loc6_] as Point).y += _loc5_;
            (this.mRopeForegroundLocations[_loc6_] as Point).x += _loc4_;
            (this.mRopeBackgroundLocations[_loc6_] as Point).x += _loc4_;
            _loc6_++;
         }
         if(param3)
         {
            this.updateAnimations(0);
         }
         this.mUpdateVisuals = true;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:LevelSlingshotObject = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.updateGroundControl(param1);
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
            this.updateBirds(param1);
            _loc2_ = this.mBirds[this.mNextBirdIndex] as LevelSlingshotObject;
            if(!this.mLevelMain.mEditorMode)
            {
               if(!_loc2_)
               {
                  this.setSlingShotState(STATE_BIRDS_ARE_GONE);
               }
               else if(this.mSlingShotState == STATE_STAY_EMPTY)
               {
                  if(this.mTimer <= 0 && !this.mLevelMain.mLevelCamera.isOnCastleView() && _loc2_.mBouncingTimer <= 0)
                  {
                     this.setSlingShotState(STATE_WAIT_FOR_NEXT_BIRD);
                     _loc2_.startGoingToSlingshot();
                  }
               }
               else if(this.mSlingShotState != STATE_AWARDING_REMAINING_BIRD_SCORES)
               {
                  if(this.mSlingShotState == STATE_WAIT_FOR_NEXT_BIRD)
                  {
                     _loc2_.approachSlingshot(param1);
                     if(_loc2_.mOnSlingshot)
                     {
                        this.setSlingShotState(STATE_BIRD_IS_READY);
                     }
                  }
                  else if(this.mSlingShotState == STATE_BIRD_IS_READY)
                  {
                     _loc2_.mX = this.mSlingshotXcurrent - _loc2_.mRadius * Math.cos(this.mSlingshotAngle / (180 / Math.PI));
                     _loc2_.mY = this.mSlingshotYcurrent + _loc2_.mRadius * Math.sin(this.mSlingshotAngle / (180 / Math.PI));
                     _loc2_.updateRenderer();
                     if(this.mShootTheBird)
                     {
                        this.mLevelMain.mLevelObjects.addObject(_loc2_.mName,_loc2_.mX,_loc2_.mY);
                        this.mLevelMain.mActiveObject = this.mLevelMain.mLevelObjects.mObjects[this.mLevelMain.mLevelObjects.mObjects.length - 1] as LevelObject;
                        this.mLevelMain.addBirdTrail();
                        if(_loc2_.mPowerUpDamageMultiplier > 1)
                        {
                           this.mLevelMain.mActiveObject.setPowerUpDamageMultiplier(_loc2_.mPowerUpDamageMultiplier);
                           this.mLevelMain.mActiveObject.mRenderer.createSparkles();
                        }
                        _loc3_ = _loc2_.mName.toUpperCase() == "BIRD_GREEN" ? Number(60) : Number(50);
                        _loc4_ = -_loc3_ * this.mSlingshotRadiusCurrent / this.mSlingshotRadiusMax * Math.cos(this.mSlingshotAngle / (180 / Math.PI));
                        _loc5_ = _loc3_ * this.mSlingshotRadiusCurrent / this.mSlingshotRadiusMax * Math.sin(this.mSlingshotAngle / (180 / Math.PI));
                        this.mLevelMain.mActiveObject.setLinearVelocity(new b2Vec2(_loc4_,_loc5_),false,true);
                        _loc2_.mAnimations.visible = false;
                        ++this.mNextBirdIndex;
                        this.mShootTheBird = false;
                        if(this.mNextBirdIndex >= this.mBirds.length)
                        {
                           this.setSlingShotState(STATE_BIRDS_ARE_GONE);
                        }
                        else
                        {
                           this.setSlingShotState(STATE_STAY_EMPTY);
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function updateBirds(param1:Number) : void
      {
         var _loc2_:int = !!this.mDragging ? int(this.mNextBirdIndex) : int(this.mNextBirdIndex);
         var _loc3_:int = _loc2_;
         while(_loc3_ < this.mBirds.length)
         {
            (this.mBirds[_loc3_] as LevelSlingshotObject).update(param1);
            _loc3_++;
         }
      }
      
      public function updateScoreForRemaininBirds() : Boolean
      {
         var _loc1_:LevelSlingshotObject = null;
         var _loc2_:Number = NaN;
         if(this.mNextBirdIndexForScoring >= this.mBirds.length)
         {
            return false;
         }
         _loc1_ = this.mBirds[this.mNextBirdIndexForScoring] as LevelSlingshotObject;
         _loc2_ = LevelItems.getItem(_loc1_.mName).mScore;
         this.mLevelMain.addScore(_loc2_,true,_loc1_.mX,_loc1_.mY - 3,LevelParticle.getTextMaterialFromEngineMaterial(_loc1_.mName));
         _loc1_.startTalking(-1,true);
         if(!_loc1_.mOnSlingshot && _loc1_.mBouncingTimer <= 0)
         {
            _loc1_.startBouncing();
         }
         ++this.mNextBirdIndexForScoring;
         return true;
      }
      
      public function getMaxScore() : Number
      {
         var _loc4_:LevelSlingshotObject = null;
         var _loc1_:Number = 0;
         var _loc2_:int = 1;
         var _loc3_:int = _loc2_;
         while(_loc3_ < this.mBirds.length)
         {
            _loc4_ = this.mBirds[_loc3_] as LevelSlingshotObject;
            _loc1_ += LevelItems.getItem(_loc4_.mName).mScore;
            _loc3_++;
         }
         return _loc1_;
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.mGroundCheckTimer >= 0)
         {
            this.mGroundCheckTimer -= param1;
            if(this.mGroundCheckTimer <= 0)
            {
               _loc2_ = this.mLevelMain.mLevelObjects.getObjectIndexFromPoint(this.mSlingshotXCenter,this.mLegContactPoint);
               if(_loc2_ < 0)
               {
                  this.applyGravity(param1 / 100);
                  this.mGroundCheckTimer = 0;
               }
               else if((this.mLevelMain.mLevelObjects.mObjects[_loc2_] as LevelObject).mDefence < 0)
               {
                  this.mGroundCheckTimer = -1;
               }
               else if((this.mLevelMain.mLevelObjects.mObjects[_loc2_] as LevelObject).considerSleeping())
               {
                  this.mGroundCheckTimer = 2000;
               }
               else
               {
                  this.mGroundCheckTimer = 500;
               }
            }
         }
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         x = -param1;
         y = -param2;
      }
      
      public function canWeStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == STATE_BIRD_IS_READY && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canWeShootTheBird() : Boolean
      {
         return this.mSlingShotState == STATE_BIRD_IS_READY && this.mSlingshotRadiusCurrent > this.mSlingshotRadiusMax * MIN_SHOOT_RATE;
      }
      
      public function cancelDraging() : void
      {
         this.setSlingShotState(STATE_BIRD_IS_READY);
         var _loc1_:LevelSlingshotObject = this.mBirds[this.mNextBirdIndex] as LevelSlingshotObject;
         _loc1_.startTalking(LevelItemResourcePathSound.SOUND_UNSELECTED);
      }
      
      public function startDraging() : void
      {
         this.mDragging = true;
         var _loc1_:LevelSlingshotObject = this.mBirds[this.mNextBirdIndex] as LevelSlingshotObject;
         _loc1_.startTalking(LevelItemResourcePathSound.SOUND_SELECTED);
      }
      
      public function applyPowerup(param1:int) : void
      {
         if(this.mPowerupsUsedInLevel >= MAX_POWERUPS_PER_LEVEL)
         {
            return;
         }
         ++this.mPowerupsUsedInLevel;
         switch(param1)
         {
            case POWER_UP_BLACK_BIRD:
               this.powerUpAddNewBird("BIRD_BLACK");
               break;
            case POWER_UP_EXTRA_STRENGTH:
               this.powerUpMadeTheBirdStronger();
         }
      }
      
      public function powerUpAddNewBird(param1:String) : void
      {
         if(this.mDragging)
         {
            this.cancelDraging();
         }
         var _loc2_:LevelSlingshotObject = this.mBirds[this.mNextBirdIndex] as LevelSlingshotObject;
         _loc2_.fallFromSlingshot();
         this.mBirds.splice(this.mNextBirdIndex,0,new LevelSlingshotObject(this,param1,this.mX,this.mY - 5));
         this.setSlingShotState(STATE_STAY_EMPTY);
      }
      
      public function powerUpMadeTheBirdStronger() : void
      {
         var _loc1_:LevelSlingshotObject = this.mBirds[this.mNextBirdIndex] as LevelSlingshotObject;
         _loc1_.powerUpSetSpecialDamagePower();
      }
      
      public function getLevelDataInArrayFormat() : Array
      {
         var _loc5_:LevelSlingshotObject = null;
         var _loc1_:Array = new Array();
         var _loc2_:Number = this.mX;
         var _loc3_:Number = this.mY;
         _loc2_ = LevelEditor.roundUpCoordinate(_loc2_,true);
         _loc3_ = LevelEditor.roundUpCoordinate(_loc3_,true);
         _loc1_[0] = new Array("slingshot",_loc2_,_loc3_);
         var _loc4_:int = 0;
         while(_loc4_ < this.mBirds.length)
         {
            if(_loc5_ = this.mBirds[_loc4_] as LevelSlingshotObject)
            {
               _loc2_ = _loc5_.mX;
               _loc3_ = _loc5_.mY;
               _loc2_ = LevelEditor.roundUpCoordinate(_loc2_,true);
               _loc3_ = LevelEditor.roundUpCoordinate(_loc3_,true);
               _loc1_[_loc1_.length] = new Array(_loc5_.mName,_loc2_,_loc3_);
            }
            _loc4_++;
         }
         return _loc1_;
      }
      
      public function loadLevelFromArrayFormat(param1:Array) : void
      {
         this.removeAllTheObjects();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            if(param1[_loc2_][0] == "slingshot")
            {
               this.setPosition(param1[_loc2_][1],param1[_loc2_][2],true);
            }
            else
            {
               this.mBirds[this.mBirds.length] = new LevelSlingshotObject(this,param1[_loc2_][0],param1[_loc2_][1],param1[_loc2_][2]);
            }
            _loc2_++;
         }
         this.sortBirds();
      }
      
      public function removeAllTheObjects() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.mBirds.length)
         {
            (this.mBirds[_loc1_] as LevelSlingshotObject).clear();
            this.mBirds[_loc1_] = null;
            _loc1_++;
         }
         this.mBirds = null;
         this.mBirds = new Array();
         this.mNextBirdIndex = 0;
         this.setSlingShotState(STATE_STAY_EMPTY);
         this.mPowerupsUsedInLevel = 0;
      }
      
      public function removeObject(param1:int) : void
      {
         if(param1 < 0)
         {
            return;
         }
         if(this.mBirds[param1])
         {
            (this.mBirds[param1] as LevelSlingshotObject).clear();
            this.mBirds[param1] = null;
         }
         this.mBirds.splice(param1,1);
      }
      
      public function addNewBirdToEndOfList(param1:String, param2:Number, param3:Number) : void
      {
         this.mBirds[this.mBirds.length] = new LevelSlingshotObject(this,param1,param2,param3);
         this.sortBirds();
      }
      
      public function getSlingshotinXML() : String
      {
         var _loc5_:LevelSlingshotObject = null;
         var _loc1_:Number = this.mX;
         var _loc2_:Number = this.mY;
         _loc1_ = LevelEditor.roundUpCoordinate(_loc1_,true);
         _loc2_ = LevelEditor.roundUpCoordinate(_loc2_,true);
         var _loc3_:String = "";
         _loc3_ += "<Slingshot x = \"" + _loc1_ + "\" y = \"" + _loc2_ + "\">" + AngryBirdsSocial.LINE_BREAK_XML;
         _loc3_ += "    <Birds>" + AngryBirdsSocial.LINE_BREAK_XML;
         var _loc4_:int = 0;
         while(_loc4_ < this.mBirds.length)
         {
            if(_loc5_ = this.mBirds[_loc4_] as LevelSlingshotObject)
            {
               _loc1_ = _loc5_.mX;
               _loc2_ = _loc5_.mY;
               _loc1_ = LevelEditor.roundUpCoordinate(_loc1_,true);
               _loc2_ = LevelEditor.roundUpCoordinate(_loc2_,true);
               _loc3_ += "        <Bird id = \"" + _loc5_.mName + "\" x = \"" + _loc1_ + "\" y = \"" + _loc2_ + "\"></Bird>" + AngryBirdsSocial.LINE_BREAK_XML;
            }
            _loc4_++;
         }
         _loc3_ += "    </Birds>" + AngryBirdsSocial.LINE_BREAK_XML;
         return _loc3_ + ("</Slingshot>" + AngryBirdsSocial.LINE_BREAK_XML);
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : LevelSlingshotObject
      {
         var _loc4_:LevelSlingshotObject = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.mBirds.length)
         {
            if(_loc4_ = this.mBirds[_loc3_] as LevelSlingshotObject)
            {
               if(_loc4_.isInCoordinates(param1,param2))
               {
                  return _loc4_;
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function isSlingshotIntersectWithThisPoint(param1:Number, param2:Number) : LevelSlingshot
      {
         if(param1 >= this.mX - this.mSlingshotRadiusMax / 4 && param1 <= this.mX + this.mSlingshotRadiusMax / 4 && param2 >= this.mY - this.mSlingshotRadiusMax / 4 && this.mY <= this.mLegContactPoint)
         {
            return this;
         }
         return null;
      }
      
      public function getObjectIndex(param1:LevelSlingshotObject) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.mBirds.length)
         {
            if(this.mBirds[_loc2_] == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function getObjectIndexFromPoint(param1:Number, param2:Number) : int
      {
         var _loc4_:LevelSlingshotObject = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.mBirds.length)
         {
            if(_loc4_ = this.mBirds[_loc3_] as LevelSlingshotObject)
            {
               if(_loc4_.isInCoordinates(param1,param2))
               {
                  return _loc3_;
               }
            }
            _loc3_++;
         }
         return -1;
      }
      
      public function sortBirds() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:LevelSlingshotObject = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.mBirds.length - 1)
         {
            _loc2_ = Math.sqrt((this.mX - (this.mBirds[_loc1_] as LevelSlingshotObject).mX) * (this.mX - (this.mBirds[_loc1_] as LevelSlingshotObject).mX) + (this.mY - (this.mBirds[_loc1_] as LevelSlingshotObject).mY) * (this.mY - (this.mBirds[_loc1_] as LevelSlingshotObject).mY));
            _loc3_ = Math.sqrt((this.mX - (this.mBirds[_loc1_ + 1] as LevelSlingshotObject).mX) * (this.mX - (this.mBirds[_loc1_ + 1] as LevelSlingshotObject).mX) + (this.mY - (this.mBirds[_loc1_ + 1] as LevelSlingshotObject).mY) * (this.mY - (this.mBirds[_loc1_ + 1] as LevelSlingshotObject).mY));
            if(_loc3_ < _loc2_)
            {
               _loc4_ = this.mBirds[_loc1_] as LevelSlingshotObject;
               this.mBirds.splice(_loc1_,1);
               this.mBirds.splice(_loc1_ + 1,0,_loc4_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < this.mBirds.length)
         {
            this.mSlingshotBirds.removeChild((this.mBirds[_loc1_] as LevelSlingshotObject).mAnimations);
            _loc1_++;
         }
         while(this.mSlingshotBirds.numChildren > 0)
         {
            this.mSlingshotBirds.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.mBirds.length)
         {
            this.mSlingshotBirds.addChildAt((this.mBirds[_loc1_] as LevelSlingshotObject).mAnimations,0);
            _loc1_++;
         }
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.mX >= param3 && this.mX <= param4 && (this.mY + this.mLegContactPoint) / 2 >= param1 && (this.mY + this.mLegContactPoint) / 2 <= param2;
      }
      
      public function addGlowFilter(param1:Number = 8, param2:uint = 16777215) : void
      {
         var _loc3_:GlowFilter = new GlowFilter();
         _loc3_.blurX = param1;
         _loc3_.blurY = param1;
         _loc3_.color = param2;
         this.mSlingshotAnimation.filters = [_loc3_];
         this.mSlingshotForeground.filters = [_loc3_];
      }
      
      public function clearGlowFilter() : void
      {
         this.mSlingshotAnimation.filters = [];
         this.mSlingshotForeground.filters = [];
      }
      
      public function getMaxBirdCount() : int
      {
         return MAX_BIRD_COUNT + MAX_BIRD_COUNT_EXTENSION * this.mLevelMain.mLevelCamera.mLevelExtension;
      }
   }
}
