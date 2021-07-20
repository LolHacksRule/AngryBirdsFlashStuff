package com.rovio.spritesheet
{
   import flash.display.BitmapData;
   
   public class SpriteSheetBase
   {
       
      
      private var mSprites:Vector.<SpriteRovio>;
      
      protected var mSheet:BitmapData;
      
      protected var mName:String;
      
      private var mScale:Number = 1.0;
      
      public function SpriteSheetBase(param1:BitmapData)
      {
         super();
         this.mSheet = param1;
         this.mSprites = new Vector.<SpriteRovio>();
      }
      
      public function get spriteCount() : int
      {
         return this.mSprites.length;
      }
      
      public function get bitmapWidth() : int
      {
         return this.mSheet.width;
      }
      
      public function get bitmapHeight() : int
      {
         return this.mSheet.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.mSheet;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.mScale;
      }
      
      public function set scale(param1:Number) : void
      {
         this.mScale = param1;
      }
      
      public function dispose() : void
      {
         if(this.mSheet)
         {
            this.mSheet.dispose();
            this.mSheet = null;
         }
         this.mSprites = new Vector.<SpriteRovio>();
      }
      
      public function setSheet(param1:BitmapData) : void
      {
         this.mSheet = param1;
      }
      
      public function addSprite(param1:SpriteRovio) : void
      {
         this.mSprites.push(param1);
      }
      
      public function getSprite(param1:String) : SpriteRovio
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.mSprites.length)
         {
            if(this.mSprites[_loc2_].name == param1)
            {
               return this.mSprites[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function getSpriteWithIndex(param1:int) : SpriteRovio
      {
         if(param1 < 0 || param1 >= this.mSprites.length)
         {
            return null;
         }
         return this.mSprites[param1];
      }
   }
}
