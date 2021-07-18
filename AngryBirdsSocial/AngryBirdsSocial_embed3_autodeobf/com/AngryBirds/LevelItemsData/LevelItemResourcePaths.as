package com.AngryBirds.LevelItemsData
{
   import com.rovio.factory.Log;
   
   public class LevelItemResourcePaths
   {
      
      public static var mPathsSound:Array;
       
      
      public function LevelItemResourcePaths()
      {
         super();
      }
      
      public static function loadPaths(sounds:XMLList) : void
      {
         var sound:XML = null;
         mPathsSound = new Array();
         for each(sound in sounds.Resource_Sound)
         {
            newResourcePathSound(sound.@id,sound.@channel,sound.@Clicked,sound.@Damaged,sound.@Destroyed,sound.@Ready,sound.@Flying,sound.@Rolling,sound.@SpecialEffect,sound.@Talk,sound.@Scream,sound.@Selected,sound.@Unselected);
         }
      }
      
      public static function newResourcePathSound(aName:String, aChannelName:String, soundClicked:String, soundDamaged:String, soundDestroyed:String, soundReady:String, soundFlying:String, soundRolling:String, soundSpecialEffect:String, soundTalk:String, soundScream:String, soundSelected:String, soundUnselected:String) : void
      {
         mPathsSound[mPathsSound.length] = new LevelItemResourcePathSound(aName,aChannelName,soundClicked,soundDamaged,soundDestroyed,soundReady,soundFlying,soundRolling,soundSpecialEffect,soundTalk,soundScream,soundSelected,soundUnselected);
      }
      
      public static function getResourcePathSound(name:String) : LevelItemResourcePathSound
      {
         for(var i:int = 0; i < mPathsSound.length; i++)
         {
            if(LevelItemResourcePathSound(mPathsSound[i]).mName.toLowerCase() == name.toLowerCase())
            {
               return LevelItemResourcePathSound(mPathsSound[i]);
            }
         }
         Log.log("WARNING: LevelItemResourcePaths -> getResourcePathSound request has no return value, this path does not exist: " + name);
         return null;
      }
   }
}
