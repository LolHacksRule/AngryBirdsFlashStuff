package com.rovio.spritesheet
{
   import flash.display.BitmapData;
   
   public class SpriteSheetBase
   {
       
      
      private var mSprites:Vector.<SpriteRovio>;
      
      protected var mSheet:BitmapData;
      
      protected var mName:String;
      
      private var mScale:Number = 1.0;
      
      public function SpriteSheetBase(sheetBitmap:BitmapData)
      {
         super();
         this.mSheet = sheetBitmap;
         this.mSprites = new Vector.<SpriteRovio>();
      }
      
      protected static function validateSpriteRectangle(sprite:SpriteRovio, width:int, height:int) : void
      {
         if(sprite.rect.top < 0)
         {
            sprite.rect.top = 0;
         }
         if(sprite.rect.left < 0)
         {
            sprite.rect.left = 0;
         }
         if(sprite.rect.bottom > height)
         {
            sprite.rect.bottom = height;
         }
         if(sprite.rect.right > width)
         {
            sprite.rect.right = width;
         }
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
      
      public function set scale(scale:Number) : void
      {
         this.mScale = scale;
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
      
      public function setSheet(sheet:BitmapData) : void
      {
         this.mSheet = sheet;
      }
      
      public function addSprite(sprite:SpriteRovio) : void
      {
         this.mSprites.push(sprite);
      }
      
      public function getSprite(name:String) : SpriteRovio
      {
         for(var i:Number = 0; i < this.mSprites.length; i++)
         {
            if(this.mSprites[i].name == name)
            {
               return this.mSprites[i];
            }
         }
         return null;
      }
      
      public function getSpriteWithIndex(index:int) : SpriteRovio
      {
         if(index < 0 || index >= this.mSprites.length)
         {
            return null;
         }
         return this.mSprites[index];
      }
   }
}
