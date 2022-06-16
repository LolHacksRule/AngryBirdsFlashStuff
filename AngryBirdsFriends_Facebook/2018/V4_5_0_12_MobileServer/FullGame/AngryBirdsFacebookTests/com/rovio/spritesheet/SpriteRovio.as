package com.rovio.spritesheet
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class SpriteRovio
   {
       
      
      public var rect:Rectangle;
      
      public var pivotX:int = 0;
      
      public var pivotY:int = 0;
      
      public var sheetBitmap:BitmapData;
      
      public var name:String;
      
      public var sheetScale:Number = 1.0;
      
      public function SpriteRovio()
      {
         super();
      }
   }
}
