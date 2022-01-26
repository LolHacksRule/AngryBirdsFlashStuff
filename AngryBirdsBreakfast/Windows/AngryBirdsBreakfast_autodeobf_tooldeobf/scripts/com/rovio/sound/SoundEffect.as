package com.rovio.sound
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getTimer;
   
   public class SoundEffect extends EventDispatcher
   {
      
      private static const PLAY_POSITION_BUFFER_MILLI_SECONDS:int = 500;
       
      
      private var mSoundChannel:SoundChannel;
      
      private var mId:String;
      
      private var mVolume:Number;
      
      private var mIsMuted:Boolean;
      
      private var mLengthMilliSeconds:Number = 0.0;
      
      private var mTimeCreatedMilliSeconds:Number = 0;
      
      public function SoundEffect(param1:SoundChannel, param2:String, param3:Number)
      {
         super();
         this.mSoundChannel = param1;
         this.mId = param2;
         this.mSoundChannel.addEventListener(Event.SOUND_COMPLETE,this.onSoundCompleted);
         this.mVolume = param1.soundTransform.volume;
         this.mIsMuted = false;
         this.mLengthMilliSeconds = param3;
         this.mTimeCreatedMilliSeconds = getTimer();
      }
      
      public function set volume(param1:Number) : void
      {
         this.mVolume = param1;
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
      
      public function get positionMilliSeconds() : Number
      {
         var _loc1_:Number = this.mSoundChannel.position;
         var _loc2_:int = getTimer() - this.mTimeCreatedMilliSeconds;
         if(_loc1_ < _loc2_ - PLAY_POSITION_BUFFER_MILLI_SECONDS)
         {
            _loc1_ = _loc2_ - PLAY_POSITION_BUFFER_MILLI_SECONDS;
         }
         return _loc1_;
      }
      
      public function get lengthMilliSeconds() : Number
      {
         return this.mLengthMilliSeconds;
      }
      
      public function get remainingPlayTimeMilliSeconds() : Number
      {
         return this.lengthMilliSeconds - this.positionMilliSeconds;
      }
      
      private function onSoundCompleted(param1:Event) : void
      {
         if(this.mSoundChannel)
         {
            this.mSoundChannel.removeEventListener(Event.SOUND_COMPLETE,this.onSoundCompleted);
         }
         dispatchEvent(new Event(Event.SOUND_COMPLETE));
      }
      
      private function changeVolume(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.mSoundChannel.soundTransform;
         _loc2_.volume = param1;
         this.mSoundChannel.soundTransform = _loc2_;
      }
      
      public function forceSoundCompleted() : void
      {
         this.stop();
         this.onSoundCompleted(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.mSoundChannel)
         {
            this.mSoundChannel.stop();
         }
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
