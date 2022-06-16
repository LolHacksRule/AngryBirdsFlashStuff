package com.angrybirds.engine.background
{
   import com.angrybirds.data.level.theme.AnimationData;
   import starling.display.Sprite;
   
   public class ScaleAnimation extends AbsLayerAnimation
   {
       
      
      private var mDurationinMillis:Number;
      
      private var animate:Boolean;
      
      private var scaleDiff:Number;
      
      private var mTimeinMillis:int;
      
      private var prevTimeVal:Number = 0;
      
      private var mLevelBackgroundLayer:LevelBackgroundLayer;
      
      private var mScale:Number;
      
      private var mFinalScale:Number;
      
      public function ScaleAnimation(sprite:Sprite, levelBackgroundLayer:LevelBackgroundLayer, data:AnimationData)
      {
         super(sprite,data.trigger,data.tween,data.sound,data.soundVolume,data.soundLoop);
         this.mLevelBackgroundLayer = levelBackgroundLayer;
         var tempDuration:Number = data.duration < 0 ? Number(0) : Number(data.duration);
         this.mDurationinMillis = tempDuration * 1000;
         this.mScale = data.scale;
         this.mFinalScale = data.finalScale;
      }
      
      override protected function onStart() : void
      {
         this.scaleDiff = 0;
         if(this.mFinalScale != this.mScale)
         {
            this.animate = true;
            this.scaleDiff = this.mFinalScale - this.mLevelBackgroundLayer.scale;
            this.mTimeinMillis = 0;
         }
         else
         {
            this.animate = this.mScale != this.mLevelBackgroundLayer.scale;
            if(this.animate)
            {
               this.scaleDiff = this.mScale - this.mLevelBackgroundLayer.scale;
               this.mTimeinMillis = 0;
            }
         }
      }
      
      private function onTweenComplete() : void
      {
         animCompleted();
      }
      
      override protected function onUpdate(dt:int) : void
      {
         var time:Number = NaN;
         var timeVal:Number = NaN;
         var delta:Number = NaN;
         if(this.animate)
         {
            this.mTimeinMillis += dt;
            if(this.mTimeinMillis >= this.mDurationinMillis)
            {
               this.animate = false;
            }
            time = Math.max(0,this.mTimeinMillis);
            time = Math.min(time,this.mDurationinMillis);
            timeVal = mTween(time,0,1,this.mDurationinMillis);
            delta = (timeVal - this.prevTimeVal) * this.scaleDiff;
            this.prevTimeVal = timeVal;
            this.mLevelBackgroundLayer.changeLayerScale(delta);
         }
      }
   }
}
