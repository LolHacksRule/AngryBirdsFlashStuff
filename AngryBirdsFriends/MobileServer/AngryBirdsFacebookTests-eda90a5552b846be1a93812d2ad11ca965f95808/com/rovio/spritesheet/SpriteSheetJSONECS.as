package com.rovio.spritesheet
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class SpriteSheetJSONECS extends SpriteSheetBase
   {
       
      
      public function SpriteSheetJSONECS(data:Object, sheetBitmap:BitmapData)
      {
         super(sheetBitmap);
         var sheetData:Object = data.spriteSheets[0];
         this.parseData(sheetData);
      }
      
      protected function parseData(sheetData:Object) : void
      {
         var frame:Object = null;
         var width:Number = NaN;
         var height:Number = NaN;
         var x:Number = NaN;
         var y:Number = NaN;
         var pivotX:Number = NaN;
         var pivotY:Number = NaN;
         var sprite:SpriteRovio = null;
         mName = sheetData.meta.image;
         var frames:Array = sheetData.frames;
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
