package com.AngryBirds.LevelPlayer
{
   import com.AngryBirds.LevelItemsData.LevelItemShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.assets.AssetCache;
   import com.rovio.factory.Log;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class LevelObjectRenderer extends Sprite
   {
      
      public static const SCREAM_TIME:Number = 1000;
      
      public static const BLINK_TIME:Number = 500;
      
      public static const COLLISION_AREA_SHRINK_RATE_FOR_BLOCKS:Number = 100;
       
      
      public var mLevelObject:LevelObject;
      
      public var mVisualState:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var mColor:Number;
      
      public var mShapeType:int = -1;
      
      public var mAnimations:MovieClip;
      
      public var mVisibleDisplayObject:DisplayObject;
      
      public var mAnimationsName:String;
      
      public var mDamagedFrameCount:int = -1;
      
      public var mDamagedFrameIndex:int = -1;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var mScreamAnimationName:String = "Screaming";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var mBlinkAnimationName:String = "Blinking";
      
      public var mIsBlinking:Boolean = false;
      
      public var mGlowFilter:GlowFilter;
      
      public var mSparklesContainer:DisplayObjectContainer;
      
      public var mSparkles:Array;
      
      public function LevelObjectRenderer(param1:LevelObject)
      {
         super();
         this.mLevelObject = param1;
         this.mLevelObject.addChild(this);
         this.mAnimationsName = this.mLevelObject.mObjectName;
         if(this.mLevelObject.isPig())
         {
            this.mScreamAnimationName = "Smiling";
         }
         this.mSparklesContainer = null;
         this.mSparkles = null;
      }
      
      public function setCodeDrawnObjectProperties(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.mShapeType = param1;
         this.mColor = param2;
         this.drawObjectUsingGraphics();
      }
      
      public function loadAnimation() : Boolean
      {
         if(this.mLevelObject.isGround())
         {
            return false;
         }
         var _loc1_:Class = AssetCache.getAssetFromCache(this.mAnimationsName);
         if(!_loc1_)
         {
            Log.log("WARNING!: LevelObjectRenderer -> loadDimensionsFromAnimation(), this animation is not found in AssetCache: " + this.mAnimationsName);
            return false;
         }
         this.mAnimations = new _loc1_();
         if(this.mAnimations)
         {
            addChild(this.mAnimations);
            this.mW = this.mAnimations.width / 2;
            this.mH = this.mAnimations.height / 2;
            return true;
         }
         return false;
      }
      
      public function getCollisionRect() : Array
      {
         if(!this.mAnimations)
         {
            return null;
         }
         var _loc1_:Array = new Array();
         var _loc2_:DisplayObject = this.mAnimations.getChildByName("Collision1_Rectangle");
         var _loc3_:Rectangle = _loc2_.getBounds(this.mAnimations);
         if(this.mLevelObject.isBlock())
         {
            _loc3_.x *= COLLISION_AREA_SHRINK_RATE_FOR_BLOCKS / 100;
            _loc3_.y *= COLLISION_AREA_SHRINK_RATE_FOR_BLOCKS / 100;
            _loc3_.height *= COLLISION_AREA_SHRINK_RATE_FOR_BLOCKS / 100;
            _loc3_.width *= COLLISION_AREA_SHRINK_RATE_FOR_BLOCKS / 100;
         }
         _loc1_[0] = new b2Vec2();
         _loc1_[0].Set(_loc3_.x * LevelMain.PIXEL_TO_B2_SCALE,_loc3_.y * LevelMain.PIXEL_TO_B2_SCALE);
         _loc1_[1] = new b2Vec2();
         _loc1_[1].Set(_loc3_.x * LevelMain.PIXEL_TO_B2_SCALE,(_loc3_.y + _loc3_.height) * LevelMain.PIXEL_TO_B2_SCALE);
         _loc1_[2] = new b2Vec2();
         _loc1_[2].Set((_loc3_.x + _loc3_.width) * LevelMain.PIXEL_TO_B2_SCALE,(_loc3_.y + _loc3_.height) * LevelMain.PIXEL_TO_B2_SCALE);
         _loc1_[3] = new b2Vec2();
         _loc1_[3].Set((_loc3_.x + _loc3_.width) * LevelMain.PIXEL_TO_B2_SCALE,_loc3_.y * LevelMain.PIXEL_TO_B2_SCALE);
         _loc1_.reverse();
         this.mAnimations.removeChild(_loc2_);
         this.mAnimations = this.mAnimations.getChildByName("Animations") as MovieClip;
         return _loc1_;
      }
      
      public function getCollisionCircle() : Array
      {
         if(!this.mAnimations)
         {
            return null;
         }
         var _loc1_:Array = new Array();
         var _loc2_:DisplayObject = this.mAnimations.getChildByName("Collision1_Circle");
         var _loc3_:Rectangle = _loc2_.getBounds(this.mAnimations);
         if(this.mLevelObject.isBlock())
         {
            _loc3_.x *= COLLISION_AREA_SHRINK_RATE_FOR_BLOCKS / 100;
            _loc3_.y *= COLLISION_AREA_SHRINK_RATE_FOR_BLOCKS / 100;
            _loc3_.height *= COLLISION_AREA_SHRINK_RATE_FOR_BLOCKS / 100;
            _loc3_.width *= COLLISION_AREA_SHRINK_RATE_FOR_BLOCKS / 100;
         }
         if(_loc3_.width != _loc3_.height)
         {
         }
         _loc1_[0] = _loc3_.width * LevelMain.PIXEL_TO_B2_SCALE / 2;
         _loc1_[1] = (_loc3_.x + _loc3_.width / 2) * LevelMain.PIXEL_TO_B2_SCALE;
         _loc1_[2] = (_loc3_.y + _loc3_.height / 2) * LevelMain.PIXEL_TO_B2_SCALE;
         this.mAnimations.removeChild(_loc2_);
         this.mAnimations = this.mAnimations.getChildByName("Animations") as MovieClip;
         return _loc1_;
      }
      
      public function getCollisionVertice() : Array
      {
         var _loc3_:int = 0;
         var _loc4_:DisplayObject = null;
         if(!this.mAnimations)
         {
            return null;
         }
         var _loc1_:Array = new Array();
         var _loc2_:DisplayObjectContainer = this.mAnimations.getChildByName("Collision1_Polygon") as DisplayObjectContainer;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc1_[_loc3_] = new b2Vec2();
            _loc4_ = _loc2_.getChildByName("Point" + (_loc3_ + 1));
            _loc1_[_loc3_].Set((_loc4_.getRect(this.mAnimations).x + _loc4_.getRect(this.mAnimations).width / 2) * LevelMain.PIXEL_TO_B2_SCALE,(_loc4_.getRect(this.mAnimations).y + _loc4_.getRect(this.mAnimations).height / 2) * LevelMain.PIXEL_TO_B2_SCALE);
            _loc3_++;
         }
         _loc1_.reverse();
         if(_loc1_.length < 3)
         {
            Log.log("WARNING: LevelObjectRenderer -> getCollisionVertice() is not good for movieClip = " + this.mAnimationsName);
            return null;
         }
         this.mAnimations.removeChild(_loc2_);
         this.mAnimations = this.mAnimations.getChildByName("Animations") as MovieClip;
         return _loc1_;
      }
      
      public function drawObjectUsingGraphics() : void
      {
         var _loc1_:Shape = new Shape();
         _loc1_.graphics.lineStyle(1);
         _loc1_.graphics.beginFill(this.mColor,1);
         if(this.mShapeType == LevelItemShape.SHAPE_TYPE_RECT)
         {
            _loc1_.graphics.drawRect(-this.mW,-this.mH,2 * this.mW,2 * this.mH);
         }
         else if(this.mShapeType == LevelItemShape.SHAPE_TYPE_CIRCLE)
         {
            _loc1_.graphics.drawCircle(0,0,this.mW);
         }
         addChild(_loc1_);
      }
      
      public function kill() : void
      {
         this.removeGlowfilter();
         graphics.clear();
         if(this.mSparkles)
         {
            while(this.mSparkles.length > 0)
            {
               this.mSparklesContainer.removeChild(this.mSparkles[0][0]);
               this.mSparkles[0] = null;
               this.mSparkles.splice(0,1);
            }
            this.mSparkles = null;
         }
         if(this.mSparklesContainer)
         {
            while(this.mSparklesContainer.numChildren > 0)
            {
               this.mSparklesContainer.removeChildAt(0);
            }
            removeChild(this.mSparklesContainer);
            this.mSparklesContainer = null;
         }
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         this.mVisibleDisplayObject = null;
         this.mAnimations = null;
         this.mLevelObject.removeChild(this);
      }
      
      public function setVisualState() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.mAnimations)
         {
            return;
         }
         if(this.mVisibleDisplayObject)
         {
            if(this.mVisibleDisplayObject is MovieClip)
            {
               (this.mVisibleDisplayObject as MovieClip).gotoAndStop(1);
            }
            this.mVisibleDisplayObject.visible = false;
         }
         else
         {
            this.hideEverything();
         }
         this.mVisibleDisplayObject = this.mAnimations.getChildByName("Damaged" + this.mDamagedFrameIndex);
         var _loc1_:Boolean = true;
         if(this.mVisibleDisplayObject is DisplayObjectContainer)
         {
            if(this.mLevelObject.mSelfExplosionTimer >= 0 && (this.mVisibleDisplayObject as DisplayObjectContainer).getChildByName("Special"))
            {
               this.mVisibleDisplayObject = (this.mVisibleDisplayObject as DisplayObjectContainer).getChildByName("Special");
               if(this.mVisibleDisplayObject is MovieClip)
               {
                  _loc2_ = 1 + (this.mVisibleDisplayObject as MovieClip).totalFrames * (this.mLevelObject.mSelfExplosionTimer / this.mLevelObject.mSelfExplosionTimerMax);
                  if(_loc2_ == (this.mVisibleDisplayObject as MovieClip).totalFrames && this.mLevelObject.mSelfExplosionTimer < this.mLevelObject.mSelfExplosionTimerMax - 100)
                  {
                     _loc2_--;
                  }
                  (this.mVisibleDisplayObject as MovieClip).gotoAndStop(_loc2_);
               }
               _loc1_ = false;
            }
            else if(this.mTryToSpecial && (this.mVisibleDisplayObject as DisplayObjectContainer).getChildByName("Special"))
            {
               this.mVisibleDisplayObject = (this.mVisibleDisplayObject as DisplayObjectContainer).getChildByName("Special");
               this.mIsSpecial = true;
            }
            else if(this.mTryToScream > 0 && (this.mVisibleDisplayObject as DisplayObjectContainer).getChildByName(this.mScreamAnimationName))
            {
               this.mVisibleDisplayObject = (this.mVisibleDisplayObject as DisplayObjectContainer).getChildByName(this.mScreamAnimationName);
               this.mIsScreaming = true;
            }
            else if(this.mTryToBlink > 0 && (this.mVisibleDisplayObject as DisplayObjectContainer).getChildByName(this.mBlinkAnimationName))
            {
               this.mVisibleDisplayObject = (this.mVisibleDisplayObject as DisplayObjectContainer).getChildByName(this.mBlinkAnimationName);
               this.mIsBlinking = true;
            }
            else if(this.mTryToFly && (this.mVisibleDisplayObject as DisplayObjectContainer).getChildByName("Flying"))
            {
               this.mVisibleDisplayObject = (this.mVisibleDisplayObject as DisplayObjectContainer).getChildByName("Flying");
               this.mIsFlying = true;
            }
            else if((this.mVisibleDisplayObject as DisplayObjectContainer).getChildByName("Neutral"))
            {
               this.mVisibleDisplayObject = (this.mVisibleDisplayObject as DisplayObjectContainer).getChildByName("Neutral");
            }
            if(_loc1_ && this.mVisibleDisplayObject is MovieClip)
            {
               (this.mVisibleDisplayObject as MovieClip).gotoAndPlay(1);
            }
            this.mVisibleDisplayObject.visible = true;
            if(this.mVisibleDisplayObject is DisplayObjectContainer)
            {
               while(_loc3_ < (this.mVisibleDisplayObject as DisplayObjectContainer).numChildren)
               {
                  (this.mVisibleDisplayObject as DisplayObjectContainer).getChildAt(_loc3_).visible = true;
                  _loc3_++;
               }
            }
         }
         else
         {
            this.mVisibleDisplayObject.visible = true;
         }
      }
      
      public function hideEverything() : void
      {
         var _loc2_:DisplayObjectContainer = null;
         var _loc3_:int = 0;
         if(!this.mAnimations)
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.mAnimations.numChildren)
         {
            if(this.mAnimations.getChildAt(_loc1_) is DisplayObjectContainer)
            {
               _loc2_ = this.mAnimations.getChildAt(_loc1_) as DisplayObjectContainer;
               _loc3_ = 0;
               while(_loc3_ < _loc2_.numChildren)
               {
                  _loc2_.getChildAt(_loc3_).visible = false;
                  if(_loc2_.getChildAt(_loc3_) is MovieClip)
                  {
                     (_loc2_.getChildAt(_loc3_) as MovieClip).gotoAndStop(1);
                  }
                  _loc3_++;
               }
               if(_loc2_ is MovieClip)
               {
                  (_loc2_ as MovieClip).gotoAndStop(1);
               }
            }
            else
            {
               this.mAnimations.getChildAt(_loc1_).visible = false;
            }
            _loc1_++;
         }
      }
      
      public function setDamagedFrame() : void
      {
         if(this.mDamagedFrameCount < 0)
         {
            this.calculateDamageFrameCount();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.mLevelObject.mHealth / this.mLevelObject.mHealthMax) * (this.mDamagedFrameCount * 0.99);
         _loc1_++;
         if(_loc1_ != this.mDamagedFrameIndex)
         {
            this.mDamagedFrameIndex = _loc1_;
            this.setVisualState();
         }
      }
      
      public function calculateDamageFrameCount() : void
      {
         if(!this.mAnimations)
         {
            this.mDamagedFrameCount = 1;
            return;
         }
         var _loc2_:Boolean = true;
         var _loc3_:int = 1;
         this.mDamagedFrameCount = 0;
         while(_loc2_)
         {
            if(this.mAnimations.getChildByName("Damaged" + _loc3_))
            {
               _loc3_++;
               ++this.mDamagedFrameCount;
            }
            else
            {
               _loc2_ = false;
            }
         }
      }
      
      public function addGlowFilter(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.mGlowFilter = new GlowFilter();
         this.mGlowFilter.blurX = param2;
         this.mGlowFilter.blurY = param3;
         this.mGlowFilter.color = param1;
         filters = [this.mGlowFilter];
      }
      
      public function removeGlowfilter() : void
      {
         filters = [];
         this.mGlowFilter = null;
      }
      
      public function createSparkles() : void
      {
         this.mSparklesContainer = new Sprite();
         addChild(this.mSparklesContainer);
         this.mSparkles = new Array();
         var _loc1_:int = 0;
         while(_loc1_ < Math.min(8,Math.max(this.mLevelObject.getVolume(),1)))
         {
            this.createSparkle(_loc1_);
            _loc1_++;
         }
      }
      
      public function updateSparkles(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.mSparkles.length)
         {
            this.mSparkles[_loc2_][1] -= param1;
            if(this.mSparkles[_loc2_][1] <= 0)
            {
               this.createSparkle(_loc2_);
            }
            _loc2_++;
         }
      }
      
      public function createSparkle(param1:int) : void
      {
         var _loc2_:Class = null;
         if(this.mSparkles[param1])
         {
            this.mSparklesContainer.removeChild(this.mSparkles[param1][0]);
            this.mSparkles[param1] = null;
         }
         if(Math.random() < 0.5)
         {
            _loc2_ = AssetCache.getAssetFromCache("effect_bird_sparkle_particle1");
         }
         else
         {
            _loc2_ = AssetCache.getAssetFromCache("effect_bird_sparkle_particle2");
         }
         this.mSparkles[param1] = new Array(new _loc2_() as MovieClip,400 + Math.random() * 400);
         this.mSparklesContainer.addChild(this.mSparkles[param1][0]);
         (this.mSparkles[param1][0] as MovieClip).x = -width / 2 + Math.random() * width;
         (this.mSparkles[param1][0] as MovieClip).y = -height / 2 + Math.random() * height;
      }
   }
}
