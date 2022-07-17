package com.AngryBirds.LevelItemsData
{
   public class LevelThemeBackgrounds
   {
      
      public static var mBackgrounds:Array;
       
      
      public function LevelThemeBackgrounds()
      {
         super();
      }
      
      public static function loadBackgrounds(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         mBackgrounds = new Array();
         for each(_loc2_ in param1.Background)
         {
            newBackground(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@textureStrokeColor,_loc2_.@icon,_loc2_.@cost);
         }
      }
      
      public static function newBackground(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number) : void
      {
         mBackgrounds[mBackgrounds.length] = new LevelThemeBackground(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      public static function getBackground(param1:String) : LevelThemeBackground
      {
         var _loc2_:int = 0;
         while(_loc2_ < mBackgrounds.length)
         {
            if((mBackgrounds[_loc2_] as LevelThemeBackground).mName.toLowerCase() == param1.toLowerCase())
            {
               return mBackgrounds[_loc2_] as LevelThemeBackground;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function getRandomBackgroundName() : String
      {
         var _loc1_:int = Math.random() * mBackgrounds.length;
         return (mBackgrounds[_loc1_] as LevelThemeBackground).mName;
      }
   }
}
