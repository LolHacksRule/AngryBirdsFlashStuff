package com.rovio.sound
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getTimer;
   
   public class SoundEffect extends EventDispatcher
   {
      
      public static const SOUND_ENDED:String = "onSoundEnded";
      
      private static const PLAY_POSITION_BUFFER_MILLI_SECONDS:int = 500;
       
      
      private var mSoundChannel:SoundChannel;
      
      private var mId:String;
      
      private var mVolume:Number;
      
      private var mIsMuted:Boolean;
      
      private var mLengthMilliSeconds:Number = 0.0;
      
      private var mTimeCreatedMilliSeconds:Number = 0;
      
      private var mLoop:int = 0;
      
      private var mCurrentLoop:int;
      
      public function SoundEffect(soundChannel:SoundChannel, id:String, lengthMilliSeconds:Number, loop:int = 0)
      {
         super();
         this.mSoundChannel = soundChannel;
         this.mId = id;
         this.mSoundChannel.addEventListener(Event.SOUND_COMPLETE,this.onSoundCompleted);
         this.mVolume = soundChannel.soundTransform.volume;
         this.mIsMuted = false;
         this.mLengthMilliSeconds = lengthMilliSeconds;
         this.mTimeCreatedMilliSeconds = getTimer();
         this.mLoop = loop;
         this.mCurrentLoop = -1;
      }
      
      public function set volume(value:Number) : void
      {
         this.mVolume = value;
         if(!this.mIsMuted)
         {
            this.changeVolume(this.mVolume);
         }
      }
      
      public function get volume() : Number
      {
         return this.mVolume;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get totalLoops() : int
      {
         return this.mLoop;
      }
      
      public function get currentLoop() : int
      {
         return this.mCurrentLoop;
      }
      
      public function get positionMilliSeconds() : Number
      {
         if(!this.mSoundChannel)
         {
            return this.lengthMilliSeconds;
         }
         var positionMilliSeconds:Number = this.mSoundChannel.position;
         var timeSinceCreatedMilliSeconds:int = getTimer() - this.mTimeCreatedMilliSeconds;
         if(positionMilliSeconds < timeSinceCreatedMilliSeconds - PLAY_POSITION_BUFFER_MILLI_SECONDS)
         {
            positionMilliSeconds = timeSinceCreatedMilliSeconds - PLAY_POSITION_BUFFER_MILLI_SECONDS;
         }
         return positionMilliSeconds;
      }
      
      public function get lengthMilliSeconds() : Number
      {
         return this.mLengthMilliSeconds;
      }
      
      public function get remainingPlayTimeMilliSeconds() : Number
      {
         return this.lengthMilliSeconds - this.positionMilliSeconds;
      }
      
      private function onSoundCompleted(evt:Event, forced:Boolean = false) : void
      {
         ++this.mCurrentLoop;
         if(forced)
         {
            this.mCurrentLoop = this.mLoop;
         }
         if(this.mSoundChannel)
         {
            this.mSoundChannel.removeEventListener(Event.SOUND_COMPLETE,this.onSoundCompleted);
         }
         dispatchEvent(new Event(Event.SOUND_COMPLETE));
         if(!forced)
         {
            dispatchEvent(new Event(SOUND_ENDED));
         }
      }
      
      private function changeVolume(value:Number) : void
      {
         var str:SoundTransform = this.mSoundChannel.soundTransform;
         str.volume = value;
         this.mSoundChannel.soundTransform = str;
      }
      
      public function forceSoundCompleted() : void
      {
         this.stop();
         this.onSoundCompleted(new Event(Event.SOUND_COMPLETE),true);
      }
      
      public function stop() : void
      {
         if(this.mSoundChannel)
         {
            this.mSoundChannel.stop();
         }
      }
      
      public function pause() : PausedSound
      {
         var pauseValues:PausedSound = new PausedSound(this.id,this.mLoop,this.mVolume,this.mSoundChannel.position);
         this.forceSoundCompleted();
         return pauseValues;
      }
      
      public function destroy() : void
      {
         this.stop();
         this.mSoundChannel.removeEventListener(Event.SOUND_COMPLETE,this.onSoundCompleted);
         this.mSoundChannel = null;
      }
      
      public function mute() : void
      {
         if(this.mSoundChannel)
         {
            this.changeVolume(0);
            this.mIsMuted = true;
         }
      }
      
      public function unmute() : void
      {
         if(this.mSoundChannel)
         {
            this.changeVolume(this.mVolume);
            this.mIsMuted = false;
         }
      }
   }
}
