package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.CircleShapeDefinition;
   import com.angrybirds.data.level.item.ShapeDefinition;
   import com.angrybirds.engine.LevelMain;
   import com.rovio.graphics.Animation;
   import starling.display.DisplayObject;
   import starling.display.Sprite;
   
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
      
      protected var mAnimationListener:IAnimationListener;
      
      public function LevelObjectRenderer(animation:Animation, sprite:Sprite, horizontalFlip:Boolean = false)
      {
         super();
         this.mAnimation = animation;
         this.mSprite = sprite;
         this.mHorizontalFlip = horizontalFlip;
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
      
      public function set animationListener(listener:IAnimationListener) : void
      {
         this.mAnimationListener = listener;
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
      
      public function setAnimation(animationName:String, randomStartOffset:Boolean = true) : void
      {
         if(!this.mAnimation || this.mCurrentMainAnimation && this.mCurrentMainAnimation.name == animationName)
         {
            return;
         }
         this.mCurrentMainAnimation = this.mAnimation.getSubAnimation(animationName);
         this.mNeedsImageUpdate = true;
         this.setDamageState(this.mCurrentDamageState,randomStartOffset);
      }
      
      protected function initializeAnimationOffset(randomStartOffset:Boolean) : void
      {
         this.mAnimationOffsetMilliSeconds = 0;
         if(randomStartOffset && this.mCurrentAnimation)
         {
            this.mAnimationOffsetMilliSeconds = Math.random() * this.mCurrentAnimation.animationLengthMilliSeconds;
         }
      }
      
      public function dispose() : void
      {
         this.mSprite = null;
      }
      
      public function addOverlay(overlay:DisplayObject, onTop:Boolean = true) : void
      {
         if(onTop)
         {
            this.mSprite.addChild(overlay);
         }
         else
         {
            this.mSprite.addChildAt(overlay,0);
         }
      }
      
      public function removeOverlay(overlay:DisplayObject) : void
      {
         if(this.mSprite && overlay.parent == this.mSprite)
         {
            this.mSprite.removeChild(overlay);
         }
      }
      
      public function calculateWidthHeightRatio(isCircle:Boolean) : void
      {
         if(isCircle)
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
      
      public function calculateImagePivotFromShapeObject(shape:ShapeDefinition) : void
      {
         var circleShape:CircleShapeDefinition = null;
         if(shape is CircleShapeDefinition)
         {
            circleShape = CircleShapeDefinition(shape);
            this.mImageOffsetX = -circleShape.pivot.x / LevelMain.PIXEL_TO_B2_SCALE;
            this.mImageOffsetY = -circleShape.pivot.y / LevelMain.PIXEL_TO_B2_SCALE;
            if(this.mDisplayObject)
            {
               this.mDisplayObject.x = this.mImageOffsetX;
               this.mDisplayObject.y = this.mImageOffsetY;
            }
         }
      }
      
      public function setScale(scale:Number) : void
      {
         this.mSprite.scaleX = scale;
         this.mSprite.scaleY = scale;
         if(this.mHorizontalFlip)
         {
            this.mSprite.scaleX = -scale;
         }
      }
      
      public function set color(color:uint) : void
      {
         if(this.mSprite)
         {
            this.mSprite.color = color;
         }
      }
      
      protected function handleAnimationEnd() : void
      {
         if(this.mAnimationListener && this.mCurrentMainAnimation)
         {
            this.mAnimationListener.handleAnimationEnd(this.mCurrentMainAnimation.name,this.mCurrentSubAnimationIndex,this.mCurrentMainAnimation.subAnimationCount);
         }
      }
      
      public function get currentAnimationLengthMilliSeconds() : Number
      {
         if(this.mCurrentAnimation)
         {
            return this.mCurrentAnimation.animationLengthMilliSeconds;
         }
         return 0;
      }
      
      public function update(deltaTimeMilliSeconds:Number) : void
      {
         if(!this.mAnimation)
         {
            return;
         }
         this.mAnimationOffsetMilliSeconds += deltaTimeMilliSeconds;
         if(this.mAnimationOffsetMilliSeconds >= this.mCurrentAnimation.animationLengthMilliSeconds)
         {
            if(this.mCurrentAnimation.isLooping)
            {
               while(this.mAnimationOffsetMilliSeconds >= this.mCurrentAnimation.animationLengthMilliSeconds)
               {
                  this.mAnimationOffsetMilliSeconds -= this.mCurrentAnimation.animationLengthMilliSeconds;
               }
            }
            else
            {
               this.handleAnimationEnd();
            }
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
      
      public function setDamageState(damageState:Number, randomStartOffset:Boolean = true) : Boolean
      {
         var subAnimationCount:int = 0;
         var index:int = 0;
         var oldIndex:int = 0;
         this.mCurrentDamageState = damageState;
         if(this.mCurrentMainAnimation)
         {
            subAnimationCount = this.mCurrentMainAnimation.subAnimationCount;
            index = Math.round(damageState * subAnimationCount);
            if(index >= subAnimationCount)
            {
               index = subAnimationCount - 1;
            }
            oldIndex = this.mCurrentSubAnimationIndex;
            this.selectSubAnimation(index,randomStartOffset);
            return index > oldIndex;
         }
         return false;
      }
      
      public function selectSubAnimation(index:int, randomStartOffset:Boolean = true) : void
      {
         if(!this.mCurrentMainAnimation)
         {
            return;
         }
         var oldAnimation:Animation = this.mCurrentAnimation;
         var subAnimationCount:int = this.mCurrentMainAnimation.subAnimationCount;
         if(index >= 0 && index < subAnimationCount)
         {
            if(this.mCurrentSubAnimationIndex != index)
            {
               this.mCurrentSubAnimationIndex = index;
               this.mNeedsImageUpdate = true;
            }
            this.mCurrentAnimation = this.mCurrentMainAnimation.getSubAnimationFromIndex(index);
         }
         else
         {
            if(subAnimationCount > 0)
            {
               this.selectSubAnimation(0,randomStartOffset);
               return;
            }
            this.mCurrentAnimation = this.mCurrentMainAnimation;
         }
         if(this.mCurrentAnimation != oldAnimation)
         {
            if(randomStartOffset)
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
      
      public function hasAnimation(animationName:String) : Boolean
      {
         if(this.mAnimation)
         {
            return this.mAnimation.hasSubAnimation(animationName);
         }
         return false;
      }
      
      public function flipFrames(flipHorizontally:Boolean) : void
      {
         this.mCurrentAnimation.flipFrames(flipHorizontally);
      }
      
      public function getStartAnimationName() : String
      {
         if(this.mAnimation)
         {
            return this.mAnimation.startAnimationName;
         }
         return null;
      }
   }
}
