package com.rovio.spritesheet
{
   public interface ISpriteSheetContainer
   {
       
      
      function dispose() : void;
      
      function getSprite(param1:String) : SpriteRovio;
      
      function get spriteSheetCount() : int;
      
      function getSpriteSheet(param1:int) : SpriteSheetBase;
   }
}
