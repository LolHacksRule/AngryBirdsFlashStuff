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
      
      public function FPSMeter(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.mActivate = param1;
         if(param1)
         {
            this.mResultBox = new TextField();
            this.mResultBox.text = "...";
            this.mResultBox.textColor = 16711680;
            this.mResultBox.selectable = false;
            this.mResultBox.height = 18;
            this.mResultBox.width = 150;
            addChild(this.mResultBox);
            if(param2)
            {
               param2.addChild(this);
            }
         }
         this.mExclusiveDurationCalculator = new Array();
      }
      
      public function update(param1:Number) : void
      {
         ++this.mSampleCount;
         this.mTotalTime += param1;
         if(this.mTotalTime >= MAX_TIME_DURATION)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.mTotalTime == 0 || this.mSampleCount == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.mTotalTime * this.mSampleCount;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.mExclusiveDurationCalculator.length)
         {
            if(this.mExclusiveDurationCalculator[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.mExclusiveDurationCalculator[_loc4_][0] + " = " + Math.round(this.mExclusiveDurationCalculator[_loc4_][2] / this.mExclusiveDurationCalculator[_loc4_][1]);
            }
            this.mExclusiveDurationCalculator[_loc4_][1] = 0;
            this.mExclusiveDurationCalculator[_loc4_][2] = 0;
            _loc4_++;
         }
         this.mResultBox.text = _loc3_;
         this.mSampleCount = 0;
         this.mTotalTime = 0;
      }
      
      public function updateExclusiveCalculator(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.mExclusiveDurationCalculator.length)
         {
            if(this.mExclusiveDurationCalculator[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.mExclusiveDurationCalculator[this.mExclusiveDurationCalculator.length] = new Array();
            _loc3_ = this.mExclusiveDurationCalculator.length - 1;
            this.mExclusiveDurationCalculator[_loc3_][0] = param1;
            this.mExclusiveDurationCalculator[_loc3_][1] = 0;
            this.mExclusiveDurationCalculator[_loc3_][2] = 0;
         }
         this.mExclusiveDurationCalculator[_loc3_][1] += 1;
         this.mExclusiveDurationCalculator[_loc3_][2] += param2;
      }
   }
}
