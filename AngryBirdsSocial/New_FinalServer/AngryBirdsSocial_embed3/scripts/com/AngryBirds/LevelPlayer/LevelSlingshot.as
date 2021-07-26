package com.AngryBirds.LevelPlayer
{
   import com.AngryBirds.LevelItemsData.LevelItemResourcePathSound;
   import com.AngryBirds.LevelItemsData.LevelItems;
   import com.AngryBirds.io.StatisticsList;
   import com.AngryBirds.io.StatisticsManager;
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
      
      public function LevelSlingshot(newLevelMain:LevelMain, slingshot:XMLList)
      {
         var bird:XML = null;
         super();
         this.mLevelMain = newLevelMain;
         if(slingshot)
         {
            this.mX = slingshot.@x;
            this.mY = slingshot.@y;
            this.loadAnimations();
            this.mBirds = new Array();
            for each(bird in slingshot.Birds.Bird)
            {
               this.mBirds[this.mBirds.length] = new LevelSlingshotObject(this,bird.@id,bird.@x,bird.@y);
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
      
      public function setSlingShotState(newState:int) : void
      {
         this.mSlingShotState = newState;
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
         var clipClass:Class = AssetCache.getAssetFromCache("Slingshot");
         this.mSlingshotAnimation = new clipClass();
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
         var collision:DisplayObject = this.mSlingshotAnimation.getChildByName("CollisionArea1");
         this.mLegContactPoint = this.mY + collision.getRect(this.mSlingshotAnimation).bottom * LevelMain.PIXEL_TO_B2_SCALE;
         this.mSlingshotAnimation.removeChild(collision);
         collision = null;
      }
      
      public function loadBendingAreaCircle() : void
      {
         var circle:Sprite = this.mSlingshotAnimation.getChildByName("Circle") as Sprite;
         var rect:Rectangle = circle.getRect(this.mSlingshotAnimation);
         this.mSlingshotXCenter = this.mX + (rect.x + rect.width / 2) * LevelMain.PIXEL_TO_B2_SCALE;
         this.mSlingshotYCenter = this.mY + (rect.y + rect.height / 2) * LevelMain.PIXEL_TO_B2_SCALE;
         this.mSlingshotRadiusMax = rect.width / 2 * LevelMain.PIXEL_TO_B2_SCALE;
         this.mSlingshotAnimation.removeChild(circle);
         rect = null;
         circle = null;
      }
      
      public function createRopes() : void
      {
         var rect:Rectangle = null;
         var obj:DisplayObject = null;
         this.mRopeBackground = new Shape();
         this.mRopeForeground = new Shape();
         this.mRopeRubber = new Shape();
         this.mRopeRubber.graphics.lineStyle(1);
         this.mRopeRubber.graphics.beginFill(ROPE_COLOR,1);
         this.mRopeRubber.graphics.drawRect(-5,-3,10,6);
         this.mRopeForegroundLocations = new Array();
         this.mRopeBackgroundLocations = new Array();
         var names:Array = new Array("State1bg","State2bg","State3bg");
         for(var i:int = 0; i < 3; i++)
         {
            obj = (this.mSlingshotAnimation.getChildByName(names[i]) as DisplayObjectContainer).getChildByName("SlingMarkerBg");
            rect = obj.getRect(this.mSlingshotAnimation);
            this.mRopeBackgroundLocations[i] = new Point(this.mX + (rect.x + rect.width / 2) * LevelMain.PIXEL_TO_B2_SCALE,this.mY + (rect.y + rect.height / 2) * LevelMain.PIXEL_TO_B2_SCALE);
            (this.mSlingshotAnimation.getChildByName(names[i]) as DisplayObjectContainer).removeChild(obj);
            obj = (this.mSlingshotAnimation.getChildByName(names[i]) as DisplayObjectContainer).getChildByName("SlingMarkerFg");
            rect = obj.getRect(this.mSlingshotAnimation);
            this.mRopeForegroundLocations[i] = new Point(this.mX + (rect.x + rect.width / 2) * LevelMain.PIXEL_TO_B2_SCALE,this.mY + (rect.y + rect.height / 2) * LevelMain.PIXEL_TO_B2_SCALE);
            (this.mSlingshotAnimation.getChildByName(names[i]) as DisplayObjectContainer).removeChild(obj);
         }
         rect = null;
         names = null;
         obj = null;
      }
      
      public function updateAnimations(deltaTime:Number) : void
      {
         this.mSlingshotBendState = 0;
         this.mRopeRubber.x = this.mSlingshotXcurrent / LevelMain.PIXEL_TO_B2_SCALE;
         this.mRopeRubber.y = this.mSlingshotYcurrent / LevelMain.PIXEL_TO_B2_SCALE;
         var r:Rectangle = this.mRopeRubber.getRect(this.mLevelMain);
         this.mRopeRubber.rotation = this.mSlingshotAngle;
         var lineThickness:int = 4 + 4 * ((this.mSlingshotRadiusMax - this.mSlingshotRadiusCurrent) / this.mSlingshotRadiusMax);
         this.mRopeBackground.graphics.clear();
         this.mRopeBackground.graphics.lineStyle(lineThickness,ROPE_COLOR);
         this.mRopeBackground.graphics.moveTo(this.mSlingshotXcurrent / LevelMain.PIXEL_TO_B2_SCALE,this.mSlingshotYcurrent / LevelMain.PIXEL_TO_B2_SCALE);
         this.mRopeBackground.graphics.lineTo((this.mRopeBackgroundLocations[this.mSlingshotBendState] as Point).x / LevelMain.PIXEL_TO_B2_SCALE,(this.mRopeBackgroundLocations[this.mSlingshotBendState] as Point).y / LevelMain.PIXEL_TO_B2_SCALE);
         this.mRopeForeground.graphics.clear();
         this.mRopeForeground.graphics.lineStyle(lineThickness,ROPE_COLOR);
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
         for(var i:int = 0; i < this.mBirds.length; i++)
         {
            (this.mBirds[i] as LevelSlingshotObject).clear();
            this.mBirds[i] = null;
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
      
      public function setNewCoordinatesForRubber(newX:Number, newY:Number, ignoreCoordinatesOutside:Boolean = true) : Boolean
      {
         var ANGLE_MARGIN:Number = NaN;
         var ANGLE_MARGIN_SLOPE:Number = NaN;
         var MAX_RADUIS:Number = NaN;
         var max:Number = NaN;
         if(this.mSlingshotXcurrent == newX && this.mSlingshotYcurrent == newY)
         {
            return true;
         }
         this.mSlingshotRadiusCurrent = Math.sqrt((newY - this.mSlingshotYCenter) * (newY - this.mSlingshotYCenter) + (newX - this.mSlingshotXCenter) * (newX - this.mSlingshotXCenter));
         if(this.mSlingshotRadiusCurrent > this.mSlingshotRadiusMax)
         {
            if(ignoreCoordinatesOutside)
            {
               this.mSlingshotRadiusCurrent = Math.sqrt((this.mSlingshotYcurrent - this.mSlingshotYCenter) * (this.mSlingshotYcurrent - this.mSlingshotYCenter) + (this.mSlingshotXcurrent - this.mSlingshotXCenter) * (this.mSlingshotXcurrent - this.mSlingshotXCenter));
               return false;
            }
            newX = this.mSlingshotXCenter + this.mSlingshotRadiusMax * (newX - this.mSlingshotXCenter) / this.mSlingshotRadiusCurrent;
            newY = this.mSlingshotYCenter + this.mSlingshotRadiusMax * (newY - this.mSlingshotYCenter) / this.mSlingshotRadiusCurrent;
            this.mSlingshotRadiusCurrent = this.mSlingshotRadiusMax;
         }
         this.mSlingshotXcurrent = newX;
         this.mSlingshotYcurrent = newY;
         this.mSlingshotAngle = Math.atan2(-(this.mSlingshotYcurrent - this.mSlingshotYCenter),this.mSlingshotXcurrent - this.mSlingshotXCenter);
         this.mSlingshotAngle *= 180 / Math.PI;
         ANGLE_MARGIN = 8;
         ANGLE_MARGIN_SLOPE = 4;
         MAX_RADUIS = this.mSlingshotRadiusMax / 2;
         if(this.mSlingshotRadiusCurrent > MAX_RADUIS && this.mSlingshotAngle > -90 - ANGLE_MARGIN && this.mSlingshotAngle < -90 + ANGLE_MARGIN)
         {
            newX = this.mSlingshotXCenter + MAX_RADUIS * (newX - this.mSlingshotXCenter) / this.mSlingshotRadiusCurrent;
            newY = this.mSlingshotYCenter + MAX_RADUIS * (newY - this.mSlingshotYCenter) / this.mSlingshotRadiusCurrent;
            this.mSlingshotRadiusCurrent = MAX_RADUIS;
            this.mSlingshotXcurrent = newX;
            this.mSlingshotYcurrent = newY;
         }
         else if(this.mSlingshotRadiusCurrent > MAX_RADUIS && this.mSlingshotAngle > -90 - ANGLE_MARGIN - ANGLE_MARGIN_SLOPE && this.mSlingshotAngle < -90 + ANGLE_MARGIN + ANGLE_MARGIN_SLOPE)
         {
            max = MAX_RADUIS + (this.mSlingshotRadiusMax - MAX_RADUIS) * (Math.abs(this.mSlingshotAngle - -90) - ANGLE_MARGIN) / ANGLE_MARGIN_SLOPE;
            newX = this.mSlingshotXCenter + max * (newX - this.mSlingshotXCenter) / this.mSlingshotRadiusCurrent;
            newY = this.mSlingshotYCenter + max * (newY - this.mSlingshotYCenter) / this.mSlingshotRadiusCurrent;
            this.mSlingshotRadiusCurrent = max;
            this.mSlingshotXcurrent = newX;
            this.mSlingshotYcurrent = newY;
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
      
      public function applyGravity(movement:Number) : void
      {
         this.setPosition(this.mX,this.mY + movement);
      }
      
      public function setPosition(newX:Number, newY:Number, updateVisualInstant:Boolean = false) : void
      {
         var movementX:Number = newX - this.mX;
         this.mX = newX;
         var movementY:Number = newY - this.mY;
         this.mY = newY;
         this.mSlingshotAnimation.y = this.mY / LevelMain.PIXEL_TO_B2_SCALE;
         this.mSlingshotForeground.y = this.mY / LevelMain.PIXEL_TO_B2_SCALE;
         this.mSlingshotAnimation.x = this.mX / LevelMain.PIXEL_TO_B2_SCALE;
         this.mSlingshotForeground.x = this.mX / LevelMain.PIXEL_TO_B2_SCALE;
         this.mLegContactPoint += movementY;
         this.mSlingshotYCenter += movementY;
         this.mSlingshotYcurrent += movementY;
         this.mSlingshotXCenter += movementX;
         this.mSlingshotXcurrent += movementX;
         for(var i:int = 0; i < 3; i++)
         {
            (this.mRopeForegroundLocations[i] as Point).y += movementY;
            (this.mRopeBackgroundLocations[i] as Point).y += movementY;
            (this.mRopeForegroundLocations[i] as Point).x += movementX;
            (this.mRopeBackgroundLocations[i] as Point).x += movementX;
         }
         if(updateVisualInstant)
         {
            this.updateAnimations(0);
         }
         this.mUpdateVisuals = true;
      }
      
      public function update(deltaTime:Number) : void
      {
         var bird:LevelSlingshotObject = null;
         var force:Number = NaN;
         var speedX:Number = NaN;
         var speedY:Number = NaN;
         this.updateGroundControl(deltaTime);
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
            this.updateBirds(deltaTime);
            bird = this.mBirds[this.mNextBirdIndex] as LevelSlingshotObject;
            if(!this.mLevelMain.mEditorMode)
            {
               if(!bird)
               {
                  this.setSlingShotState(STATE_BIRDS_ARE_GONE);
               }
               else if(this.mSlingShotState == STATE_STAY_EMPTY)
               {
                  if(this.mTimer <= 0 && !this.mLevelMain.mLevelCamera.isOnCastleView() && bird.mBouncingTimer <= 0)
                  {
                     this.setSlingShotState(STATE_WAIT_FOR_NEXT_BIRD);
                     bird.startGoingToSlingshot();
                  }
               }
               else if(this.mSlingShotState != STATE_AWARDING_REMAINING_BIRD_SCORES)
               {
                  if(this.mSlingShotState == STATE_WAIT_FOR_NEXT_BIRD)
                  {
                     bird.approachSlingshot(deltaTime);
                     if(bird.mOnSlingshot)
                     {
                        this.setSlingShotState(STATE_BIRD_IS_READY);
                     }
                  }
                  else if(this.mSlingShotState == STATE_BIRD_IS_READY)
                  {
                     bird.mX = this.mSlingshotXcurrent - bird.mRadius * Math.cos(this.mSlingshotAngle / (180 / Math.PI));
                     bird.mY = this.mSlingshotYcurrent + bird.mRadius * Math.sin(this.mSlingshotAngle / (180 / Math.PI));
                     bird.updateRenderer();
                     if(this.mShootTheBird)
                     {
                        this.mLevelMain.mLevelObjects.addObject(bird.mName,bird.mX,bird.mY);
                        this.mLevelMain.mActiveObject = this.mLevelMain.mLevelObjects.mObjects[this.mLevelMain.mLevelObjects.mObjects.length - 1] as LevelObject;
                        this.mLevelMain.addBirdTrail();
                        if(bird.mPowerUpDamageMultiplier > 1)
                        {
                           this.mLevelMain.mActiveObject.setPowerUpDamageMultiplier(bird.mPowerUpDamageMultiplier);
                           this.mLevelMain.mActiveObject.mRenderer.createSparkles();
                        }
                        force = bird.mName.toUpperCase() == "BIRD_GREEN" ? Number(60) : Number(50);
                        speedX = -force * this.mSlingshotRadiusCurrent / this.mSlingshotRadiusMax * Math.cos(this.mSlingshotAngle / (180 / Math.PI));
                        speedY = force * this.mSlingshotRadiusCurrent / this.mSlingshotRadiusMax * Math.sin(this.mSlingshotAngle / (180 / Math.PI));
                        this.mLevelMain.mActiveObject.setLinearVelocity(new b2Vec2(speedX,speedY),false,true);
                        bird.mAnimations.visible = false;
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
                        if(!AngryBirdsSocial.smEditorMode)
                        {
                           StatisticsManager.markEvent(StatisticsList.BIRD_SHOT,bird.mName);
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function updateBirds(deltaTime:Number) : void
      {
         var firstBird:int = !!this.mDragging ? int(this.mNextBirdIndex) : int(this.mNextBirdIndex);
         for(var i:int = firstBird; i < this.mBirds.length; i++)
         {
            (this.mBirds[i] as LevelSlingshotObject).update(deltaTime);
         }
      }
      
      public function updateScoreForRemaininBirds() : Boolean
      {
         var bird:LevelSlingshotObject = null;
         var score:Number = NaN;
         if(this.mNextBirdIndexForScoring >= this.mBirds.length)
         {
            return false;
         }
         bird = this.mBirds[this.mNextBirdIndexForScoring] as LevelSlingshotObject;
         score = LevelItems.getItem(bird.mName).mScore;
         this.mLevelMain.addScore(score,true,bird.mX,bird.mY - 3,LevelParticle.getTextMaterialFromEngineMaterial(bird.mName));
         bird.startTalking(-1,true);
         if(!bird.mOnSlingshot && bird.mBouncingTimer <= 0)
         {
            bird.startBouncing();
         }
         ++this.mNextBirdIndexForScoring;
         return true;
      }
      
      public function getMaxScore() : Number
      {
         var bird:LevelSlingshotObject = null;
         var counter:Number = 0;
         var firstBird:int = 1;
         for(var i:int = firstBird; i < this.mBirds.length; i++)
         {
            bird = this.mBirds[i] as LevelSlingshotObject;
            counter += LevelItems.getItem(bird.mName).mScore;
         }
         return counter;
      }
      
      public function updateGroundControl(deltaTime:Number) : void
      {
         var index:int = 0;
         if(this.mGroundCheckTimer >= 0)
         {
            this.mGroundCheckTimer -= deltaTime;
            if(this.mGroundCheckTimer <= 0)
            {
               index = this.mLevelMain.mLevelObjects.getObjectIndexFromPoint(this.mSlingshotXCenter,this.mLegContactPoint);
               if(index < 0)
               {
                  this.applyGravity(deltaTime / 100);
                  this.mGroundCheckTimer = 0;
               }
               else if((this.mLevelMain.mLevelObjects.mObjects[index] as LevelObject).mDefence < 0)
               {
                  this.mGroundCheckTimer = -1;
               }
               else if((this.mLevelMain.mLevelObjects.mObjects[index] as LevelObject).considerSleeping())
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
      
      public function updateScrollAndScale(sideScroll:Number, verticalScroll:Number) : void
      {
         x = -sideScroll;
         y = -verticalScroll;
      }
      
      public function canWeStartDragging(p:Point) : Boolean
      {
         if(this.mSlingShotState == STATE_BIRD_IS_READY && this.setNewCoordinatesForRubber(p.x,p.y,true))
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
         var bird:LevelSlingshotObject = this.mBirds[this.mNextBirdIndex] as LevelSlingshotObject;
         bird.startTalking(LevelItemResourcePathSound.SOUND_UNSELECTED);
      }
      
      public function startDraging() : void
      {
         this.mDragging = true;
         var bird:LevelSlingshotObject = this.mBirds[this.mNextBirdIndex] as LevelSlingshotObject;
         bird.startTalking(LevelItemResourcePathSound.SOUND_SELECTED);
      }
      
      public function applyPowerup(id:int) : void
      {
         if(this.mPowerupsUsedInLevel >= MAX_POWERUPS_PER_LEVEL)
         {
            return;
         }
         ++this.mPowerupsUsedInLevel;
         switch(id)
         {
            case POWER_UP_BLACK_BIRD:
               this.powerUpAddNewBird("BIRD_BLACK");
               break;
            case POWER_UP_EXTRA_STRENGTH:
               this.powerUpMadeTheBirdStronger();
         }
      }
      
      public function powerUpAddNewBird(birdName:String) : void
      {
         if(this.mDragging)
         {
            this.cancelDraging();
         }
         var bird:LevelSlingshotObject = this.mBirds[this.mNextBirdIndex] as LevelSlingshotObject;
         bird.fallFromSlingshot();
         this.mBirds.splice(this.mNextBirdIndex,0,new LevelSlingshotObject(this,birdName,this.mX,this.mY - 5));
         this.setSlingShotState(STATE_STAY_EMPTY);
      }
      
      public function powerUpMadeTheBirdStronger() : void
      {
         var bird:LevelSlingshotObject = this.mBirds[this.mNextBirdIndex] as LevelSlingshotObject;
         bird.powerUpSetSpecialDamagePower();
      }
      
      public function getLevelDataInArrayFormat() : Array
      {
         var obj:LevelSlingshotObject = null;
         var newSavePoint:Array = new Array();
         var posX:Number = this.mX;
         var posY:Number = this.mY;
         posX = LevelEditor.roundUpCoordinate(posX,true);
         posY = LevelEditor.roundUpCoordinate(posY,true);
         newSavePoint[0] = new Array("slingshot",posX,posY);
         for(var i:int = 0; i < this.mBirds.length; i++)
         {
            obj = this.mBirds[i] as LevelSlingshotObject;
            if(obj)
            {
               posX = obj.mX;
               posY = obj.mY;
               posX = LevelEditor.roundUpCoordinate(posX,true);
               posY = LevelEditor.roundUpCoordinate(posY,true);
               newSavePoint[newSavePoint.length] = new Array(obj.mName,posX,posY);
            }
         }
         return newSavePoint;
      }
      
      public function loadLevelFromArrayFormat(levelArray:Array) : void
      {
         this.removeAllTheObjects();
         for(var i:int = 0; i < levelArray.length; i++)
         {
            if(levelArray[i][0] == "slingshot")
            {
               this.setPosition(levelArray[i][1],levelArray[i][2],true);
            }
            else
            {
               this.mBirds[this.mBirds.length] = new LevelSlingshotObject(this,levelArray[i][0],levelArray[i][1],levelArray[i][2]);
            }
         }
         this.sortBirds();
      }
      
      public function removeAllTheObjects() : void
      {
         for(var i:int = 0; i < this.mBirds.length; i++)
         {
            (this.mBirds[i] as LevelSlingshotObject).clear();
            this.mBirds[i] = null;
         }
         this.mBirds = null;
         this.mBirds = new Array();
         this.mNextBirdIndex = 0;
         this.setSlingShotState(STATE_STAY_EMPTY);
         this.mPowerupsUsedInLevel = 0;
      }
      
      public function removeObject(objectIndex:int) : void
      {
         if(objectIndex < 0)
         {
            return;
         }
         if(this.mBirds[objectIndex])
         {
            (this.mBirds[objectIndex] as LevelSlingshotObject).clear();
            this.mBirds[objectIndex] = null;
         }
         this.mBirds.splice(objectIndex,1);
      }
      
      public function addNewBirdToEndOfList(newName:String, newX:Number, newY:Number) : void
      {
         this.mBirds[this.mBirds.length] = new LevelSlingshotObject(this,newName,newX,newY);
         this.sortBirds();
      }
      
      public function getSlingshotinXML() : String
      {
         var obj:LevelSlingshotObject = null;
         var posX:Number = this.mX;
         var posY:Number = this.mY;
         posX = LevelEditor.roundUpCoordinate(posX,true);
         posY = LevelEditor.roundUpCoordinate(posY,true);
         var strXML:String = "";
         strXML += "<Slingshot x = \"" + posX + "\" y = \"" + posY + "\">" + AngryBirdsSocial.LINE_BREAK_XML;
         strXML += "    <Birds>" + AngryBirdsSocial.LINE_BREAK_XML;
         for(var i:int = 0; i < this.mBirds.length; i++)
         {
            obj = this.mBirds[i] as LevelSlingshotObject;
            if(obj)
            {
               posX = obj.mX;
               posY = obj.mY;
               posX = LevelEditor.roundUpCoordinate(posX,true);
               posY = LevelEditor.roundUpCoordinate(posY,true);
               strXML += "        <Bird id = \"" + obj.mName + "\" x = \"" + posX + "\" y = \"" + posY + "\"></Bird>" + AngryBirdsSocial.LINE_BREAK_XML;
            }
         }
         strXML += "    </Birds>" + AngryBirdsSocial.LINE_BREAK_XML;
         return strXML + ("</Slingshot>" + AngryBirdsSocial.LINE_BREAK_XML);
      }
      
      public function getObjectFromPoint(newX:Number, newY:Number) : LevelSlingshotObject
      {
         var obj:LevelSlingshotObject = null;
         for(var i:int = 0; i < this.mBirds.length; i++)
         {
            obj = this.mBirds[i] as LevelSlingshotObject;
            if(obj)
            {
               if(obj.isInCoordinates(newX,newY))
               {
                  return obj;
               }
            }
         }
         return null;
      }
      
      public function isSlingshotIntersectWithThisPoint(newX:Number, newY:Number) : LevelSlingshot
      {
         if(newX >= this.mX - this.mSlingshotRadiusMax / 4 && newX <= this.mX + this.mSlingshotRadiusMax / 4 && newY >= this.mY - this.mSlingshotRadiusMax / 4 && this.mY <= this.mLegContactPoint)
         {
            return this;
         }
         return null;
      }
      
      public function getObjectIndex(obj:LevelSlingshotObject) : int
      {
         for(var i:int = 0; i < this.mBirds.length; i++)
         {
            if(this.mBirds[i] == obj)
            {
               return i;
            }
         }
         return -1;
      }
      
      public function getObjectIndexFromPoint(x:Number, y:Number) : int
      {
         var obj:LevelSlingshotObject = null;
         for(var i:int = 0; i < this.mBirds.length; i++)
         {
            obj = this.mBirds[i] as LevelSlingshotObject;
            if(obj)
            {
               if(obj.isInCoordinates(x,y))
               {
                  return i;
               }
            }
         }
         return -1;
      }
      
      public function sortBirds() : void
      {
         var dist1:Number = NaN;
         var dist2:Number = NaN;
         var temp:LevelSlingshotObject = null;
         for(var i:int = 0; i < this.mBirds.length - 1; i++)
         {
            dist1 = Math.sqrt((this.mX - (this.mBirds[i] as LevelSlingshotObject).mX) * (this.mX - (this.mBirds[i] as LevelSlingshotObject).mX) + (this.mY - (this.mBirds[i] as LevelSlingshotObject).mY) * (this.mY - (this.mBirds[i] as LevelSlingshotObject).mY));
            dist2 = Math.sqrt((this.mX - (this.mBirds[i + 1] as LevelSlingshotObject).mX) * (this.mX - (this.mBirds[i + 1] as LevelSlingshotObject).mX) + (this.mY - (this.mBirds[i + 1] as LevelSlingshotObject).mY) * (this.mY - (this.mBirds[i + 1] as LevelSlingshotObject).mY));
            if(dist2 < dist1)
            {
               temp = this.mBirds[i] as LevelSlingshotObject;
               this.mBirds.splice(i,1);
               this.mBirds.splice(i + 1,0,temp);
               i = Math.max(-1,i - 2);
            }
         }
         for(i = 0; i < this.mBirds.length; i++)
         {
            this.mSlingshotBirds.removeChild((this.mBirds[i] as LevelSlingshotObject).mAnimations);
         }
         while(this.mSlingshotBirds.numChildren > 0)
         {
            this.mSlingshotBirds.removeChildAt(0);
         }
         for(i = 0; i < this.mBirds.length; i++)
         {
            this.mSlingshotBirds.addChildAt((this.mBirds[i] as LevelSlingshotObject).mAnimations,0);
         }
      }
      
      public function isInsideRectangle(top:Number, bottom:Number, left:Number, right:Number) : Boolean
      {
         return this.mX >= left && this.mX <= right && (this.mY + this.mLegContactPoint) / 2 >= top && (this.mY + this.mLegContactPoint) / 2 <= bottom;
      }
      
      public function addGlowFilter(size:Number = 8, color:uint = 16777215) : void
      {
         var glowFilter:GlowFilter = new GlowFilter();
         glowFilter.blurX = size;
         glowFilter.blurY = size;
         glowFilter.color = color;
         this.mSlingshotAnimation.filters = [glowFilter];
         this.mSlingshotForeground.filters = [glowFilter];
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
