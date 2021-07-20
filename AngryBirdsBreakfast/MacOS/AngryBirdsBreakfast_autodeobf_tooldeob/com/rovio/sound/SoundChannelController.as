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
      
      public function SoundChannelController(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.mMaxSoundCount = param2;
         this.mVolume = param3;
         this.mInitialVolume = this.mVolume;
         this.mPlayingSounds = new Vector.<SoundEffect>();
      }
      
      public function canPlayNewSounds() : Boolean
      {
         var _loc2_:SoundEffect = null;
         if(this.mPlayingSounds.length < this.mMaxSoundCount)
         {
            return true;
         }
         var _loc1_:int = this.mPlayingSounds.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.mPlayingSounds[_loc1_];
            if(_loc2_.remainingPlayTimeMilliSeconds <= 0)
            {
               _loc2_.forceSoundCompleted();
            }
            _loc1_--;
         }
         return this.mPlayingSounds.length < this.mMaxSoundCount;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : SoundEffect
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.mInitialVolume;
         }
         else
         {
            volume *= this.mInitialVolume;
         }
         var soundTransform:SoundTransform = new SoundTransform(volume);
         var sndChannel:SoundChannel = null;
         try
         {
            sndChannel = snd.play(startTime,loop,soundTransform);
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
         var sndEffect:SoundEffect = new SoundEffect(sndChannel,sndID,snd.length * (loop + 1));
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.onSoundEffectCompleted);
         if(this.mVolume == 0)
         {
            sndEffect.mute();
         }
         this.mPlayingSounds.push(sndEffect);
         return sndEffect;
      }
      
      private function onSoundEffectCompleted(param1:Event) : void
      {
         var _loc3_:Vector.<SoundEffect> = null;
         var _loc4_:SoundEffect = null;
         var _loc5_:DataEvent = null;
         var _loc2_:SoundEffect = SoundEffect(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.onSoundEffectCompleted);
         if(this.mPlayingSounds.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.mPlayingSounds.splice(this.mPlayingSounds.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function isPlaying() : Boolean
      {
         return this.mPlayingSounds.length > 0;
      }
      
      public function stopSounds() : void
      {
         var _loc1_:SoundEffect = null;
         while(this.mPlayingSounds.length > 0)
         {
            _loc1_ = this.mPlayingSounds[0];
            _loc1_.forceSoundCompleted();
         }
      }
      
      public function muteSounds() : void
      {
         var _loc1_:SoundEffect = null;
         this.mVolume = 0;
         for each(_loc1_ in this.mPlayingSounds)
         {
            _loc1_.mute();
         }
      }
      
      public function unmuteSounds() : void
      {
         var _loc1_:SoundEffect = null;
         this.mVolume = this.mInitialVolume;
         for each(_loc1_ in this.mPlayingSounds)
         {
            _loc1_.unmute();
         }
      }
      
      public function getSoundEffectById(param1:String) : SoundEffect
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.mPlayingSounds.length)
         {
            if(SoundEffect(this.mPlayingSounds[_loc2_]).id == param1)
            {
               return SoundEffect(this.mPlayingSounds[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
