package com.rovio.ui.Components.Helpers
{
   public class UIScaleUtility
   {
      
      private static const ALIGN_RIGHT:String = "RIGHT";
      
      private static const ALIGN_LEFT:String = "LEFT";
      
      private static const ALIGN_TOP:String = "TOP";
      
      private static const ALIGN_BOTTOM:String = "BOTTOM";
      
      private static const ALIGN_CENTER:String = "CENTER";
      
      private static const SCALE_NORMAL:String = "NORMAL";
      
      private static const SCALE_SQRT:String = "SQRT";
      
      private static const SCALE_SQR:String = "SQR";
      
      private static const SCALE_NORMAL_SQRT:String = "NORMAL_SQRT";
       
      
      private var mInitialX:Number = 0.0;
      
      private var mInitialY:Number = 0.0;
      
      private var mInitialScaleX:Number = 1.0;
      
      private var mInitialScaleY:Number = 1.0;
      
      private var mInitialViewWidth:Number = 1.0;
      
      private var mInitialViewHeight:Number = 1.0;
      
      private var mAlignH:String = "LEFT";
      
      private var mAlignV:String = "TOP";
      
      private var mScaleDownH:Boolean = false;
      
      private var mScaleUpH:Boolean = false;
      
      private var mScaleDownV:Boolean = false;
      
      private var mScaleUpV:Boolean = false;
      
      private var mAspectRatioFixed:Boolean = false;
      
      private var mAspectRatioFixedUp:Boolean = false;
      
      private var mAspectRatioFixedUpDown:Boolean = false;
      
      private var mScaleFunction:String = "NORMAL";
      
      private var mHorizontalScale:Number = 1.0;
      
      private var mVerticalScale:Number = 1.0;
      
      private var mHorizontalScaleBeforeAspectFix:Number = 1.0;
      
      private var mVerticalScaleBeforeAspectFix:Number = 1.0;
      
      private var mHorizontalScaleBeforeScaleFunction:Number = 1.0;
      
      private var mVerticalScaleBeforeScaleFunction:Number = 1.0;
      
      private var mX:Number = 0.0;
      
      private var mY:Number = 0.0;
      
      private var mViewWidth:Number = 1.0;
      
      private var mViewHeight:Number = 1.0;
      
      public function UIScaleUtility(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String)
      {
         super();
         this.mInitialX = param1;
         this.mInitialY = param2;
         this.mX = param1;
         this.mY = param2;
         this.mInitialScaleX = param3;
         this.mInitialScaleY = param4;
         this.mInitialViewWidth = param5;
         this.mInitialViewHeight = param6;
         this.mViewWidth = param5;
         this.mViewHeight = param6;
         this.setAlignH(param7);
         this.setAlignV(param8);
         this.setScaleH(param9);
         this.setScaleV(param10);
         this.setAspectRatioFixed(param11);
         this.setScaleFunction(param12);
         this.mScaleFunction = param12;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set x(param1:Number) : void
      {
         this.mInitialX = this.getOriginalCoordinateValue(param1,this.mViewWidth,this.mInitialViewWidth,this.mAlignH,this.mScaleDownH,this.mScaleUpH,this.mHorizontalScale,this.mHorizontalScaleBeforeAspectFix,this.mHorizontalScaleBeforeScaleFunction);
      }
      
      public function set y(param1:Number) : void
      {
         this.mInitialY = this.getOriginalCoordinateValue(param1,this.mViewHeight,this.mInitialViewHeight,this.mAlignV,this.mScaleDownV,this.mScaleUpV,this.mVerticalScale,this.mVerticalScaleBeforeAspectFix,this.mVerticalScaleBeforeScaleFunction);
      }
      
      public function get scaleX() : Number
      {
         return this.mInitialScaleX * this.horizontalScale;
      }
      
      public function get scaleY() : Number
      {
         return this.mInitialScaleY * this.verticalScale;
      }
      
      private function get horizontalScale() : Number
      {
         if(this.mScaleDownH || this.mScaleUpH)
         {
            return this.mHorizontalScale;
         }
         return 1;
      }
      
      private function get verticalScale() : Number
      {
         if(this.mScaleDownV || this.mScaleUpV)
         {
            return this.mVerticalScale;
         }
         return 1;
      }
      
      private function setAlignH(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == ALIGN_RIGHT || param1 == ALIGN_CENTER)
            {
               this.mAlignH = param1;
            }
         }
      }
      
      private function setAlignV(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == ALIGN_BOTTOM || param1 == ALIGN_CENTER)
            {
               this.mAlignV = param1;
            }
         }
      }
      
      private function setScaleH(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.mScaleDownH = true;
               this.mScaleUpH = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.mScaleDownH = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.mScaleUpH = true;
            }
         }
      }
      
      private function setScaleV(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.mScaleDownV = true;
               this.mScaleUpV = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.mScaleDownV = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.mScaleUpV = true;
            }
         }
      }
      
      private function setScaleFunction(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == SCALE_SQRT)
            {
               this.mScaleFunction = SCALE_SQRT;
            }
            else if(param1.toUpperCase() == SCALE_SQR)
            {
               this.mScaleFunction = SCALE_SQR;
            }
            else if(param1.toUpperCase() == SCALE_NORMAL_SQRT)
            {
               this.mScaleFunction = SCALE_NORMAL_SQRT;
            }
         }
      }
      
      private function setAspectRatioFixed(param1:String) : void
      {
         if(param1)
         {
            switch(param1.toUpperCase())
            {
               case "TRUE":
                  this.mAspectRatioFixed = true;
                  break;
               case "UP":
                  this.mAspectRatioFixed = true;
                  this.mAspectRatioFixedUp = true;
                  break;
               case "UPDOWN":
                  this.mAspectRatioFixed = true;
                  this.mAspectRatioFixedUpDown = true;
            }
         }
      }
      
      private function updateScaleAspectRatioFixed() : void
      {
         if(this.mAspectRatioFixed)
         {
            if(this.mHorizontalScale < this.mVerticalScale)
            {
               if(!this.mAspectRatioFixedUp)
               {
                  this.mVerticalScale = this.mHorizontalScale;
               }
               else
               {
                  this.mHorizontalScale = this.mVerticalScale;
               }
            }
            else if(!this.mAspectRatioFixedUp)
            {
               this.mHorizontalScale = this.mVerticalScale;
            }
            else
            {
               this.mVerticalScale = this.mHorizontalScale;
            }
         }
      }
      
      private function updateScaleUpDown() : void
      {
         if(!this.mScaleUpH && this.mHorizontalScale > 1)
         {
            this.mHorizontalScale = 1;
         }
         else if(!this.mScaleDownH && this.mHorizontalScale < 1)
         {
            this.mHorizontalScale = 1;
         }
         if(!this.mScaleUpV && this.mVerticalScale > 1)
         {
            this.mVerticalScale = 1;
         }
         else if(!this.mScaleDownV && this.mVerticalScale < 1)
         {
            this.mVerticalScale = 1;
         }
      }
      
      private function updateScaleFunction() : void
      {
         if(this.mScaleFunction == SCALE_SQRT)
         {
            this.mHorizontalScale = Math.sqrt(this.mHorizontalScale);
            this.mVerticalScale = Math.sqrt(this.mVerticalScale);
         }
         else if(this.mScaleFunction == SCALE_SQR)
         {
            this.mHorizontalScale *= this.mHorizontalScale;
            this.mVerticalScale *= this.mVerticalScale;
         }
         else if(this.mScaleFunction == SCALE_NORMAL_SQRT)
         {
            if(this.mHorizontalScale > 1)
            {
               this.mHorizontalScale = Math.sqrt(this.mHorizontalScale);
            }
            if(this.mVerticalScale > 1)
            {
               this.mVerticalScale = Math.sqrt(this.mVerticalScale);
            }
         }
      }
      
      private function getOriginalCoordinateValue(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number, param8:Number, param9:Number) : Number
      {
         var _loc10_:Number = param1;
         if(param4 == ALIGN_LEFT || param4 == ALIGN_TOP)
         {
            if(param5 || param6)
            {
               _loc10_ = param1 / param7;
            }
         }
         else if(param4 == ALIGN_RIGHT || param4 == ALIGN_BOTTOM)
         {
            if(param5 || param6)
            {
               _loc10_ = param3 - (param2 - param1) / param7;
            }
            else
            {
               _loc10_ = param3 - (param2 - param1);
            }
         }
         else if(param4 == ALIGN_CENTER)
         {
            if(param5 || param6)
            {
               _loc10_ = (param1 - param2 / 2) / param7 + param3 / 2;
            }
            else
            {
               _loc10_ = param1 - param2 / 2 + param3 / 2;
            }
         }
         return _loc10_;
      }
      
      private function getUpdatedCoordinateValue(param1:Number, param2:Number, param3:Number, param4:String, param5:Boolean, param6:Boolean, param7:Number) : Number
      {
         var _loc8_:Number = param1;
         if(param4 == ALIGN_LEFT || param4 == ALIGN_TOP)
         {
            if(param5 || param6)
            {
               _loc8_ = param1 * param7;
            }
         }
         else if(param4 == ALIGN_RIGHT || param4 == ALIGN_BOTTOM)
         {
            if(param5 || param6)
            {
               _loc8_ = param2 - (param3 - param1) * param7;
            }
            else
            {
               _loc8_ = param2 - (param3 - param1);
            }
         }
         else if(param4 == ALIGN_CENTER)
         {
            if(param5 || param6)
            {
               _loc8_ = param2 / 2 + (param1 - param3 / 2) * param7;
            }
            else
            {
               _loc8_ = param2 / 2 + (param1 - param3 / 2);
            }
         }
         return _loc8_;
      }
      
      public function updateScale(param1:Number, param2:Number) : void
      {
         this.mViewWidth = param1;
         this.mViewHeight = param2;
         this.mHorizontalScale = param1 / this.mInitialViewWidth;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         if(this.mAspectRatioFixedUpDown)
         {
            _loc3_ = this.mHorizontalScale = param2 / this.mInitialViewHeight;
            _loc4_ = this.mVerticalScale = this.mHorizontalScale;
         }
         else
         {
            this.mHorizontalScale = param1 / this.mInitialViewWidth;
            this.mVerticalScale = param2 / this.mInitialViewHeight;
         }
         this.mHorizontalScaleBeforeAspectFix = this.mHorizontalScale;
         this.mVerticalScaleBeforeAspectFix = this.mVerticalScale;
         this.updateScaleAspectRatioFixed();
         this.updateScaleUpDown();
         this.mHorizontalScaleBeforeScaleFunction = this.mHorizontalScale;
         this.mVerticalScaleBeforeScaleFunction = this.mVerticalScale;
         if(this.mAspectRatioFixedUpDown)
         {
            this.mHorizontalScale = param1 / this.mInitialViewWidth;
            this.mVerticalScale = param2 / this.mInitialViewHeight;
         }
         this.updateScaleFunction();
         this.mX = this.getUpdatedCoordinateValue(this.mInitialX,param1,this.mInitialViewWidth,this.mAlignH,this.mScaleDownH,this.mScaleUpH,this.mHorizontalScale);
         this.mY = this.getUpdatedCoordinateValue(this.mInitialY,param2,this.mInitialViewHeight,this.mAlignV,this.mScaleDownV,this.mScaleUpV,this.mVerticalScale);
         if(this.mAspectRatioFixedUpDown)
         {
            this.mHorizontalScale = _loc3_;
            this.mVerticalScale = _loc4_;
         }
      }
   }
}
