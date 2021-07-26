package com.angrybirds.friendsbar.ui.profile
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.avatarcreator.AvatarCreatorModel;
   import com.angrybirds.avatarcreator.components.Avatar;
   import com.angrybirds.avatarcreator.data.Character;
   import com.angrybirds.avatarcreator.data.Item;
   import com.angrybirds.avatarcreator.utils.ServerIdParser;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class AnimatedAvatarProfilePicture extends AvatarProfilePicture
   {
      
      private static const ANIMATION_JUMP:AvatarAnimation = new AvatarAnimation(15,40);
      
      private static const ANIMATION_SQUAWK:AvatarAnimation = new AvatarAnimation(115,131);
      
      private static const ANIMATION_BLINK:AvatarAnimation = new AvatarAnimation(132,145);
      
      private static const ANIMATIONS:Array = [ANIMATION_JUMP,ANIMATION_SQUAWK,ANIMATION_BLINK];
      
      private static const ANIMATIONS_NO_SQUAWK:Array = [ANIMATION_JUMP,ANIMATION_BLINK];
      
      private static var sAnimatedRenderer:IAvatarRenderer;
       
      
      private var mCurrentAnimation:AvatarAnimation;
      
      private var mAvatar:Avatar;
      
      private var mCurrentFrame:int;
      
      private var mNextIdleAnimationTimer:Timer;
      
      private var mTopPadding:int = 30;
      
      private var mPreviousTime:Number = 0;
      
      private var mCumulativeTime:Number = 0;
      
      private var mWantedFps:Number = 40.0;
      
      private var mCachedFrames:Array;
      
      private var mBitmap:Bitmap;
      
      public function AnimatedAvatarProfilePicture(avatarString:String, imageSize:String, ignoreBackground:Boolean = false)
      {
         var item:Item = null;
         var character:Character = null;
         this.mCachedFrames = [];
         var parsedItems:Array = ServerIdParser.parseShortHandAvatarToArray(avatarString);
         for each(item in parsedItems)
         {
            if(item.mCategory == "CategoryBirds")
            {
               character = AvatarCreatorModel.instance.characters.getCharacterById(item.mId);
               this.mAvatar = new Avatar(character);
            }
         }
         super(avatarString,imageSize,ignoreBackground);
      }
      
      override public function dispose() : void
      {
         var cacheBmd:BitmapData = null;
         AngryBirdsEngine.smApp.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.mNextIdleAnimationTimer)
         {
            this.mNextIdleAnimationTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onTimerComplete);
            this.mNextIdleAnimationTimer.stop();
         }
         for each(cacheBmd in this.mCachedFrames)
         {
            if(cacheBmd)
            {
               cacheBmd.dispose();
            }
         }
         this.mCachedFrames = [];
         if(mAvatarHolder)
         {
            while(mAvatarHolder.numChildren > 0)
            {
               mAvatarHolder.removeChildAt(0);
            }
         }
         mAvatarHolder = null;
         if(this.mBitmap)
         {
            this.mBitmap = null;
         }
      }
      
      public function playAnimation(animation:AvatarAnimation) : void
      {
         this.mCurrentAnimation = animation;
         this.mCurrentFrame = animation.start;
         AngryBirdsEngine.smApp.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      override protected function sendAvatarToRenderer() : void
      {
         sAvatarRenderer.render(mAvatarString,this.renderAvatar,getSize(),mIgnoreBackground,null,null,this.mTopPadding);
      }
      
      private function onEnterFrame(e:Event) : void
      {
         var deltaTime:Number = getTimer() - this.mPreviousTime;
         this.mCumulativeTime += deltaTime;
         if(this.mCumulativeTime > this.mWantedFps)
         {
            this.mCurrentFrame += 1;
            this.mCumulativeTime = 0;
         }
         if(this.mCachedFrames[this.mCurrentFrame] == null)
         {
            sAvatarRenderer.render(mAvatarString,this.renderAvatar,getSize(),mIgnoreBackground,this.mCurrentFrame,this.mAvatar,this.mTopPadding);
         }
         else
         {
            this.renderAvatar(BitmapData(this.mCachedFrames[this.mCurrentFrame]),null);
         }
         if(this.mCurrentFrame >= this.mCurrentAnimation.end)
         {
            AngryBirdsEngine.smApp.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         this.mPreviousTime = getTimer();
      }
      
      public function playIdleAnimations() : void
      {
         this.sendAvatarToRenderer();
         if(this.mNextIdleAnimationTimer)
         {
            this.mNextIdleAnimationTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onTimerComplete);
            this.mNextIdleAnimationTimer.stop();
         }
         this.mNextIdleAnimationTimer = new Timer(3000 + Math.random() * 1000,1);
         this.mNextIdleAnimationTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.onTimerComplete);
         this.mNextIdleAnimationTimer.start();
      }
      
      private function onTimerComplete(e:TimerEvent) : void
      {
         this.playRandomAnimation();
         this.playIdleAnimations();
      }
      
      public function playRandomAnimation() : void
      {
         var arrayToUse:Array = ANIMATIONS;
         if(mAvatarString.indexOf("M50003") != -1 || mAvatarString.indexOf("M50006") != -1 && mAvatarString.indexOf("C10005") != -1 || mAvatarString.indexOf("M50010") != -1)
         {
            arrayToUse = ANIMATIONS_NO_SQUAWK;
         }
         var randomIndex:int = Math.floor(Math.random() * arrayToUse.length);
         this.playAnimation(arrayToUse[randomIndex]);
      }
      
      override public function renderAvatar(bitmapData:BitmapData, avatarMovieClip:MovieClip) : void
      {
         if(mAvatarHolder == null)
         {
            mAvatarHolder = new Sprite();
         }
         if(mAvatarHolder.parent != this)
         {
            addChild(mAvatarHolder);
         }
         while(mAvatarHolder.numChildren > 0)
         {
            mAvatarHolder.removeChildAt(0);
         }
         this.mBitmap = new Bitmap(bitmapData,PixelSnapping.ALWAYS,true);
         mAvatarHolder.addChild(this.mBitmap);
         this.mBitmap.x = -10;
         this.mBitmap.y = -10 - this.mTopPadding;
         if(this.mCachedFrames[this.mCurrentFrame] == null)
         {
            this.mCachedFrames[this.mCurrentFrame] = bitmapData;
         }
      }
   }
}
