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
      
      public static function addNewChannelControl(param1:String, param2:int, param3:Number) : void
      {
         if(smTotalSlotReservedForChannels >= MAXIMUM_SOUND_CHANNELS_PLAYING)
         {
            if(SHOW_WARNINGS)
            {
               Log.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + MAXIMUM_SOUND_CHANNELS_PLAYING + " reserved");
            }
            return;
         }
         if(smTotalSlotReservedForChannels + param2 >= MAXIMUM_SOUND_CHANNELS_PLAYING)
         {
            param2 = MAXIMUM_SOUND_CHANNELS_PLAYING - smTotalSlotReservedForChannels;
         }
         smChannelControllers.push(new SoundChannelController(param1,param2,param3));
         smTotalSlotReservedForChannels += param2;
      }
      
      public static function getChannelController(param1:String) : SoundChannelController
      {
         var _loc2_:int = 0;
         while(_loc2_ < smChannelControllers.length)
         {
            if(smChannelControllers[_loc2_].mName.toLowerCase() == param1.toLowerCase())
            {
               return smChannelControllers[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function setSounds(param1:Boolean) : void
      {
         smSoundsOn = param1;
         if(!param1)
         {
            turnOffSounds();
         }
      }
      
      public static function turnOffSounds() : void
      {
         var _loc1_:SoundChannelController = null;
         for each(_loc1_ in smChannelControllers)
         {
            _loc1_.turnOffSounds();
         }
      }
      
      public static function isEnabled() : Boolean
      {
         return smSoundsOn;
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1) : SoundEffect
      {
         if(!smSoundsOn)
         {
            return null;
         }
         var _loc5_:SoundChannelController;
         if(!(_loc5_ = getChannelController(param2)))
         {
            if(SHOW_WARNINGS)
            {
               Log.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc5_.canPlayNewSounds())
         {
            if(SHOW_WARNINGS)
            {
               Log.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         return _loc5_.playSound(param1,param3,param4);
      }
      
      public static function playSoundFromVariation(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(SHOW_WARNINGS)
            {
               Log.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         SoundEngine.playSound(param1,param2);
      }
   }
}
