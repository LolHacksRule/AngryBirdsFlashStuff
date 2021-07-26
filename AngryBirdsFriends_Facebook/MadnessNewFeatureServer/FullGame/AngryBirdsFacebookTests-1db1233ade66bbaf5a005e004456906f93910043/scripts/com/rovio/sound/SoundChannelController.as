package com.rovio.sound
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class SoundChannelController extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var mMaxSoundCount:int;
      
      public var mVolume:Number = 1;
      
      private var mPlayingSounds:Vector.<SoundEffect>;
      
      private var mInitialVolume:Number;
      
      private var mPausedSounds:Vector.<PausedSound>;
      
      public function SoundChannelController(newName:String, maxSoundCount:int, volume:Number)
      {
         super();
         this.mName = newName;
         this.mMaxSoundCount = maxSoundCount;
         this.mVolume = volume;
         this.mInitialVolume = this.mVolume;
         this.mPlayingSounds = new Vector.<SoundEffect>();
         this.mPausedSounds = new Vector.<PausedSound>();
      }
      
      public function canPlayNewSounds() : Boolean
      {
         var soundEffect:SoundEffect = null;
         if(this.mPlayingSounds.length < this.mMaxSoundCount)
         {
            return true;
         }
         for(var i:int = this.mPlayingSounds.length - 1; i >= 0; i--)
         {
            soundEffect = this.mPlayingSounds[i];
            if(soundEffect.remainingPlayTimeMilliSeconds <= 0)
            {
               soundEffect.forceSoundCompleted();
            }
         }
         return this.mPlayingSounds.length < this.mMaxSoundCount;
      }
      
      public function playSound(snd:Sound, sndID:String, loop:int = 0, volume:Number = -1, startTime:Number = 0) : SoundEffect
      {
         if(volume < 0)
         {
            volume = this.mInitialVolume;
         }
         return this.play(snd,sndID,loop,volume,startTime);
      }
      
      private function play(snd:Sound, sndID:String, loop:int, volume:Number, startTime:Number) : SoundEffect
      {
         var soundTransform:SoundTransform = new SoundTransform(volume);
         var sndChannel:SoundChannel = null;
         try
         {
            sndChannel = snd.play(startTime,0,soundTransform);
         }
         catch(e:Error)
         {
            dispatchEvent(new ErrorEvent(ErrorEvent.ERROR,false,false,e.message,e.errorID));
            sndChannel = null;
         }
         if(sndChannel == null)
         {
            return null;
         }
         var sndEffect:SoundEffect = new SoundEffect(sndChannel,sndID,snd.length * (loop + 1),loop);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.onSoundEffectCompleted);
         if(this.mVolume == 0)
         {
            sndEffect.mute();
         }
         this.mPlayingSounds.push(sndEffect);
         return sndEffect;
      }
      
      private function onSoundEffectCompleted(event:Event) : void
      {
         var snd:Sound = null;
         var removed:Boolean = false;
         var dEvent:DataEvent = null;
         var se:SoundEffect = SoundEffect(event.currentTarget);
         if(se.currentLoop < se.totalLoops)
         {
            snd = SoundEngine.getSound(se.id);
            this.removeSoundEffectFromStack(se);
            this.play(snd,se.id,se.totalLoops - 1 - se.currentLoop,se.volume,0);
         }
         else
         {
            se.removeEventListener(Event.SOUND_COMPLETE,this.onSoundEffectCompleted);
            removed = this.removeSoundEffectFromStack(se);
            if(removed)
            {
               dEvent = new DataEvent(event.type,false,false,se.id);
               dispatchEvent(dEvent);
            }
         }
      }
      
      private function removeSoundEffectFromStack(se:SoundEffect) : Boolean
      {
         var removed:Vector.<SoundEffect> = null;
         var removedSoundEffect:SoundEffect = null;
         var removedItem:Boolean = false;
         if(this.mPlayingSounds.indexOf(se) > -1)
         {
            removed = this.mPlayingSounds.splice(this.mPlayingSounds.indexOf(se),1);
            removedSoundEffect = removed[0];
            removedSoundEffect.destroy();
            removedSoundEffect = null;
            removed = null;
            removedItem = true;
         }
         return removedItem;
      }
      
      public function isPlaying() : Boolean
      {
         return this.mPlayingSounds.length > 0;
      }
      
      public function stopSounds() : void
      {
         var sf:SoundEffect = null;
         while(this.mPlayingSounds.length > 0)
         {
            sf = this.mPlayingSounds[0];
            sf.forceSoundCompleted();
         }
         this.mPausedSounds.length = 0;
      }
      
      public function pauseSounds() : void
      {
         var sf:SoundEffect = null;
         while(this.mPlayingSounds.length > 0)
         {
            sf = this.mPlayingSounds[0];
            this.mPausedSounds.push(sf.pause());
         }
      }
      
      public function resumeSounds() : void
      {
         var pausedSound:PausedSound = null;
         var sound:Sound = null;
         for each(pausedSound in this.mPausedSounds)
         {
            sound = SoundEngine.getSound(pausedSound.iD);
            if(sound)
            {
               this.playSound(sound,pausedSound.iD,pausedSound.loop,pausedSound.volume,pausedSound.startTime);
            }
         }
         this.mPausedSounds.length = 0;
      }
      
      public function muteSounds() : void
      {
         var sound:SoundEffect = null;
         this.mVolume = 0;
         for each(sound in this.mPlayingSounds)
         {
            sound.mute();
         }
      }
      
      public function unmuteSounds() : void
      {
         var sound:SoundEffect = null;
         this.mVolume = this.mInitialVolume;
         for each(sound in this.mPlayingSounds)
         {
            sound.unmute();
         }
      }
      
      public function get playingSongsCount() : int
      {
         return this.mPlayingSounds.length;
      }
      
      public function getSoundEffectById(id:String) : SoundEffect
      {
         for(var i:int = 0; i < this.mPlayingSounds.length; )
         {
            if(SoundEffect(this.mPlayingSounds[i]).id == id)
            {
               return SoundEffect(this.mPlayingSounds[i]);
            }
            i++;
         }
         return null;
      }
      
      public function getSoundEffectByIndex(index:int) : SoundEffect
      {
         return this.mPlayingSounds[index];
      }
      
      public function setVolume(volume:Number) : void
      {
         var sound:SoundEffect = null;
         this.mVolume = volume;
         for each(sound in this.mPlayingSounds)
         {
            sound.volume = this.mVolume;
         }
      }
   }
}
