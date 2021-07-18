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
      
      public function LevelItemResourcePathSound(aName:String, aChannelName:String, soundClicked:String, soundDamaged:String, soundDestroyed:String, soundReady:String, soundFlying:String, soundRolling:String, soundSpecialEffect:String, soundTalk:String, soundScream:String, soundSelected:String, soundUnselected:String)
      {
         super();
         this.mName = aName;
         this.mSoundChannelName = aChannelName;
         this.mPaths = new Array();
         this.mPaths[SOUND_CLICKED] = soundClicked;
         this.mPaths[SOUND_DAMAGED] = soundDamaged;
         this.mPaths[SOUND_DESTROYED] = soundDestroyed;
         this.mPaths[SOUND_READY] = soundReady;
         this.mPaths[SOUND_FLYING] = soundFlying;
         this.mPaths[SOUND_ROLLING] = soundRolling;
         this.mPaths[SOUND_SPECIAL_EFFECT] = soundSpecialEffect;
         this.mPaths[SOUND_TALK] = soundTalk;
         this.mPaths[SOUND_SCREAM] = soundScream;
         this.mPaths[SOUND_SELECTED] = soundSelected;
         this.mPaths[SOUND_UNSELECTED] = soundUnselected;
      }
   }
}
