package com.rovio.sound
{
   import com.rovio.factory.Log;
   
   public class SoundEngine
   {
      
      private static var smSoundsOn:Boolean = true;
      
      private static const MAXIMUM_SOUND_CHANNELS_PLAYING:int = 32;
      
      private static var smTotalSlotReservedForChannels:int;
      
      private static var smChannelControllers:Vector.<SoundChannelController>;
      
      public static const DEFAULT_CHANNEL_NAME:String = "Default_Channel";
      
      public static const SHOW_WARNINGS:Boolean = false;
       
      
      public function SoundEngine()
      {
         super();
      }
      
      public static function init() : void
      {
         smChannelControllers = new Vector.<SoundChannelController>();
         smTotalSlotReservedForChannels = 0;
         addNewChannelControl(DEFAULT_CHANNEL_NAME,4,1);
      }
      
      public static function addNewChannelControl(newName:String, maxSoundCount:int, volume:Number) : void
      {
         if(smTotalSlotReservedForChannels >= MAXIMUM_SOUND_CHANNELS_PLAYING)
         {
            if(SHOW_WARNINGS)
            {
               Log.log("WARNING: SoundEngine:addNewChannelControl() " + newName + " failed because we already have more than " + MAXIMUM_SOUND_CHANNELS_PLAYING + " reserved");
            }
            return;
         }
         if(smTotalSlotReservedForChannels + maxSoundCount >= MAXIMUM_SOUND_CHANNELS_PLAYING)
         {
            maxSoundCount = MAXIMUM_SOUND_CHANNELS_PLAYING - smTotalSlotReservedForChannels;
         }
         smChannelControllers.push(new SoundChannelController(newName,maxSoundCount,volume));
         smTotalSlotReservedForChannels += maxSoundCount;
      }
      
      public static function getChannelController(name:String) : SoundChannelController
      {
         for(var i:int = 0; i < smChannelControllers.length; i++)
         {
            if(smChannelControllers[i].mName.toLowerCase() == name.toLowerCase())
            {
               return smChannelControllers[i];
            }
         }
         return null;
      }
      
      public static function setSounds(state:Boolean) : void
      {
         smSoundsOn = state;
         if(!state)
         {
            turnOffSounds();
         }
      }
      
      public static function turnOffSounds() : void
      {
         var controller:SoundChannelController = null;
         for each(controller in smChannelControllers)
         {
            controller.turnOffSounds();
         }
      }
      
      public static function isEnabled() : Boolean
      {
         return smSoundsOn;
      }
      
      public static function playSound(soundAssetName:String, channelName:String = "Default_Channel", loop:int = 0, volume:Number = -1) : SoundEffect
      {
         if(!smSoundsOn)
         {
            return null;
         }
         var controller:SoundChannelController = getChannelController(channelName);
         if(!controller)
         {
            if(SHOW_WARNINGS)
            {
               Log.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + soundAssetName + " because this channel does not exist " + channelName);
            }
            return null;
         }
         if(!controller.canPlayNewSounds())
         {
            if(SHOW_WARNINGS)
            {
               Log.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + soundAssetName + " this channel is full " + channelName);
            }
            return null;
         }
         return controller.playSound(soundAssetName,loop,volume);
      }
      
      public static function playSoundFromVariation(soundClipName:String, channelName:String = "Default_Channel") : void
      {
         var variationCount:int = int(soundClipName.charAt(soundClipName.length - 1));
         if(variationCount == 0)
         {
            if(SHOW_WARNINGS)
            {
               Log.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + soundClipName);
            }
            return;
         }
         variationCount = Math.random() * variationCount;
         variationCount += 1;
         soundClipName = soundClipName.slice(0,soundClipName.length - 1) + variationCount;
         SoundEngine.playSound(soundClipName,channelName);
      }
   }
}
