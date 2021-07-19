package com.angrybirds.data.level.item
{
   import com.rovio.sound.SoundEffect;
   import com.rovio.sound.SoundEngine;
   import com.rovio.utils.HashMap;
   
   public class LevelItemSoundManagerLua
   {
      
      public static const COLLISION:String = "collision";
      
      public static const LAUNCH:String = "launch";
      
      public static const SPECIAL:String = "special";
      
      public static const SELECTION:String = "selection";
      
      public static const UNSELECTION:String = "unselection";
      
      public static const COLLISIONSOUND:String = "collisionSound";
      
      public static const DAMAGESOUND:String = "damageSound";
      
      public static const DESTROYEDSOUND:String = "destroyedSound";
      
      public static const ROLLINGSOUND:String = "rollingSound";
      
      public static const ENTER_ATMOSPHERE:String = "enter_atmosphere";
      
      public static const EXIT_ATMOSPHERE:String = "exit_atmosphere";
       
      
      private var mAudioGroups:HashMap;
      
      private var mSampleChannels:HashMap;
      
      private var mSampleVolumes:HashMap;
      
      private var mSampleNameMappings:HashMap;
      
      private var mChannelVolumes:HashMap;
      
      public function LevelItemSoundManagerLua()
      {
         super();
         this.mAudioGroups = new HashMap();
         this.mSampleChannels = new HashMap();
         this.mSampleVolumes = new HashMap();
         this.mSampleNameMappings = new HashMap();
         this.mChannelVolumes = new HashMap();
      }
      
      public function loadSounds(soundsObject:Object) : void
      {
         if(!soundsObject)
         {
            return;
         }
         this.loadAudioGroups(soundsObject);
         this.loadSampleNameMappings(soundsObject);
         if(soundsObject.audioChannels)
         {
            this.loadAudioChannels(soundsObject);
         }
         this.loadSampleSettings(soundsObject);
         this.createChannels(soundsObject);
      }
      
      private function loadAudioGroups(soundsObject:Object) : void
      {
         var key:* = null;
         var audioGroup:Vector.<String> = null;
         var soundName:String = null;
         for(key in soundsObject.audioGroups)
         {
            audioGroup = new Vector.<String>();
            for each(soundName in soundsObject.audioGroups[key])
            {
               audioGroup.push(soundName);
            }
            this.mAudioGroups[key] = audioGroup;
         }
      }
      
      private function loadAudioChannels(soundsObject:Object) : void
      {
         var soundName:* = null;
         for(soundName in soundsObject.audioChannels)
         {
            this.mSampleChannels[soundName] = soundsObject.audioChannels[soundName];
         }
      }
      
      private function loadSampleSettings(soundsObject:Object) : void
      {
         var audioFile:Object = null;
         for each(audioFile in soundsObject.files)
         {
            if(audioFile.channel)
            {
               this.mSampleChannels[audioFile.clipName] = audioFile.channel;
            }
            if(audioFile.volume)
            {
               this.mSampleVolumes[audioFile.clipName] = audioFile.volume;
            }
         }
      }
      
      private function loadSampleNameMappings(soundsObject:Object) : void
      {
         var sampleName:* = null;
         if(!soundsObject.sampleNameMappings)
         {
            return;
         }
         for(sampleName in soundsObject.sampleNameMappings)
         {
            this.mSampleNameMappings[sampleName] = soundsObject.sampleNameMappings[sampleName].toString();
         }
      }
      
      protected function createChannels(soundsObject:Object) : void
      {
         var numChannels:int = 0;
         var channelVolume:Number = NaN;
         var channelName:* = null;
         for(channelName in soundsObject.audioChannelSettings)
         {
            numChannels = soundsObject.audioChannelSettings[channelName].numChannels;
            channelVolume = soundsObject.audioChannelSettings[channelName].volume;
            SoundEngine.addNewChannelControl(channelName,numChannels,channelVolume);
            this.mChannelVolumes[channelName] = channelVolume;
         }
      }
      
      protected function getRandomSoundFromGroup(key:String) : String
      {
         var sounds:Vector.<String> = this.mAudioGroups[key];
         if(!sounds)
         {
            return null;
         }
         return sounds[Math.floor(Math.random() * sounds.length)];
      }
      
      protected function getSampleChannel(key:String) : String
      {
         return this.mSampleChannels[key];
      }
      
      protected function getSampleVolume(key:String) : Number
      {
         return this.mSampleVolumes[key];
      }
      
      protected function getSampleName(originalName:String) : String
      {
         return this.mSampleNameMappings[originalName] || originalName;
      }
      
      protected function getChannelVolume(channelName:String) : Number
      {
         return this.mChannelVolumes[channelName];
      }
      
      public function playSound(soundGroupName:String, soundChannelName:String = null, loopCount:int = 0, startTime:Number = 0) : SoundEffect
      {
         var returnValue:SoundEffect = null;
         var soundName:String = this.getRandomSoundFromGroup(soundGroupName);
         if(!soundName)
         {
            soundName = soundGroupName;
         }
         if(!soundChannelName)
         {
            soundChannelName = this.getSampleChannel(soundName);
         }
         var volume:Number = this.getSampleVolume(soundName);
         if(isNaN(volume))
         {
            volume = -1;
         }
         soundName = this.getSampleName(soundName);
         if(!soundName)
         {
            return null;
         }
         soundChannelName = soundChannelName == null ? SoundEngine.DEFAULT_CHANNEL_NAME : soundChannelName;
         if(SoundEngine.hasVariationSound(soundName) && soundChannelName != "CHANNEL_AMBIENT")
         {
            returnValue = SoundEngine.playSoundFromVariation(soundName,SoundEngine.DEFAULT_CHANNEL_NAME,loopCount,volume,startTime);
         }
         else
         {
            returnValue = SoundEngine.playSound(soundName,soundChannelName,loopCount,volume,startTime);
         }
         return returnValue;
      }
      
      public function stopChannel(soundGroupName:String) : void
      {
         var soundName:String = this.getRandomSoundFromGroup(soundGroupName);
         if(!soundName)
         {
            soundName = soundGroupName;
         }
         var soundChannelName:String = this.getSampleChannel(soundName);
         if(soundChannelName == null)
         {
            SoundEngine.stopChannel(SoundEngine.DEFAULT_CHANNEL_NAME);
         }
         else
         {
            SoundEngine.stopChannel(soundChannelName);
         }
      }
   }
}
