package com.rovio.spritesheet
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class SpriteSheetJSONArtPacker extends SpriteSheetBase
   {
       
      
      public function SpriteSheetJSONArtPacker(data:Object, sheetBitmap:BitmapData)
      {
         super(sheetBitmap);
         mName = data.meta.image;
         this.parseData(data.frames);
      }
      
      protected function parseData(frames:Array) : void
      {
         var frame:Object = null;
         var width:Number = NaN;
         var height:Number = NaN;
         var x:Number = NaN;
         var y:Number = NaN;
         var pivotX:Number = NaN;
         var pivotY:Number = NaN;
         var sprite:SpriteRovio = null;
         for each(frame in frames)
         {
            width = frame.frame.w;
            height = frame.frame.h;
            x = frame.frame.x;
            y = frame.frame.y;
            pivotX = frame.pivot.x;
            pivotY = frame.pivot.y;
            sprite = new SpriteRovio();
            sprite.name = frame.filename;
            sprite.rect = new Rectangle(x,y,width,height);
            sprite.pivotX = pivotX;
            sprite.pivotY = pivotY;
            sprite.sheetBitmap = mSheet;
            sprite.sheetScale = 1;
            validateSpriteRectangle(sprite,mSheet.width,mSheet.height);
            addSprite(sprite);
         }
      }
   }
}
