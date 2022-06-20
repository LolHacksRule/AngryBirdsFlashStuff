package com.angrybirds.engine
{
   import com.rovio.graphics.Animation;
   import flash.geom.Rectangle;
   import starling.display.DisplayObject;
   import starling.display.Image;
   import starling.display.Sprite;
   
   public class ScoreRenderer
   {
       
      
      private var mSprite:Sprite;
      
      private var mNumberAnimation:Animation;
      
      private var mUseColor:Boolean;
      
      public function ScoreRenderer(aSprite:Sprite, aNumberAnimation:Animation, useColor:Boolean = false)
      {
         super();
         this.mSprite = aSprite;
         this.mNumberAnimation = aNumberAnimation;
         this.mUseColor = useColor;
      }
      
      public function clear() : void
      {
         while(this.mSprite.numChildren > 0)
         {
            this.mSprite.removeChildAt(0,true);
         }
      }
      
      public function renderScore(value:int) : void
      {
         var digitImage:Image = null;
         this.clear();
         var images:Vector.<DisplayObject> = this.getImages(this.extractDigits(value));
         var width:int = this.getWidth(images);
         var height:int = this.getHeight(images);
         var x:int = -width / 2;
         for each(digitImage in images)
         {
            this.mSprite.addChild(digitImage);
            digitImage.x = x;
            digitImage.y = -height / 2;
            x += digitImage.width;
         }
         this.mSprite.flatten();
      }
      
      private function extractDigits(value:int) : Vector.<int>
      {
         var digit:int = 0;
         var digits:Vector.<int> = new Vector.<int>();
         if(value <= 0)
         {
            digits.push(0);
         }
         else
         {
            while(value > 0)
            {
               digit = value % 10;
               value /= 10;
               digits.push(digit);
            }
         }
         digits.reverse();
         return digits;
      }
      
      private function getImages(digits:Vector.<int>) : Vector.<DisplayObject>
      {
         var digit:int = 0;
         var digitImage:DisplayObject = null;
         var images:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         for each(digit in digits)
         {
            digitImage = this.mNumberAnimation.getFrame(digit);
            digitImage.pivotX = 0;
            digitImage.pivotY = 0;
            images.push(digitImage);
         }
         return images;
      }
      
      private function getWidth(images:Vector.<DisplayObject>) : int
      {
         var image:DisplayObject = null;
         var width:int = 0;
         for each(image in images)
         {
            width += image.width;
         }
         return width;
      }
      
      private function getHeight(images:Vector.<DisplayObject>) : int
      {
         var image:DisplayObject = null;
         var bounds:Rectangle = null;
         var top:int = 0;
         var bottom:int = 0;
         var first:Boolean = true;
         for each(image in images)
         {
            bounds = image.bounds;
            if(first)
            {
               top = bounds.top;
               bottom = bounds.bottom;
               first = false;
            }
            else
            {
               if(bounds.top < top)
               {
                  top = bounds.top;
               }
               if(bounds.bottom > bottom)
               {
                  bottom = bounds.bottom;
               }
            }
         }
         return bottom - top;
      }
   }
}
