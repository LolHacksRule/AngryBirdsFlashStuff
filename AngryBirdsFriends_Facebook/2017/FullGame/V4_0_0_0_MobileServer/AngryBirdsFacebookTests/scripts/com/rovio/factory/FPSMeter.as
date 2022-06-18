package com.rovio.factory
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class FPSMeter extends Sprite
   {
      
      private static const MAX_TIME_DURATION:int = 1000;
       
      
      private var mResultBox:TextField;
      
      private var mActivate:Boolean;
      
      private var mSampleCount:int = 0;
      
      private var mTotalTime:Number = 0;
      
      private var mExclusiveDurationCalculator:Array;
      
      public function FPSMeter(activate:Boolean, displayContainer:Sprite = null)
      {
         super();
         this.mActivate = activate;
         if(activate)
         {
            this.mResultBox = new TextField();
            this.mResultBox.text = "...";
            this.mResultBox.textColor = 16711680;
            this.mResultBox.selectable = false;
            this.mResultBox.height = 40;
            this.mResultBox.width = 150;
            this.mResultBox.mouseEnabled = false;
            addChild(this.mResultBox);
            if(displayContainer)
            {
               displayContainer.addChild(this);
            }
            this.x = 250;
         }
         this.mExclusiveDurationCalculator = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(deltaTime:Number) : void
      {
         ++this.mSampleCount;
         this.mTotalTime += deltaTime;
         if(this.mTotalTime >= MAX_TIME_DURATION)
         {
            this.reset();
         }
      }
      
      public function reset(calculate:Boolean = true) : void
      {
         var fps:Number = 0;
         if(!(this.mTotalTime == 0 || this.mSampleCount == 0))
         {
            if(calculate)
            {
               fps = 1000 / this.mTotalTime * this.mSampleCount;
            }
            else
            {
               fps = 0;
            }
         }
         var displayText:String = "fps = " + Math.round(fps);
         for(var i:int = 0; i < this.mExclusiveDurationCalculator.length; i++)
         {
            if(this.mExclusiveDurationCalculator[i][1] != 0)
            {
               displayText += " " + this.mExclusiveDurationCalculator[i][0] + " = " + Math.round(this.mExclusiveDurationCalculator[i][2] / this.mExclusiveDurationCalculator[i][1]);
            }
            this.mExclusiveDurationCalculator[i][1] = 0;
            this.mExclusiveDurationCalculator[i][2] = 0;
         }
         this.mResultBox.text = displayText;
         this.mResultBox.mouseEnabled = false;
         this.mSampleCount = 0;
         this.mTotalTime = 0;
      }
      
      public function updateExclusiveCalculator(newName:String, newUpdateTime:Number) : void
      {
         var index:int = -1;
         for(var i:int = 0; i < this.mExclusiveDurationCalculator.length; i++)
         {
            if(this.mExclusiveDurationCalculator[i][0] == newName)
            {
               index = i;
            }
         }
         if(index == -1)
         {
            this.mExclusiveDurationCalculator[this.mExclusiveDurationCalculator.length] = new Array();
            index = this.mExclusiveDurationCalculator.length - 1;
            this.mExclusiveDurationCalculator[index][0] = newName;
            this.mExclusiveDurationCalculator[index][1] = 0;
            this.mExclusiveDurationCalculator[index][2] = 0;
         }
         this.mExclusiveDurationCalculator[index][1] += 1;
         this.mExclusiveDurationCalculator[index][2] += newUpdateTime;
      }
   }
}
