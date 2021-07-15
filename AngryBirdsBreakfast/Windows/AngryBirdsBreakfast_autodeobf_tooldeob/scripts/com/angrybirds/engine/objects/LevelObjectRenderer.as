package com.angrybirds.engine.objects
{
   import com.rovio.graphics.Animation;
   import com.angrybirds.data.level.item.CircleShapeDefinition;
   import com.angrybirds.data.level.item.ShapeDefinition;
   import starling.display.DisplayObject;
   import starling.display.Sprite;
   import com.angrybirds.engine.LevelMain;
   
   public class LevelObjectRenderer
   {
       
      
      protected var mW:Number;
      
      protected var mH:Number;
      
      protected var mWidthHeightRatio:Number;
      
      protected var mColor:Number;
      
      protected var mShapeType:int = -1;
      
      protected var mAnimation:Animation;
      
      protected var mCurrentMainAnimation:Animation;
      
      protected var mCurrentAnimation:Animation;
      
      protected var mCurrentSubAnimationIndex:int;
      
      protected var mCurrentDamageState:Number = 0.0;
      
      protected var mDisplayObject:DisplayObject;
      
      protected var mDisplayObjectContainer:Sprite;
      
      protected var mImageOffsetX:Number = 0;
      
      protected var mImageOffsetY:Number = 0;
      
      protected var mAnimationOffsetMilliSeconds:Number = 0.0;
      
      protected var mSprite:Sprite = null;
      
      protected var mNeedsImageUpdate:Boolean = false;
      
      protected var mHorizontalFlip:Boolean = false;
      
      public function LevelObjectRenderer(param1:Animation, param2:Sprite, param3:Boolean = false)
      {
         super();
         this.mAnimation = param1;
         this.mSprite = param2;
         this.mHorizontalFlip = param3;
         if(this.mHorizontalFlip)
         {
            this.mSprite.scaleX = -this.mSprite.scaleX;
         }
         this.initializeImage();
      }
      
      public function get width() : Number
      {
         return this.mW;
      }
      
      public function get height() : Number
      {
         return this.mH;
      }
      
      public function get widthHeightRatio() : Number
      {
         return this.mWidthHeightRatio;
      }
      
      protected function initializeImage() : void
      {
         if(this.mAnimation)
         {
            this.mCurrentMainAnimation = this.mAnimation.getSubAnimation(LevelObject.ANIMATION_NORMAL);
         }
         if(!this.mCurrentMainAnimation)
         {
            this.mCurrentMainAnimation = this.mAnimation;
         }
         this.setDamageState(0);
         this.selectSubAnimation(0);
         if(this.mCurrentAnimation)
         {
            this.mDisplayObject = this.mCurrentAnimation.getFrameWithOffset(0,this.mDisplayObject);
            if(!this.mDisplayObject)
            {
               return;
            }
            this.mW = this.mDisplayObject.width;
            this.mH = this.mDisplayObject.height;
            if(this.mDisplayObjectContainer)
            {
               this.mDisplayObjectContainer.addChild(this.mDisplayObject);
               this.mSprite.addChild(this.mDisplayObjectContainer);
            }
            else
            {
               this.mSprite.addChild(this.mDisplayObject);
            }
            return;
         }
      }
      
      public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         if(!this.mAnimation || this.mCurrentMainAnimation && this.mCurrentMainAnimation.name == param1)
         {
            return;
         }
         this.mCurrentMainAnimation = this.mAnimation.getSubAnimation(param1);
         this.mNeedsImageUpdate = true;
         this.setDamageState(this.mCurrentDamageState,param2);
      }
      
      protected function initializeAnimationOffset(param1:Boolean) : void
      {
         this.mAnimationOffsetMilliSeconds = 0;
         if(param1 && this.mCurrentAnimation)
         {
            this.mAnimationOffsetMilliSeconds = Math.random() * this.mCurrentAnimation.animationLengthMilliSeconds;
         }
      }
      
      public function dispose() : void
      {
         this.mSprite = null;
      }
      
      public function addOverlay(param1:DisplayObject, param2:Boolean = true) : void
      {
         if(param2)
         {
            this.mSprite.addChild(param1);
         }
         else
         {
            this.mSprite.addChildAt(param1,0);
         }
      }
      
      public function removeOverlay(param1:DisplayObject) : void
      {
         if(this.mSprite && param1.parent == this.mSprite)
         {
            this.mSprite.removeChild(param1);
         }
      }
      
      public function calculateWidthHeightRatio(param1:Boolean) : void
      {
         if(param1)
         {
            this.mWidthHeightRatio = 1;
            return;
         }
         this.mWidthHeightRatio = this.mW / this.mH;
         if(this.mWidthHeightRatio < 1)
         {
            this.mWidthHeightRatio = 1 / this.mWidthHeightRatio;
         }
         this.mWidthHeightRatio = Math.min(11,this.mWidthHeightRatio);
      }
      
      public function calculateImagePivotFromShapeObject(param1:ShapeDefinition) : void
      {
         var _loc2_:CircleShapeDefinition = null;
         if(param1 is CircleShapeDefinition)
         {
            _loc2_ = CircleShapeDefinition(param1);
            this.mImageOffsetX = -_loc2_.pivot.x / LevelMain.PIXEL_TO_B2_SCALE;
            this.mImageOffsetY = -_loc2_.pivot.y / LevelMain.PIXEL_TO_B2_SCALE;
            if(this.mDisplayObject)
            {
               this.mDisplayObject.x = this.mImageOffsetX;
               this.mDisplayObject.y = this.mImageOffsetY;
            }
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.mSprite.scaleX = param1;
         this.mSprite.scaleY = param1;
         if(this.mHorizontalFlip)
         {
            this.mSprite.scaleX = -param1;
         }
      }
      
      protected function handleAnimationEnd() : void
      {
      }
      
      public function get currentAnimationLengthMilliSeconds() : Number
      {
         if(this.mCurrentAnimation)
         {
            return this.mCurrentAnimation.animationLengthMilliSeconds;
         }
         return 0;
      }
      
      public function update(param1:Number) : void
      {
         if(!this.mAnimation)
         {
            return;
         }
         this.mAnimationOffsetMilliSeconds += param1;
         if(this.mAnimationOffsetMilliSeconds >= this.mCurrentAnimation.animationLengthMilliSeconds)
         {
            this.mAnimationOffsetMilliSeconds -= this.mCurrentAnimation.animationLengthMilliSeconds;
            this.handleAnimationEnd();
         }
         if(this.mNeedsImageUpdate || this.mCurrentAnimation.frameCount > 1)
         {
            this.mNeedsImageUpdate = false;
            if(this.mCurrentAnimation && this.mDisplayObject)
            {
               this.mDisplayObject = this.mCurrentAnimation.getFrameWithOffset(this.mAnimationOffsetMilliSeconds,this.mDisplayObject);
               if(this.mDisplayObject)
               {
                  this.mDisplayObject.x = this.mImageOffsetX;
                  this.mDisplayObject.y = this.mImageOffsetY;
               }
            }
         }
      }
      
      public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.mCurrentDamageState = param1;
         if(this.mCurrentMainAnimation)
         {
            _loc3_ = this.mCurrentMainAnimation.subAnimationCount;
            if((_loc4_ = Math.round(param1 * _loc3_)) >= _loc3_)
            {
               _loc4_ = _loc3_ - 1;
            }
            _loc5_ = this.mCurrentSubAnimationIndex;
            this.selectSubAnimation(_loc4_,param2);
            return _loc4_ > _loc5_;
         }
         return false;
      }
      
      public function selectSubAnimation(param1:int, param2:Boolean = true) : void
      {
         if(!this.mCurrentMainAnimation)
         {
            return;
         }
         var _loc3_:Animation = this.mCurrentAnimation;
         var _loc4_:int = this.mCurrentMainAnimation.subAnimationCount;
         if(param1 >= 0 && param1 < _loc4_)
         {
            if(this.mCurrentSubAnimationIndex != param1)
            {
               this.mCurrentSubAnimationIndex = param1;
               this.mNeedsImageUpdate = true;
            }
            this.mCurrentAnimation = this.mCurrentMainAnimation.getSubAnimationFromIndex(param1);
         }
         else
         {
            if(_loc4_ > 0)
            {
               this.selectSubAnimation(0,param2);
               return;
            }
            this.mCurrentAnimation = this.mCurrentMainAnimation;
         }
         if(this.mCurrentAnimation != _loc3_)
         {
            if(param2)
            {
               this.mAnimationOffsetMilliSeconds = Math.random() * this.mCurrentAnimation.animationLengthMilliSeconds;
            }
            else
            {
               this.mAnimationOffsetMilliSeconds = 0;
            }
         }
      }
      
      public function getCurrentAnimationName() : String
      {
         if(!this.mAnimation)
         {
            return "none";
         }
         return this.mAnimation.name;
      }
   }
}
