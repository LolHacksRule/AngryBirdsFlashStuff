package com.rovio.sound
{
   import com.rovio.assets.AssetCache;
   import each.Log;
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.media.Sound;
   import flash.media.SoundLoaderContext;
   import flash.media.SoundMixer;
   import flash.media.SoundTransform;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class SoundEngine
   {
      
      private static const MAXIMUM_SOUND_CHANNELS_PLAYING:int = 64;
      
      private static var smSoundsOn:Boolean = true;
      
      private static var smTotalSlotReservedForChannels:int;
      
      private static var sChannelControllers:Dictionary;
      
      private static var sSounds:Dictionary;
      
      private static var sStreamingSoundEffects:Dictionary;
      
      public static const DEFAULT_CHANNEL_NAME:String = "Default_Channel";
      
      public static const SHOW_WARNINGS:Boolean = false;
      
      private static var sEnabled:Boolean = true;
      
      private static var smEventDispatcher:EventDispatcher = new EventDispatcher();
       
      
      public function SoundEngine()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         sEnabled = param1;
      }
      
      public static function init() : void
      {
         sChannelControllers = new Dictionary();
         sSounds = new Dictionary();
         sStreamingSoundEffects = new Dictionary();
         smTotalSlotReservedForChannels = 0;
         addNewChannelControl(DEFAULT_CHANNEL_NAME,4,1);
      }
      
      public static function addNewChannelControl(param1:String, param2:int, param3:Number) : void
      {
         if(!param1 || getChannelController(param1) != null)
         {
            return;
         }
         if(smTotalSlotReservedForChannels >= MAXIMUM_SOUND_CHANNELS_PLAYING)
         {
            if(!SHOW_WARNINGS)
            {
            }
            return;
         }
         if(smTotalSlotReservedForChannels + param2 >= MAXIMUM_SOUND_CHANNELS_PLAYING)
         {
            param2 = MAXIMUM_SOUND_CHANNELS_PLAYING - smTotalSlotReservedForChannels;
         }
         var _loc4_:SoundChannelController;
         (_loc4_ = new SoundChannelController(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,onSoundChannelSoundComplete);
         _loc4_.addEventListener(ErrorEvent.ERROR,onSoundChannelError);
         sChannelControllers[param1.toLowerCase()] = _loc4_;
         smTotalSlotReservedForChannels += param2;
      }
      
      public static function getChannelController(param1:String) : SoundChannelController
      {
         if(!param1)
         {
            return null;
         }
         return sChannelControllers[param1.toLowerCase()];
      }
      
      public static function getChannelControllerNames() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in sChannelControllers)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function setSounds(param1:Boolean) : void
      {
         if(param1 == smSoundsOn)
         {
            return;
         }
         smSoundsOn = param1;
         toggleGlobalVolumeMuting(smSoundsOn);
      }
      
      public static function setSoundEffectsEnabled(param1:Boolean) : void
      {
         var _loc2_:SoundChannelController = null;
         for each(_loc2_ in sChannelControllers)
         {
            if(param1)
            {
               _loc2_.unmuteSounds();
            }
            else
            {
               _loc2_.muteSounds();
            }
         }
      }
      
      protected static function toggleGlobalVolumeMuting(param1:Boolean) : void
      {
         var _loc2_:Number = !!param1 ? Number(1) : Number(0);
         SoundMixer.soundTransform = new SoundTransform(_loc2_);
      }
      
      public static function stopSounds() : void
      {
         var _loc1_:SoundChannelController = null;
         for each(_loc1_ in sChannelControllers)
         {
            _loc1_.stopSounds();
         }
         dispatchEvent(new SoundEngineEvent(SoundEngineEvent.CHANNEL_STOP_ALL));
      }
      
      public static function get soundsOn() : Boolean
      {
         return smSoundsOn;
      }
      
      private static function checkSoundChannelController(param1:String, param2:String) : SoundChannelController
      {
         if(!sEnabled)
         {
            return null;
         }
         var _loc3_:SoundChannelController = getChannelController(param1);
         if(!_loc3_)
         {
            if(SHOW_WARNINGS)
            {
               Log.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.canPlayNewSounds())
         {
            if(SHOW_WARNINGS)
            {
               Log.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function playStreamingSound(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : SoundEffect
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:SoundEngineEvent = null;
         var _loc8_:SoundChannelController;
         if(!(_loc8_ = checkSoundChannelController(param4,param2)))
         {
            return null;
         }
         if(sStreamingSoundEffects[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = sSounds[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,onStreamDataLoadComplete);
            _loc9_.addEventListener(Event.ID3,onStreamingID3);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,onStreamingError);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onStreamingError);
            sSounds[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new SoundEngineEvent(SoundEngineEvent.STREAM_START)).soundId = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:SoundEffect = _loc8_.playSound(_loc9_,param2,param5,param6,param7);
         sStreamingSoundEffects[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function onStreamDataLoadComplete(param1:Event) : void
      {
         var _loc2_:SoundEngineEvent = new SoundEngineEvent(SoundEngineEvent.STREAM_DATA_COMPLETE);
         _loc2_.soundId = getSoundKeyBySound(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function getSoundKeyBySound(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in sSounds)
         {
            _loc3_ = sSounds[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function onStreamingID3(param1:Event) : void
      {
      }
      
      private static function onStreamingError(param1:ErrorEvent) : void
      {
         var _loc2_:SoundEngineErrorEvent = new SoundEngineErrorEvent(SoundEngineErrorEvent.STREAM_ERROR);
         var _loc3_:String = getSoundKeyBySound(Sound(param1.currentTarget));
         _loc2_.soundId = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete sSounds[_loc3_];
         if(sStreamingSoundEffects[_loc3_])
         {
            SoundEffect(sStreamingSoundEffects[_loc3_]).forceSoundCompleted();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function onSoundChannelSoundComplete(param1:DataEvent) : void
      {
         delete sStreamingSoundEffects[param1.data];
         dispatchEvent(new SoundEngineEvent(SoundEngineEvent.SOUND_COMPLETE,param1.data));
      }
      
      private static function onSoundChannelError(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : SoundEffect
      {
         var _loc6_:SoundChannelController;
         if(!(_loc6_ = checkSoundChannelController(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if(!(_loc7_ = getSound(param1)))
         {
            return null;
         }
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function getSound(param1:String, param2:Boolean = true) : Sound
      {
         var _loc4_:Class = null;
         var _loc3_:Sound = sSounds[param1];
         if(_loc3_ == null)
         {
            if(!(_loc4_ = AssetCache.getAssetFromCache(param1,false,param2) as Class))
            {
               if(param2)
               {
                  Log.log("Sound not in AssetCache: " + param1);
               }
               return null;
            }
            _loc3_ = new _loc4_();
            sSounds[param1] = _loc3_;
         }
         return _loc3_;
      }
      
      public static function stopChannel(param1:String = "Default_Channel") : void
      {
         var _loc2_:SoundChannelController = getChannelController(param1);
         if(_loc2_ != null)
         {
            _loc2_.stopSounds();
            dispatchEvent(new SoundEngineEvent(SoundEngineEvent.CHANNEL_STOP,"",param1));
         }
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
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         smEventDispatcher.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return smEventDispatcher.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         smEventDispatcher.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return smEventDispatcher.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return smEventDispatcher.willTrigger(param1);
      }
   }
}
