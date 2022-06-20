package com.angrybirds.friendsbar.ui.profile
{
   import com.angrybirds.avatarcreator.AvatarCreatorModel;
   import com.angrybirds.avatarcreator.components.Avatar;
   import com.angrybirds.avatarcreator.data.Character;
   import com.angrybirds.avatarcreator.data.Item;
   import com.angrybirds.avatarcreator.utils.ServerIdParser;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class AvatarProfilePictureButton extends AvatarProfilePicture
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
      
      private var mAnimationTimer:Timer;
      
      private var mNextIdleAnimationTimer:Timer;
      
      private var mTopPadding:int = 30;
      
      private var mPreviousTime:Number = 0;
      
      private var mCumulativeTime:Number = 0;
      
      private var mWantedFps:Number = 40.0;
      
      public function AvatarProfilePictureButton(avatarString:String, imageSize:String, ignoreBackground:Boolean = false)
      {
         var item:Item = null;
         var character:Character = null;
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
         if(this.mNextIdleAnimationTimer)
         {
            this.mNextIdleAnimationTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onTimerComplete);
            this.mNextIdleAnimationTimer.stop();
         }
         if(this.mAnimationTimer)
         {
            this.mAnimationTimer.removeEventListener(TimerEvent.TIMER,this.onAnimationTimer);
            this.mAnimationTimer.stop();
         }
         if(mAvatarHolder)
         {
            while(mAvatarHolder.numChildren > 0)
            {
               mAvatarHolder.removeChildAt(0);
            }
         }
         mAvatarHolder = null;
      }
      
      public function playAnimation(animation:AvatarAnimation) : void
      {
         this.mCurrentAnimation = animation;
         this.mCurrentFrame = animation.start;
         if(this.mAnimationTimer)
         {
            this.mAnimationTimer.removeEventListener(TimerEvent.TIMER,this.onAnimationTimer);
            this.mAnimationTimer.stop();
         }
         this.mAnimationTimer = new Timer(0);
         this.mAnimationTimer.addEventListener(TimerEvent.TIMER,this.onAnimationTimer);
         this.mAnimationTimer.start();
      }
      
      override protected function sendAvatarToRenderer() : void
      {
         sAvatarRenderer.render(mAvatarString,this.renderAvatar,getSize(),mIgnoreBackground,null,null,this.mTopPadding);
      }
      
      private function onAnimationTimer(e:TimerEvent) : void
      {
         var deltaTime:Number = getTimer() - this.mPreviousTime;
         this.mCumulativeTime += deltaTime;
         if(this.mCumulativeTime > this.mWantedFps)
         {
            this.mCurrentFrame += 1;
            this.mCumulativeTime = 0;
            sAvatarRenderer.render(mAvatarString,this.renderAvatar,getSize(),mIgnoreBackground,this.mCurrentFrame,this.mAvatar,this.mTopPadding);
         }
         if(this.mCurrentFrame >= this.mCurrentAnimation.end)
         {
            this.mAnimationTimer.stop();
            this.mAnimationTimer.removeEventListener(TimerEvent.TIMER,this.onAnimationTimer);
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
         this.mNextIdleAnimationTimer = new Timer(5000 + Math.random() * 1000,1);
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
         mAvatarHolder.addChild(avatarMovieClip);
         avatarMovieClip.x = 200;
         avatarMovieClip.y = 290;
         avatarMovieClip.buttonMode = true;
         avatarMovieClip.stop();
      }
   }
}
