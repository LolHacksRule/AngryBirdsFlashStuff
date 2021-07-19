package com.rovio.sound
{
   import com.rovio.assets.AssetCache;
   import com.rovio.factory.Log;
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
      
      private static const MAXIMUM_SOUND_CHANNELS_PLAYING:int = 128;
      
      private static var smSoundsOn:Boolean = true;
      
      private static var smTotalSlotReservedForChannels:int;
      
      private static var sChannelControllers:Dictionary;
      
      private static var sSounds:Dictionary;
      
      private static var sStreamingSoundEffects:Dictionary;
      
      public static const DEFAULT_CHANNEL_NAME:String = "Default_Channel";
      
      public static const UI_CHANNEL:String = "UI_Channel";
      
      public static const SHOW_WARNINGS:Boolean = false;
      
      private static var sEnabled:Boolean = true;
      
      private static var smEventDispatcher:EventDispatcher = new EventDispatcher();
       
      
      public function SoundEngine()
      {
         super();
      }
      
      public static function set enabled(enabled:Boolean) : void
      {
         sEnabled = enabled;
      }
      
      public static function init() : void
      {
         sChannelControllers = new Dictionary();
         sSounds = new Dictionary();
         sStreamingSoundEffects = new Dictionary();
         smTotalSlotReservedForChannels = 0;
         addNewChannelControl(DEFAULT_CHANNEL_NAME,4,0.8);
         addNewChannelControl(UI_CHANNEL,4,0.9);
      }
      
      public static function addNewChannelControl(newName:String, maxSoundCount:int, volume:Number) : void
      {
         if(!newName || getChannelController(newName) != null)
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
         if(smTotalSlotReservedForChannels + maxSoundCount >= MAXIMUM_SOUND_CHANNELS_PLAYING)
         {
            maxSoundCount = MAXIMUM_SOUND_CHANNELS_PLAYING - smTotalSlotReservedForChannels;
         }
         var soundChannel:SoundChannelController = new SoundChannelController(newName,maxSoundCount,volume);
         soundChannel.addEventListener(Event.SOUND_COMPLETE,onSoundChannelSoundComplete);
         soundChannel.addEventListener(ErrorEvent.ERROR,onSoundChannelError);
         sChannelControllers[newName.toLowerCase()] = soundChannel;
         smTotalSlotReservedForChannels += maxSoundCount;
      }
      
      public static function getChannelController(name:String) : SoundChannelController
      {
         if(!name)
         {
            return null;
         }
         return sChannelControllers[name.toLowerCase()];
      }
      
      public static function getChannelControllerNames() : Vector.<String>
      {
         var key:* = null;
         var names:Vector.<String> = new Vector.<String>();
         for(key in sChannelControllers)
         {
            names.push(key);
         }
         return names;
      }
      
      public static function setSounds(state:Boolean) : void
      {
         if(state == smSoundsOn)
         {
            return;
         }
         smSoundsOn = state;
         toggleGlobalVolumeMuting(smSoundsOn);
      }
      
      public static function setSoundEffectsEnabled(state:Boolean) : void
      {
         var controller:SoundChannelController = null;
         for each(controller in sChannelControllers)
         {
            if(state)
            {
               controller.unmuteSounds();
            }
            else
            {
               controller.muteSounds();
            }
         }
      }
      
      protected static function toggleGlobalVolumeMuting(state:Boolean) : void
      {
         var volume:Number = !!state ? Number(1) : Number(0);
         SoundMixer.soundTransform = new SoundTransform(volume);
      }
      
      public static function stopSounds() : void
      {
         var controller:SoundChannelController = null;
         for each(controller in sChannelControllers)
         {
            controller.stopSounds();
         }
         dispatchEvent(new SoundEngineEvent(SoundEngineEvent.CHANNEL_STOP_ALL));
      }
      
      public static function pauseSounds(exclusionList:Vector.<String> = null) : void
      {
         var controller:SoundChannelController = null;
         for each(controller in sChannelControllers)
         {
            if(exclusionList == null || exclusionList.indexOf(controller.mName) == -1)
            {
               controller.pauseSounds();
            }
         }
         dispatchEvent(new SoundEngineEvent(SoundEngineEvent.CHANNEL_STOP_ALL));
      }
      
      public static function resumeSounds() : void
      {
         var controller:SoundChannelController = null;
         for each(controller in sChannelControllers)
         {
            controller.resumeSounds();
         }
      }
      
      public static function get soundsOn() : Boolean
      {
         return smSoundsOn;
      }
      
      private static function checkSoundChannelController(channelName:String, soundAssetName:String) : SoundChannelController
      {
         if(!sEnabled)
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
         return controller;
      }
      
      public static function playStreamingSound(URL:String, soundID:String, bufferTime:int = 1000, channelName:String = "Default_Channel", loop:int = 0, volume:Number = -1, startTime:Number = 0) : SoundEffect
      {
         var req:URLRequest = null;
         var context:SoundLoaderContext = null;
         var sndEvent:SoundEngineEvent = null;
         var controller:SoundChannelController = checkSoundChannelController(channelName,soundID);
         if(!controller)
         {
            return null;
         }
         if(sStreamingSoundEffects[soundID])
         {
            return null;
         }
         var snd:Sound = sSounds[soundID];
         if(snd == null)
         {
            snd = new Sound();
            snd.addEventListener(Event.COMPLETE,onStreamDataLoadComplete);
            snd.addEventListener(Event.ID3,onStreamingID3);
            snd.addEventListener(IOErrorEvent.IO_ERROR,onStreamingError);
            snd.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onStreamingError);
            sSounds[soundID] = snd;
            req = new URLRequest(URL);
            context = new SoundLoaderContext(bufferTime,true);
            snd.load(req,context);
            sndEvent = new SoundEngineEvent(SoundEngineEvent.STREAM_START);
            sndEvent.soundId = soundID;
            dispatchEvent(sndEvent);
         }
         var effect:SoundEffect = controller.playSound(snd,soundID,loop,volume,startTime);
         sStreamingSoundEffects[soundID] = effect;
         return effect;
      }
      
      private static function onStreamDataLoadComplete(event:Event) : void
      {
         var sndEvent:SoundEngineEvent = new SoundEngineEvent(SoundEngineEvent.STREAM_DATA_COMPLETE);
         sndEvent.soundId = getSoundKeyBySound(Sound(event.currentTarget));
         dispatchEvent(sndEvent);
      }
      
      private static function getSoundKeyBySound(target:Sound) : String
      {
         var key:* = null;
         var sound:Sound = null;
         for(key in sSounds)
         {
            sound = sSounds[key];
            if(sound == target)
            {
               return key;
            }
         }
         return null;
      }
      
      private static function onStreamingID3(event:Event) : void
      {
      }
      
      private static function onStreamingError(event:ErrorEvent) : void
      {
         var sndEvent:SoundEngineErrorEvent = new SoundEngineErrorEvent(SoundEngineErrorEvent.STREAM_ERROR);
         var key:String = getSoundKeyBySound(Sound(event.currentTarget));
         sndEvent.soundId = key;
         sndEvent.error = event.text;
         sndEvent.errorID = event.errorID;
         delete sSounds[key];
         if(sStreamingSoundEffects[key])
         {
            SoundEffect(sStreamingSoundEffects[key]).forceSoundCompleted();
         }
         dispatchEvent(sndEvent);
      }
      
      private static function onSoundChannelSoundComplete(event:DataEvent) : void
      {
         delete sStreamingSoundEffects[event.data];
         dispatchEvent(new SoundEngineEvent(SoundEngineEvent.SOUND_COMPLETE,event.data));
      }
      
      private static function onSoundChannelError(event:ErrorEvent) : void
      {
         dispatchEvent(event);
      }
      
      public static function playSound(soundAssetName:String, channelName:String = "Default_Channel", loop:int = 0, volume:Number = -1, startTime:Number = 0) : SoundEffect
      {
         var controller:SoundChannelController = checkSoundChannelController(channelName,soundAssetName);
         if(!controller)
         {
            return null;
         }
         var sound:Sound = getSound(soundAssetName);
         if(!sound)
         {
            return null;
         }
         return controller.playSound(sound,soundAssetName,loop,volume,startTime);
      }
      
      public static function getSound(soundAssetName:String, showError:Boolean = true) : Sound
      {
         var sndClass:Class = null;
         var sound:Sound = sSounds[soundAssetName];
         if(sound == null)
         {
            sndClass = AssetCache.getAssetFromCache(soundAssetName,false,showError) as Class;
            if(!sndClass)
            {
               if(showError)
               {
                  Log.log("Sound not in AssetCache: " + soundAssetName);
               }
               return null;
            }
            sound = new sndClass();
            sSounds[soundAssetName] = sound;
         }
         return sound;
      }
      
      public static function stopChannel(channelName:String = "Default_Channel") : void
      {
         var controller:SoundChannelController = getChannelController(channelName);
         if(controller != null)
         {
            controller.stopSounds();
            dispatchEvent(new SoundEngineEvent(SoundEngineEvent.CHANNEL_STOP,"",channelName));
         }
      }
      
      public static function hasVariationSound(soundClipName:String) : Boolean
      {
         var variationCount:int = int(soundClipName.charAt(soundClipName.length - 1));
         return variationCount != 0;
      }
      
      public static function playSoundFromVariation(soundClipName:String, channelName:String = "Default_Channel", loop:int = 0, volume:Number = -1, startTime:Number = 0) : SoundEffect
      {
         var variationCount:int = int(soundClipName.charAt(soundClipName.length - 1));
         if(variationCount == 0)
         {
            return SoundEngine.playSound(soundClipName,channelName,loop,volume,startTime);
         }
         variationCount = Math.random() * variationCount;
         variationCount += 1;
         soundClipName = soundClipName.slice(0,soundClipName.length - 1) + variationCount;
         return SoundEngine.playSound(soundClipName,channelName,loop,volume,startTime);
      }
      
      public static function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false) : void
      {
         smEventDispatcher.addEventListener(type,listener,useCapture,priority,useWeakReference);
      }
      
      public static function dispatchEvent(event:Event) : Boolean
      {
         return smEventDispatcher.dispatchEvent(event);
      }
      
      public static function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         smEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public static function hasEventListener(type:String) : Boolean
      {
         return smEventDispatcher.hasEventListener(type);
      }
      
      public static function willTrigger(type:String) : Boolean
      {
         return smEventDispatcher.willTrigger(type);
      }
      
      public static function setSoundChannelVolume(soundChannelName:String, volume:Number) : void
      {
         var controller:SoundChannelController = null;
         for each(controller in sChannelControllers)
         {
            if(controller.mName == soundChannelName)
            {
               controller.setVolume(volume);
               break;
            }
         }
      }
      
      public static function getSoundChannelVolume(soundChannelName:String) : Number
      {
         var controller:SoundChannelController = null;
         for each(controller in sChannelControllers)
         {
            if(controller.mName == soundChannelName)
            {
               return controller.mVolume;
            }
         }
         return 0;
      }
      
      public static function isSoundPlaying(soundName:String, channelName:String) : Boolean
      {
         if(!soundName || !channelName)
         {
            return false;
         }
         var channelController:SoundChannelController = sChannelControllers[channelName.toLowerCase()];
         if(channelController)
         {
            return channelController.getSoundEffectById(soundName) != null;
         }
         return false;
      }
   }
}
