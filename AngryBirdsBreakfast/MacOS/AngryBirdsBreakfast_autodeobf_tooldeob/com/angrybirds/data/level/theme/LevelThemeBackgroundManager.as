package com.angrybirds.data.level.theme
{
   public class LevelThemeBackgroundManager
   {
       
      
      protected var mBackgrounds:Vector.<LevelThemeBackground>;
      
      public function LevelThemeBackgroundManager()
      {
         super();
         this.mBackgrounds = new Vector.<LevelThemeBackground>();
      }
      
      public function loadBackgroundsXML(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Background)
         {
            this.newBackground(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@texture,_loc2_.@icon,_loc2_.@clearGround);
         }
      }
      
      public function newBackground(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:String, param8:Number = 0) : void
      {
         var _loc9_:LevelThemeBackground;
         (_loc9_ = new LevelThemeBackground(param1,param3,param4,param5,param6,param7)).initLayersFromXML(param2);
         this.mBackgrounds.push(_loc9_);
      }
      
      public function getBackground(param1:String) : LevelThemeBackground
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.mBackgrounds.length)
         {
            if(this.mBackgrounds[_loc2_].id.toLowerCase() == param1.toLowerCase())
            {
               return this.mBackgrounds[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function getRandomBackgroundName() : String
      {
         var _loc1_:int = Math.random() * this.mBackgrounds.length;
         return this.mBackgrounds[_loc1_].id;
      }
   }
}
