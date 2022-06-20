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
      
      private var mAspectRatioFixedProduct:Boolean = false;
      
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
      
      public function UIScaleUtility(x:Number, y:Number, scaleX:Number, scaleY:Number, viewWidth:Number, viewHeight:Number, alignH:String, alignV:String, scaleH:String, scaleV:String, aspectRatioFixed:String, scaleFunction:String)
      {
         super();
         this.mInitialX = x;
         this.mInitialY = y;
         this.mX = x;
         this.mY = y;
         this.mInitialScaleX = scaleX;
         this.mInitialScaleY = scaleY;
         this.mInitialViewWidth = viewWidth;
         this.mInitialViewHeight = viewHeight;
         this.mViewWidth = viewWidth;
         this.mViewHeight = viewHeight;
         this.setAlignH(alignH);
         this.setAlignV(alignV);
         this.setScaleH(scaleH);
         this.setScaleV(scaleV);
         this.setAspectRatioFixed(aspectRatioFixed);
         this.setScaleFunction(scaleFunction);
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set x(x:Number) : void
      {
         this.mInitialX = this.getOriginalCoordinateValue(x,this.mViewWidth,this.mInitialViewWidth,this.mAlignH,this.mScaleDownH,this.mScaleUpH,this.mHorizontalScale,this.mHorizontalScaleBeforeAspectFix,this.mHorizontalScaleBeforeScaleFunction);
      }
      
      public function set y(y:Number) : void
      {
         this.mInitialY = this.getOriginalCoordinateValue(y,this.mViewHeight,this.mInitialViewHeight,this.mAlignV,this.mScaleDownV,this.mScaleUpV,this.mVerticalScale,this.mVerticalScaleBeforeAspectFix,this.mVerticalScaleBeforeScaleFunction);
      }
      
      public function get scaleX() : Number
      {
         return this.mInitialScaleX * this.horizontalScale;
      }
      
      public function set scaleX(scaleX:Number) : void
      {
         this.mInitialScaleX = scaleX;
      }
      
      public function get scaleY() : Number
      {
         return this.mInitialScaleY * this.verticalScale;
      }
      
      public function set scaleY(scaleY:Number) : void
      {
         this.mInitialScaleY = scaleY;
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
      
      private function setAlignH(alignH:String) : void
      {
         if(alignH)
         {
            alignH = alignH.toUpperCase();
            if(alignH == ALIGN_RIGHT || alignH == ALIGN_CENTER)
            {
               this.mAlignH = alignH;
            }
         }
      }
      
      private function setAlignV(alignV:String) : void
      {
         if(alignV)
         {
            alignV = alignV.toUpperCase();
            if(alignV == ALIGN_BOTTOM || alignV == ALIGN_CENTER)
            {
               this.mAlignV = alignV;
            }
         }
      }
      
      private function setScaleH(scaleH:String) : void
      {
         if(scaleH)
         {
            if(scaleH.toUpperCase() == "TRUE")
            {
               this.mScaleDownH = true;
               this.mScaleUpH = true;
            }
            else if(scaleH.toUpperCase() == "DOWN")
            {
               this.mScaleDownH = true;
            }
            else if(scaleH.toUpperCase() == "UP")
            {
               this.mScaleUpH = true;
            }
         }
      }
      
      private function setScaleV(scaleV:String) : void
      {
         if(scaleV)
         {
            if(scaleV.toUpperCase() == "TRUE")
            {
               this.mScaleDownV = true;
               this.mScaleUpV = true;
            }
            if(scaleV.toUpperCase() == "DOWN")
            {
               this.mScaleDownV = true;
            }
            else if(scaleV.toUpperCase() == "UP")
            {
               this.mScaleUpV = true;
            }
         }
      }
      
      private function setScaleFunction(scaleFunction:String) : void
      {
         if(scaleFunction)
         {
            if(scaleFunction.toUpperCase() == SCALE_SQRT)
            {
               this.mScaleFunction = SCALE_SQRT;
            }
            else if(scaleFunction.toUpperCase() == SCALE_SQR)
            {
               this.mScaleFunction = SCALE_SQR;
            }
            else if(scaleFunction.toUpperCase() == SCALE_NORMAL_SQRT)
            {
               this.mScaleFunction = SCALE_NORMAL_SQRT;
            }
         }
      }
      
      private function setAspectRatioFixed(aspectRatioFixed:String) : void
      {
         if(aspectRatioFixed)
         {
            switch(aspectRatioFixed.toUpperCase())
            {
               case "TRUE":
                  this.mAspectRatioFixed = true;
                  break;
               case "UP":
                  this.mAspectRatioFixed = true;
                  this.mAspectRatioFixedUp = true;
                  break;
               case "PRODUCT":
                  this.mAspectRatioFixed = true;
                  this.mAspectRatioFixedProduct = true;
            }
         }
      }
      
      private function updateScaleAspectRatioFixed() : void
      {
         if(this.mAspectRatioFixed)
         {
            if(this.mAspectRatioFixedProduct)
            {
               this.mHorizontalScale = Math.sqrt(this.mHorizontalScale * this.mVerticalScale);
               this.mVerticalScale = this.mHorizontalScale;
            }
            else if(this.mHorizontalScale < this.mVerticalScale)
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
      
      private function getOriginalCoordinateValue(value:Number, dimension:Number, initialDimension:Number, align:String, isScaleDown:Boolean, isScaleUp:Boolean, scale:Number, scaleBeforeAspectFix:Number, scaleBeforeFunction:Number) : Number
      {
         var initialValue:Number = value;
         if(align == ALIGN_LEFT || align == ALIGN_TOP)
         {
            if(isScaleDown || isScaleUp)
            {
               initialValue = value / scale;
            }
         }
         else if(align == ALIGN_RIGHT || align == ALIGN_BOTTOM)
         {
            if(isScaleDown || isScaleUp)
            {
               initialValue = initialDimension - (dimension - value) / scale;
            }
            else
            {
               initialValue = initialDimension - (dimension - value);
            }
         }
         else if(align == ALIGN_CENTER)
         {
            if(isScaleDown || isScaleUp)
            {
               initialValue = (value - dimension / 2) / scale + initialDimension / 2;
            }
            else
            {
               initialValue = value - dimension / 2 + initialDimension / 2;
            }
         }
         return initialValue;
      }
      
      private function getUpdatedCoordinateValue(initialValue:Number, dimension:Number, initialDimension:Number, align:String, isScaleDown:Boolean, isScaleUp:Boolean, scale:Number) : Number
      {
         var value:Number = initialValue;
         if(align == ALIGN_LEFT || align == ALIGN_TOP)
         {
            if(isScaleDown || isScaleUp)
            {
               value = initialValue * scale;
            }
         }
         else if(align == ALIGN_RIGHT || align == ALIGN_BOTTOM)
         {
            if(isScaleDown || isScaleUp)
            {
               value = dimension - (initialDimension - initialValue) * scale;
            }
            else
            {
               value = dimension - (initialDimension - initialValue);
            }
         }
         else if(align == ALIGN_CENTER)
         {
            if(isScaleDown || isScaleUp)
            {
               value = dimension / 2 + (initialValue - initialDimension / 2) * scale;
            }
            else
            {
               value = dimension / 2 + (initialValue - initialDimension / 2);
            }
         }
         return value;
      }
      
      public function updateScale(width:Number, height:Number) : void
      {
         this.mViewWidth = width;
         this.mViewHeight = height;
         this.mHorizontalScale = width / this.mInitialViewWidth;
         this.mVerticalScale = height / this.mInitialViewHeight;
         this.mHorizontalScaleBeforeAspectFix = this.mHorizontalScale;
         this.mVerticalScaleBeforeAspectFix = this.mVerticalScale;
         this.updateScaleAspectRatioFixed();
         this.updateScaleUpDown();
         this.mHorizontalScaleBeforeScaleFunction = this.mHorizontalScale;
         this.mVerticalScaleBeforeScaleFunction = this.mVerticalScale;
         this.updateScaleFunction();
         this.mX = this.getUpdatedCoordinateValue(this.mInitialX,width,this.mInitialViewWidth,this.mAlignH,this.mScaleDownH,this.mScaleUpH,this.mHorizontalScale);
         this.mY = this.getUpdatedCoordinateValue(this.mInitialY,height,this.mInitialViewHeight,this.mAlignV,this.mScaleDownV,this.mScaleUpV,this.mVerticalScale);
      }
   }
}
