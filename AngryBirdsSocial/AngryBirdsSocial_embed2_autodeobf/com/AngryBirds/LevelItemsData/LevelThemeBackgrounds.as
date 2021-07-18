package com.AngryBirds.LevelItemsData
{
   public class LevelThemeBackgrounds
   {
      
      public static var mBackgrounds:Array;
       
      
      public function LevelThemeBackgrounds()
      {
         super();
      }
      
      public static function loadBackgrounds(backgrounds:XMLList) : void
      {
         var background:XML = null;
         mBackgrounds = new Array();
         for each(background in backgrounds.Background)
         {
            newBackground(background.@id,background.Layers,background.@sky,background.@ground,background.@sound,background.@texture,background.@textureStrokeColor,background.@icon);
         }
      }
      
      public static function newBackground(aName:String, layers:XMLList, colorSky:Number, colorGround:Number, ambientName:String, aTextureName:String, textureColor:Number, iconName:String) : void
      {
         mBackgrounds[mBackgrounds.length] = new LevelThemeBackground(aName,layers,colorSky,colorGround,ambientName,aTextureName,textureColor,iconName);
      }
      
      public static function getBackground(name:String) : LevelThemeBackground
      {
         for(var i:int = 0; i < mBackgrounds.length; i++)
         {
            if((mBackgrounds[i] as LevelThemeBackground).mName.toLowerCase() == name.toLowerCase())
            {
               return mBackgrounds[i] as LevelThemeBackground;
            }
         }
         return null;
      }
      
      public static function getRandomBackgroundName() : String
      {
         var r:int = Math.random() * mBackgrounds.length;
         return (mBackgrounds[r] as LevelThemeBackground).mName;
      }
   }
}
