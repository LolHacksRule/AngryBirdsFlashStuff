package com.angrybirds.engine
{
   import com.rovio.graphics.Animation;
   import starling.display.DisplayObject;
   import starling.display.Sprite;
   
   public class FacebookLevelSlingshotEffect
   {
       
      
      private var mIsActive:Boolean;
      
      private var mAnimation:Animation;
      
      private var mCurrentFrameImage:DisplayObject;
      
      private var mParent:Sprite;
      
      private var mCurrentFrameIndex:int;
      
      private var mTimer:Number;
      
      private var mSpeed:Number;
      
      private var mPositionX:Number;
      
      private var mPositionY:Number;
      
      private var mIsCycled:Boolean;
      
      private var mIsCenteredVertically:Boolean;
      
      private var mUseFrameTimes:Boolean;
      
      public function FacebookLevelSlingshotEffect(animationName:String, parent:Sprite, levelMain:LevelMain, positionX:Number, positionY:Number, speed:Number, isCycled:Boolean = false)
      {
         super();
         this.mAnimation = levelMain.animationManager.getAnimation(animationName);
         this.mParent = parent;
         this.setPosition(positionX,positionY);
         this.mSpeed = speed;
         this.mUseFrameTimes = this.mAnimation.animationLengthMilliSeconds > 0;
         this.mIsCycled = isCycled;
         this.reset();
      }
      
      public function update(deltaTime:Number) : Boolean
      {
         if(this.mIsActive)
         {
            this.mTimer += deltaTime;
            if(this.mTimer > this.mSpeed && !this.mUseFrameTimes)
            {
               this.mTimer = 0;
               ++this.mCurrentFrameIndex;
               this.mParent.removeChild(this.mCurrentFrameImage);
               if(this.mCurrentFrameIndex == this.mAnimation.frameCount)
               {
                  if(this.mIsCycled)
                  {
                     this.mCurrentFrameIndex = 0;
                  }
                  else
                  {
                     this.mIsActive = false;
                  }
               }
            }
            else if(this.mUseFrameTimes && this.mTimer > this.mAnimation.animationLengthMilliSeconds)
            {
               this.mParent.removeChild(this.mCurrentFrameImage);
               this.mTimer = 0;
               if(!this.mIsCycled)
               {
                  this.mIsActive = false;
               }
            }
            if(this.mIsActive)
            {
               if(this.mUseFrameTimes)
               {
                  this.mCurrentFrameImage = this.mAnimation.getFrameWithOffset(this.mTimer,this.mCurrentFrameImage);
               }
               else
               {
                  this.mCurrentFrameImage = this.mAnimation.getFrame(this.mCurrentFrameIndex,this.mCurrentFrameImage);
               }
               this.mParent.addChild(this.mCurrentFrameImage);
               this.mCurrentFrameImage.x = this.mPositionX;
               this.mCurrentFrameImage.y = this.mPositionY - (!!this.mIsCenteredVertically ? 0 : this.mCurrentFrameImage.height / 2);
            }
         }
         return this.mIsActive;
      }
      
      public function reset() : void
      {
         this.mCurrentFrameIndex = 0;
         this.mTimer = 0;
         this.mIsActive = true;
      }
      
      public function setPosition(positionX:Number, positionY:Number) : void
      {
         this.mPositionX = positionX;
         this.mPositionY = positionY;
      }
      
      public function setCenteredVertically(value:Boolean) : void
      {
         this.mIsCenteredVertically = value;
      }
   }
}
