package com.rovio.spritesheet
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class SpriteSheetJSONGGS extends SpriteSheetBase
   {
      
      public static var sOverrideUsePivot:Boolean = false;
       
      
      public function SpriteSheetJSONGGS(sheetData:Object, sheetBitmap:BitmapData)
      {
         super(sheetBitmap);
         this.parseData(sheetData);
      }
      
      protected function parseData(sheetData:Object) : void
      {
         var key:* = null;
         var spriteData:Object = null;
         var sprite:SpriteRovio = null;
         var usePivot:Boolean = false;
         if(sOverrideUsePivot)
         {
            usePivot = true;
         }
         if(sheetData.usePivot)
         {
            usePivot = true;
         }
         var scale:Number = 1;
         if(sheetData.scale)
         {
            scale = parseFloat(sheetData.scale);
         }
         this.scale = scale;
         for(key in sheetData)
         {
            if(key.indexOf("sprite_") != -1)
            {
               spriteData = sheetData[key];
               sprite = new SpriteRovio();
               sprite.name = spriteData.id;
               spriteData.width = Math.round(spriteData.width / scale);
               spriteData.height = Math.round(spriteData.height / scale);
               spriteData.x = Math.round(spriteData.x / scale);
               spriteData.y = Math.round(spriteData.y / scale);
               sprite.rect = new Rectangle(spriteData.x,spriteData.y,spriteData.width,spriteData.height);
               validateSpriteRectangle(sprite,mSheet.width,mSheet.height);
               if(usePivot)
               {
                  sprite.pivotX = spriteData.pivotx / scale;
                  sprite.pivotY = spriteData.pivoty / scale;
               }
               else
               {
                  sprite.pivotX = spriteData.width / 2;
                  sprite.pivotY = spriteData.height / 2;
               }
               sprite.sheetBitmap = mSheet;
               sprite.sheetScale = scale;
               addSprite(sprite);
            }
            else if(key == "image")
            {
               mName = sheetData[key];
            }
         }
      }
   }
}
