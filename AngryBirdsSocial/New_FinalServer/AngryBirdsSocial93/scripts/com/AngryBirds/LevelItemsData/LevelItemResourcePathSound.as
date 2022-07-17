package com.AngryBirds.LevelItemsData
{
   public class LevelItemResourcePathSound
   {
      
      public static const SOUND_CLICKED:int = 0;
      
      public static const SOUND_DAMAGED:int = 1;
      
      public static const SOUND_DESTROYED:int = 2;
      
      public static const SOUND_READY:int = 3;
      
      public static const SOUND_FLYING:int = 4;
      
      public static const SOUND_ROLLING:int = 5;
      
      public static const SOUND_SPECIAL_EFFECT:int = 6;
      
      public static const SOUND_TALK:int = 7;
      
      public static const SOUND_SCREAM:int = 8;
      
      public static const SOUND_SELECTED:int = 9;
      
      public static const SOUND_UNSELECTED:int = 10;
       
      
      public var mName:String;
      
      public var mPaths:Array;
      
      public var mSoundChannelName:String;
      
      public function LevelItemResourcePathSound(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String, param13:String)
      {
         super();
         this.mName = param1;
         this.mSoundChannelName = param2;
         this.mPaths = new Array();
         this.mPaths[SOUND_CLICKED] = param3;
         this.mPaths[SOUND_DAMAGED] = param4;
         this.mPaths[SOUND_DESTROYED] = param5;
         this.mPaths[SOUND_READY] = param6;
         this.mPaths[SOUND_FLYING] = param7;
         this.mPaths[SOUND_ROLLING] = param8;
         this.mPaths[SOUND_SPECIAL_EFFECT] = param9;
         this.mPaths[SOUND_TALK] = param10;
         this.mPaths[SOUND_SCREAM] = param11;
         this.mPaths[SOUND_SELECTED] = param12;
         this.mPaths[SOUND_UNSELECTED] = param13;
      }
   }
}
