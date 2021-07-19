package com.angrybirds.engine.background
{
   import com.angrybirds.data.level.theme.AnimationData;
   import starling.display.Sprite;
   
   public class MoveAnimation extends AbsLayerAnimation
   {
       
      
      private var mDurationinMillis:Number;
      
      private var mXOffsetPercent:Number = 0;
      
      private var mYOffsetPercent:Number = 0;
      
      private var mMovementX:Number = 0;
      
      private var mMovementY:Number = 0;
      
      private var animate:Boolean;
      
      private var xDiff:Number;
      
      private var yDiff:Number;
      
      private var mTimeinMillis:int;
      
      private var prevTimeVal:Number = 0;
      
      private var mLevelBackgroundLayer:LevelBackgroundLayer;
      
      public function MoveAnimation(sprite:Sprite, levelBackgroundLayer:LevelBackgroundLayer, data:AnimationData)
      {
         super(sprite,data.trigger,data.tween,data.sound,data.soundVolume,data.soundLoop);
         this.mLevelBackgroundLayer = levelBackgroundLayer;
         var tempDuration:Number = data.duration < 0 ? Number(0) : Number(data.duration);
         this.mDurationinMillis = tempDuration * 1000;
         if(data.xOffsetPercent && data.yOffsetPercent)
         {
            this.mXOffsetPercent = data.xOffsetPercent;
            this.mYOffsetPercent = data.yOffsetPercent;
         }
         else if(data.movement)
         {
            this.mMovementX = data.movement.x;
            this.mMovementY = data.movement.y;
         }
      }
      
      override protected function onStart() : void
      {
         var xTargetPos:Number = mSprite.x;
         var yTargetPos:Number = mSprite.y;
         this.xDiff = 0;
         this.yDiff = 0;
         if(this.mXOffsetPercent != 0 || this.mYOffsetPercent != 0)
         {
            this.animate = true;
            xTargetPos += this.mLevelBackgroundLayer.singleItemPixelWidth * this.mXOffsetPercent;
            yTargetPos += this.mLevelBackgroundLayer.singleItemPixelHeight * this.mYOffsetPercent;
            this.xDiff = xTargetPos - mSprite.x;
            this.yDiff = yTargetPos - mSprite.y;
         }
         else if(this.mMovementX != 0 || this.mMovementY != 0)
         {
            this.animate = true;
            this.xDiff = this.mMovementX;
            this.yDiff = this.mMovementY;
         }
         if(this.animate)
         {
            this.mTimeinMillis = 0;
         }
      }
      
      private function onTweenComplete() : void
      {
         animCompleted();
      }
      
      override protected function onUpdate(dt:int) : void
      {
         var time:Number = NaN;
         var timerVal:Number = NaN;
         var dx:Number = NaN;
         var dy:Number = NaN;
         if(this.animate)
         {
            this.mTimeinMillis += dt;
            if(this.mTimeinMillis >= this.mDurationinMillis)
            {
               this.animate = false;
            }
            time = Math.max(0,this.mTimeinMillis);
            time = Math.min(time,this.mDurationinMillis);
            timerVal = mTween(time,0,1,this.mDurationinMillis);
            dx = (timerVal - this.prevTimeVal) * this.xDiff;
            dy = (timerVal - this.prevTimeVal) * this.yDiff;
            this.prevTimeVal = timerVal;
            mSprite.x += dx;
            mSprite.y += dy;
         }
      }
   }
}
