package com.angrybirds.dailyrewardpopup
{
   import com.rovio.assets.AssetCache;
   import com.rovio.tween.ISimpleTween;
   import com.rovio.tween.TweenManager;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class RewardItem extends Sprite
   {
      
      private static const DEFAULT_SCALE:Number = 1;
      
      private static const GROW_TO_SCALE:Number = 1.3;
      
      private static const SCALE_TIME:Number = 0.3;
      
      private static const BOUNCES:int = 3;
       
      
      private var mTween:ISimpleTween;
      
      private var mGraphicsMc:MovieClip;
      
      private var mBouncesLeft:int = 3;
      
      public function RewardItem(dataObject:Object, currentDay:int, index:int)
      {
         super();
         this.init(dataObject,currentDay,index);
         scaleX = scaleY = DEFAULT_SCALE;
      }
      
      private function init(dataObject:Object, currentDay:int, index:int) : void
      {
         this.mGraphicsMc = new AssetCache.getAssetFromCache("DailyRewardItem")();
         addChild(this.mGraphicsMc);
         this.mGraphicsMc.x = -this.mGraphicsMc.width / 2;
         this.mGraphicsMc.y = -this.mGraphicsMc.height / 2;
         if(dataObject.day < currentDay)
         {
            this.mGraphicsMc.mcBack.gotoAndStop(1);
            this.mGraphicsMc.mcReward.visible = true;
            this.mGraphicsMc.mcToday.visible = false;
            this.mGraphicsMc.mcClaimed.visible = true;
         }
         else if(dataObject.day == currentDay && currentDay < 5)
         {
            this.mGraphicsMc.mcBack.gotoAndStop(2);
            this.mGraphicsMc.mcReward.visible = true;
            this.mGraphicsMc.mcToday.visible = true;
            this.mGraphicsMc.mcClaimed.visible = false;
            this.grow(true);
         }
         else if(dataObject.day == currentDay && currentDay == 5)
         {
            this.mGraphicsMc.mcBack.gotoAndStop(6);
            this.mGraphicsMc.mcReward.visible = true;
            this.mGraphicsMc.mcToday.visible = true;
            this.mGraphicsMc.mcClaimed.visible = false;
         }
         else if(dataObject.day == 5)
         {
            this.mGraphicsMc.mcBack.gotoAndStop(5);
            this.mGraphicsMc.mcReward.visible = true;
            this.mGraphicsMc.mcToday.visible = false;
            this.mGraphicsMc.mcClaimed.visible = false;
         }
         else
         {
            this.mGraphicsMc.mcBack.gotoAndStop(4);
            this.mGraphicsMc.mcReward.visible = true;
            this.mGraphicsMc.mcToday.visible = false;
            this.mGraphicsMc.mcClaimed.visible = false;
         }
         this.mGraphicsMc.mcReward.txtAmount.text = "x " + dataObject.quantity;
         this.mGraphicsMc.mcReward.gotoAndStop(index + 1);
      }
      
      public function dispose() : void
      {
         if(this.mTween)
         {
            this.mTween.stop();
            this.mTween = null;
         }
      }
      
      private function grow(create:Boolean = false) : void
      {
         --this.mBouncesLeft;
         if(this.mTween || create)
         {
            this.mTween = TweenManager.instance.createTween(this,{
               "scaleX":GROW_TO_SCALE,
               "scaleY":GROW_TO_SCALE
            },null,SCALE_TIME,TweenManager.EASING_SINE_OUT);
            this.mTween.onComplete = this.shrink;
            this.mTween.play();
         }
      }
      
      private function shrink() : void
      {
         if(this.mTween)
         {
            this.mTween = TweenManager.instance.createTween(this,{
               "scaleX":DEFAULT_SCALE,
               "scaleY":DEFAULT_SCALE
            },null,SCALE_TIME,TweenManager.EASING_SINE_IN);
            if(this.mBouncesLeft > 0)
            {
               this.mTween.onComplete = this.grow;
            }
            this.mTween.play();
         }
      }
   }
}
