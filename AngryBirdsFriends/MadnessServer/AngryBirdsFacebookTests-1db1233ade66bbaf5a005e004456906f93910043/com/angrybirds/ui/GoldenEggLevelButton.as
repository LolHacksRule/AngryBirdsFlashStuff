package com.angrybirds.ui
{
   import com.rovio.tween.TweenManager;
   import data.user.FacebookUserProgress;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class GoldenEggLevelButton extends EventDispatcher
   {
       
      
      private var mOriginalScale:Number;
      
      private var mEgg:MovieClip;
      
      private var mEggId:String;
      
      public function GoldenEggLevelButton(egg:MovieClip, eggIdentifier:String)
      {
         super();
         this.mEgg = egg;
         this.mEggId = eggIdentifier;
      }
      
      protected static function get userProgress() : FacebookUserProgress
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress;
      }
      
      public function get eggId() : String
      {
         return this.mEggId;
      }
      
      public function updateEgg() : void
      {
         var stars:int = 0;
         var feather:* = false;
         var rank:int = 0;
         this.mEgg.stop();
         this.mEgg.crown.stop();
         this.mEgg.star1.graphic.stop();
         this.mEgg.star2.graphic.stop();
         this.mEgg.star3.graphic.stop();
         var isUnlocked:Boolean = userProgress.isEggUnlocked(this.mEggId);
         this.mEgg.gotoAndStop(!!isUnlocked ? 1 : 2);
         if(isUnlocked)
         {
            stars = userProgress.getStarsForLevel(this.mEggId);
            feather = userProgress.getEagleScoreForLevel(this.mEggId) == 100;
            rank = userProgress.getRankForLevel(this.mEggId);
            this.mEgg.star1.graphic.visible = true;
            this.mEgg.star2.graphic.visible = true;
            this.mEgg.star3.graphic.visible = true;
            this.mEgg.star1.graphic.gotoAndStop(stars >= 1 ? 1 : 2);
            this.mEgg.star2.graphic.gotoAndStop(stars >= 2 ? 1 : 2);
            this.mEgg.star3.graphic.gotoAndStop(stars >= 3 ? 1 : 2);
            if(rank >= 1 && rank <= 3)
            {
               this.mEgg.crown.visible = true;
               this.mEgg.crown.gotoAndStop(rank);
            }
            else
            {
               this.mEgg.crown.visible = false;
            }
            this.mEgg.feather.visible = feather;
            this.mEgg.buttonMode = true;
            this.mEgg.addEventListener(MouseEvent.CLICK,this.onEggClick);
            this.mEgg.addEventListener(MouseEvent.ROLL_OVER,this.onEggRollOver);
            this.mEgg.addEventListener(MouseEvent.ROLL_OUT,this.onEggRollOut);
            this.mOriginalScale = this.mEgg.scaleX;
         }
         else
         {
            this.mEgg.star1.graphic.visible = false;
            this.mEgg.star2.graphic.visible = false;
            this.mEgg.star3.graphic.visible = false;
            this.mEgg.feather.visible = false;
            this.mEgg.buttonMode = false;
            this.mEgg.crown.visible = false;
         }
      }
      
      private function onEggRollOver(e:MouseEvent) : void
      {
         TweenManager.instance.createTween(e.currentTarget,{
            "scaleX":this.mOriginalScale + 0.05,
            "scaleY":this.mOriginalScale + 0.05
         },null,0.2,TweenManager.EASING_QUAD_OUT).play();
      }
      
      private function onEggRollOut(e:MouseEvent) : void
      {
         TweenManager.instance.createTween(e.currentTarget,{
            "scaleX":this.mOriginalScale,
            "scaleY":this.mOriginalScale
         },null,0.2,TweenManager.EASING_QUAD_OUT).play();
      }
      
      private function onEggClick(e:MouseEvent) : void
      {
         e.currentTarget.scaleX = e.currentTarget.scaleY = this.mOriginalScale;
         dispatchEvent(e);
      }
   }
}
