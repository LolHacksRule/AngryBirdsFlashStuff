package com.rovio.spritesheet
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class FontSheetJSONGGS extends SpriteSheetBase
   {
       
      
      public function FontSheetJSONGGS(sheetData:Object, sheetBitmap:BitmapData)
      {
         super(sheetBitmap);
         this.parseData(sheetData);
      }
      
      protected function parseData(sheetData:Object) : void
      {
         var key:* = null;
         var charsData:Object = null;
         var charKey:* = null;
         var charData:Object = null;
         var sprite:SpriteRovio = null;
         var scale:Number = 1;
         if(sheetData.scale)
         {
            scale = parseFloat(sheetData.scale);
         }
         this.scale = scale;
         for(key in sheetData)
         {
            if(key.indexOf("chars") == 0)
            {
               charsData = sheetData[key];
               for(charKey in charsData)
               {
                  charData = charsData[charKey];
                  charData.width = Math.round(charData.width / scale);
                  charData.height = Math.ceil(charData.height / scale);
                  charData.x = Math.round(charData.x / scale);
                  charData.y = Math.round(charData.y / scale);
                  sprite = new SpriteRovio();
                  sprite.name = String.fromCharCode(charData.code);
                  sprite.rect = new Rectangle(charData.x,charData.y,charData.width,charData.height);
                  sprite.pivotX = charData.width / 2;
                  sprite.pivotY = charData.baseline;
                  sprite.sheetBitmap = mSheet;
                  addSprite(sprite);
               }
            }
            else if(key == "name")
            {
               mName = sheetData[key];
            }
         }
      }
   }
}
